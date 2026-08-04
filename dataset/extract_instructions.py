"""
Extract assembly instructions from .s files under a build directory.

Usage:
    python extract_instructions.py <arch>

arch: architecture name (e.g. x86, x86-64)
      looks under build/<arch>/
"""

import argparse
import os
import re
import sys
from pathlib import Path

from arch import ARCH_REGISTERS, ASM_KEYWORDS

_HEX_RE   = re.compile(r'0x[0-9a-fA-F]+')
_INT_RE   = re.compile(r'(?<![a-zA-Z0-9_@.])\d+')
_IDENT_RE = re.compile(r'[a-zA-Z_.][a-zA-Z0-9_.@]*')
_PB_RE    = re.compile(r'\.L\d+\$pb')

# AArch64 relocation modifier: :lo12:symbol, :got:symbol, :got_lo12:symbol, ...
# Keep the modifier intact, replace only the symbol part.
_AARCH64_RELOC_RE = re.compile(r'(:[a-z][a-z0-9_]*:)([a-zA-Z_.][a-zA-Z0-9_.@]*)')


def normalize_instruction(instr: str, arch: str = 'x86-64', syntax: str = None) -> str:
    """
    Normalize a single assembly instruction:
      - Symbol / label references  → SYMBOL
      - Immediate / offset integers → 8
    """
    parts = instr.split(None, 1)
    if len(parts) == 1:
        return instr  # mnemonic only, nothing to normalize

    not_symbol = ASM_KEYWORDS | ARCH_REGISTERS.get(arch, ARCH_REGISTERS['x86-64'])

    mnemonic, operands = parts
    operands = _PB_RE.sub('LOCAL', operands)
    operands = _HEX_RE.sub('8', operands)
    operands = _INT_RE.sub('8', operands)

    if arch == 'aarch64':
        # :lo12:symbol → :lo12:SYMBOL  (modifier preserved, symbol replaced)
        operands = _AARCH64_RELOC_RE.sub(lambda m: m.group(1) + 'SYMBOL', operands)

    def replace_ident(m):
        word = m.group()
        if word.startswith('.L'):
            return 'LOCAL'
        if word.startswith('.'):
            return word
        if word.lower() in not_symbol:
            return word
        # M68K: PC-relative addressing — %pc@(...) → token is 'pc@'
        if arch == 'm68k' and word.endswith('@'):
            base = word[:-1]
            if base.lower() in not_symbol:
                return word
        # M68K: registers may have size suffixes — d1.l, a2.w, d0.b
        if arch == 'm68k' and '.' in word:
            base, _, suffix = word.rpartition('.')
            if suffix in ('l', 'w', 'b') and base.lower() in not_symbol:
                return word

        # PowerPC64: symbol@toc@ha, symbol@got@l, etc. — preserve relocation suffix
        if arch == 'powerpc64' and m.start() > 0 and operands[m.start() - 1] == '@' and word.startswith('toc'):
            return word

        if arch == 'powerpc64' and '@' in word:
            base = word[:word.index('@')]
            suffix = word[word.index('@'):]
            if base and not base.startswith('.') and base.lower() not in not_symbol:
                return 'SYMBOL' + suffix
            return word
        # MIPS local labels: $L10, $L_foo — compiler-generated, keep as-is
        if arch == 'mips' and (word[0] == 'L' or word.startswith('BB') or word.startswith('JTI') \
             or word.startswith('__PRETTY_FUNCTION__') or word.startswith('switch.table.') \
             or word.startswith('CPI') or word.startswith('__const.')) \
             and m.start() > 0 and operands[m.start() - 1] == '$':
            return word

        if arch == 'sparc64' and word.startswith('bb.'):
            return word

        if arch in ('x86', 'x86-64') and word == '_GLOBAL_OFFSET_TABLE_':
            return word

        return 'SYMBOL'


    operands = _IDENT_RE.sub(replace_ident, operands)

    if "%SYMBOL" in operands or "$SYMBOL" in operands:
        # In AT&T syntax, $SYMBOL is valid (immediate address), so skip the warning
        if not ("$SYMBOL" in operands and syntax == 'att'):
            print(f'Exceptional instr: {instr}', file=sys.stderr)
            return instr

    return f'{mnemonic}\t{operands}'


# ---------------------------------------------------------------------------
# Extraction
# ---------------------------------------------------------------------------

def extract_instructions(asm_text: str, arch: str = 'x86-64') -> list[str]:
    """
    Extract assembly instruction lines from .s file content.
    Skips directives (starting with '.'), labels (ending with ':'), and comments.
    For arm, '@' is treated as a comment character.
    """
    if arch == 'arm':
        inline_comment_re = re.compile(r'\s*[#;@]')
    elif arch == 'sparc64':
        inline_comment_re = re.compile(r'\s*[#;!]')
    else:
        inline_comment_re = re.compile(r'\s*[#;]')

    instructions = []
    for line in asm_text.splitlines():
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith('#') or stripped.startswith('//') or stripped.startswith(';'):
            continue
        if arch == 'arm' and stripped.startswith('@'):
            continue
        if arch == 'sparc64' and stripped.startswith('!'):
            continue
        if stripped.startswith('.'):
            continue
        # Strip label prefix: "FOO:" alone → skip, "FOO:\tinstruction" → keep instruction
        m = re.match(r'^\S+:\s*(.*)', stripped)
        if m:
            stripped = m.group(1).strip()
            if not stripped:
                continue
        stripped = inline_comment_re.split(stripped)[0].strip()
        if stripped:
            instructions.append(stripped)
    return instructions


def extract_mnemonic(instruction: str) -> str:
    return instruction.split()[0].lower()


def process_file(path: str, arch: str = 'x86-64', syntax: str = None) -> list[str]:
    with open(path, 'r', errors='replace') as f:
        return [normalize_instruction(i, arch, syntax) for i in extract_instructions(f.read(), arch)]


def collect_from_dir(build_dir: str, arch: str = 'x86-64', compiler: str = 'gcc', dir_arch: str = None, syntax: str = None) -> dict[str, list[str]]:
    """
    Walk build_dir/<dir_arch>/<compiler> and return {relative_path: [instructions]} for each .s file.
    dir_arch defaults to arch, but can differ when syntax suffix is appended (e.g. x86_intel).
    """
    result = {}
    base = Path(build_dir) / (dir_arch or arch) / compiler
    for asm_file in sorted(base.rglob('*.s')):
        rel = str(asm_file.relative_to(base))
        result[rel] = process_file(str(asm_file), arch, syntax)
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Extract assembly instructions from build/<arch>/<compiler>/')
    parser.add_argument('arch', help='Architecture name (e.g. x86, x86-64)')
    parser.add_argument('compiler', help='Compiler name (e.g. gcc, clang)')
    parser.add_argument('output', help='Output template file to write extracted instructions')
    parser.add_argument('--build-dir', default=None, help='Build directory (default: <script_dir>/build)')
    parser.add_argument('--syntax', choices=['intel', 'att'], default=None, help='Assembly syntax (intel or att)')
    args = parser.parse_args()

    build_dir = args.build_dir if args.build_dir else os.path.join(os.path.dirname(__file__), 'build')
    arch_dir = f'{args.arch}_{args.syntax}' if args.syntax else args.arch
    search_dir = os.path.join(build_dir, arch_dir, args.compiler)
    if not os.path.isdir(search_dir):
        print(f"Warning: directory not found, skipping: {search_dir}", file=sys.stderr)
        sys.exit(0)

    print(f"Scanning: {search_dir}")
    files = collect_from_dir(build_dir, args.arch, args.compiler, dir_arch=arch_dir, syntax=args.syntax)

    total_instructions = 0
    normalized_counts: dict[str, int] = {}

    for rel_path, instrs in files.items():
        total_instructions += len(instrs)
        for instr in instrs:
            if 'SYMBOL' in instr:
                normalized_counts[instr] = normalized_counts.get(instr, 0) + 1

    with open(args.output, 'w') as f:
        for norm, count in sorted(normalized_counts.items()):
            f.write(f"{norm}\n")
