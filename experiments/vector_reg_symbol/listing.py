#!/usr/bin/env python3
"""Assemble template.s with every compiler and disassemble what each one produced.

template.s holds one instruction per line addressing each of the 96 vector register
names, xmm0 through zmm31. Whatever mnemonic the file uses is what gets probed. Each
compiler assembles the whole file and the object is disassembled with objdump, so
the miscompilation of each line can be read off directly.

An assembler that rejects a line would abort the whole file, so rejected lines are
commented out and the file is retried until it assembles. Only miscompiled lines are
reported, each written back as source with its disassembly in a trailing comment, so
the listing is itself reassemblable.
"""
import argparse
import os
import re
import shutil
import subprocess
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO_ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))

sys.path.insert(0, _REPO_ROOT)

from asymprobe import _ARCH_COMPILER_MAP, _CLANG_VERSIONS, _GCC_VERSIONS  # noqa: E402

ARCHS = ['x86', 'x86-64']
TEMPLATE = os.path.join(_HERE, 'template.s')

_ERRLINE_RE = re.compile(r'\.s:(\d+)')
# an instruction line: a mnemonic with operands, as opposed to a `.directive`,
# a `# comment` or a `label:`
_INSN_RE = re.compile(r'^\s*[a-zA-Z][\w.]*\s+\S')


def load_template(path):
    """Return (all lines, {1-based line number: instruction text})."""
    with open(path) as f:
        lines = f.read().splitlines()
    # tabs expanded for column alignment only; `lines` stays byte-identical to the
    # template so the file handed to the assembler is the file on disk
    insns = {i + 1: line.expandtabs(8).strip()
             for i, line in enumerate(lines) if _INSN_RE.match(line)}
    return lines, insns


def label_for(lineno):
    return f'Lprobe{lineno}'


def build_source(lines, insns, dropped):
    """The template with rejected lines commented out and every surviving
    instruction preceded by a label.

    The labels are what pins each source line to its own disassembly. One line does
    not always produce one instruction -- gcc-15 on x86 emits a 32-bit-invalid EVEX
    prefix ahead of the `test`, which objdump decodes as three extra instructions --
    so counting instructions in emission order would silently misalign the listing.

    Returns the source text and a map from generated line number back to template
    line number, since the inserted labels shift what the assembler reports.
    """
    out, back = [], {}
    for i, line in enumerate(lines):
        lineno = i + 1
        if lineno in dropped:
            out.append(f'# {line}')
        elif lineno in insns:
            out.append(f'{label_for(lineno)}:')
            out.append(line)
        else:
            out.append(line)
        back[len(out)] = lineno
    return '\n'.join(out) + '\n', back


def rejected_lines(stderr):
    """Source line numbers the assembler complained about.

    Only the numbers are needed -- a rejected line is dropped and re-tried, and the
    diagnostic text itself never reaches the listing.
    """
    return {int(n) for line in stderr.splitlines()
            for n in _ERRLINE_RE.findall(line)}


_LABEL_RE = re.compile(r'^[0-9a-f]+ <([^>]+)>:')
_RELOC_RE = re.compile(r'\bR_(?:386|X86_64)_\w+\s+(\S+)')
_SYM_RE = re.compile(r'\[([A-Za-z_.$][\w.$]*)\]')


def symbol_of(text):
    """The name the source line addresses, e.g. xmm0 in `test DWORD PTR [xmm0], 0`."""
    m = _SYM_RE.search(text)
    return m.group(1) if m else None


def is_correct(source, got, relocs):
    """A line compiled correctly iff it produced exactly the one instruction asked
    for, relocated against the name it addressed. Anything else -- the symbol
    replaced by a register, or extra bytes emitted around the instruction -- is a
    miscompilation."""
    return len(got) == 1 and symbol_of(source) in relocs


def disassemble_by_label(obj, cwd):
    """{label: (instruction texts, relocation targets)} for each anchored line."""
    result = subprocess.run(['objdump', '-dr', '-M', 'intel', '--section=.text', obj],
                            capture_output=True, text=True, check=False, cwd=cwd)
    blocks, current = {}, None
    for line in result.stdout.splitlines():
        m = _LABEL_RE.match(line)
        if m:
            current = m.group(1)
            blocks[current] = ([], [])
            continue
        if current is None or not line.strip():
            continue
        m = _RELOC_RE.search(line)
        if m:
            blocks[current][1].append(m.group(1))
            continue
        parts = line.split('\t')
        if len(parts) >= 3 and parts[2].strip():
            blocks[current][0].append(re.sub(r'\s+', ' ', parts[2].strip()))
    return blocks


def run(arch, compiler, lines, insns, work_root, results_dir):
    compiler_cmd = _ARCH_COMPILER_MAP[arch][compiler]
    if not shutil.which(compiler_cmd[0]):
        print(f'  skip {arch:<7} {compiler:<9} ({compiler_cmd[0]} not found)')
        return

    work_dir = os.path.join(work_root, f'listing_{arch}_{compiler}')
    os.makedirs(work_dir, exist_ok=True)

    dropped, gave_up = set(), False
    while True:
        src, back = build_source(lines, insns, dropped)
        with open(os.path.join(work_dir, 'template.s'), 'w') as f:
            f.write(src)
        proc = subprocess.run(compiler_cmd + ['-c', 'template.s', '-o', 'template.o'],
                              capture_output=True, text=True, check=False, cwd=work_dir)
        if proc.returncode == 0:
            break
        # diagnostics point at the generated file; translate back to template lines
        rejected = {back[n] for n in rejected_lines(proc.stderr) if n in back}
        fresh = (rejected & insns.keys()) - dropped
        if not fresh:  # cannot make progress; report and stop
            gave_up = True
            break
        dropped |= fresh

    path = os.path.join(results_dir, f'listing_{arch}_{compiler}.s')
    # carry the template's own directives over, so the listing assembles the same way
    preamble = [line for line in lines if line.strip().startswith('.')]

    if gave_up:
        with open(path, 'w') as f:
            f.write('\n'.join(preamble) + '\n')
        shutil.rmtree(work_dir, ignore_errors=True)
        print(f'  {arch:<7} {compiler:<9} {os.path.basename(path)}  '
              f'(template did not assemble)')
        return

    blocks = disassemble_by_label('template.o', work_dir)

    # Only miscompilations are listed: rejected lines are build errors, not silent
    # wrong code, and correctly relocated lines are what should have happened.
    width = max(len(t) for t in insns.values())
    rows = []
    for lineno in sorted(insns):
        if lineno in dropped:
            continue
        source = insns[lineno]
        got, relocs = blocks.get(label_for(lineno), ([], []))
        if is_correct(source, got, relocs):
            continue
        disasm = ' ; '.join(got) if got else '<no output>'
        if relocs:
            disasm += f'   {", ".join(relocs)}'
        rows.append(f'{source:<{width}}  # {disasm}')

    # the listing is itself assembly: the directives make it reassemblable as-is
    with open(path, 'w') as f:
        f.write('\n'.join(preamble + rows) + '\n')
    shutil.rmtree(work_dir, ignore_errors=True)
    print(f'  {arch:<7} {compiler:<9} {os.path.basename(path)}')


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument('--arch', nargs='+', choices=ARCHS, default=ARCHS)
    parser.add_argument('--compiler', nargs='+', metavar='COMPILER')
    parser.add_argument('--no-compiler', nargs='+', metavar='COMPILER')
    parser.add_argument('-t', '--template', default=TEMPLATE)
    parser.add_argument('-w', '--work-dir', default=os.path.join(_HERE, 'work'))
    parser.add_argument('-r', '--results-dir', default=os.path.join(_HERE, 'results'))
    args = parser.parse_args()

    base = args.compiler or _GCC_VERSIONS + _CLANG_VERSIONS
    compilers = [c for c in base if c not in set(args.no_compiler or [])]
    if not compilers:
        print('Error: no compilers selected.')
        return 1
    if not os.path.exists(args.template):
        print(f'Error: template {args.template} not found.')
        return 1

    lines, insns = load_template(args.template)
    os.makedirs(args.work_dir, exist_ok=True)
    os.makedirs(args.results_dir, exist_ok=True)
    print(f'[*] {os.path.basename(args.template)}: {len(insns)} instructions, '
          f'archs={args.arch}, compilers={len(compilers)}')
    for arch in args.arch:
        for compiler in compilers:
            run(arch, compiler, lines, insns, args.work_dir, args.results_dir)
    shutil.rmtree(args.work_dir, ignore_errors=True)
    print(f'[*] listings written to {args.results_dir}/')
    return 0


if __name__ == '__main__':
    sys.exit(main())
