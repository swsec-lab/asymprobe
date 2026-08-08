#!/usr/bin/env python3
"""Turn the per-compiler listings into one table per architecture.

Reads results/listing_<arch>_<compiler>.s and prints, for every vector register
index, what each compiler miscompiled that name into. One row per index N covers
the 128/256/512-bit names together as xmmN/ymmN/zmmN.

A listing only holds miscompiled lines, so a name missing from it either compiled
correctly or was rejected by the assembler; both show as `-`.
"""
import argparse
import os
import re
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO_ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))

sys.path.insert(0, _REPO_ROOT)

from asymprobe import _CLANG_VERSIONS, _GCC_VERSIONS  # noqa: E402

ARCHS = ['x86', 'x86-64']
COMPILERS = _CLANG_VERSIONS + _GCC_VERSIONS
FAMILIES = ['xmm', 'ymm', 'zmm']
INDEXES = range(32)

MISSING = '-'
UNDECODABLE = '(bad)'
NO_INDEX = '0'
UNPARSED = '?'

SYMBOLS = {f'{fam}{i}' for fam in FAMILIES for i in INDEXES}
# Match the probed name directly rather than the shape of the operand around it:
# `[xmm0]`, `[xmm0+8]` and `[ebx+xmm0]` all name xmm0, and only the name matters.
_SYM_RE = re.compile(r'\b((?:xmm|ymm|zmm)\d{1,2})\b')
# Across all 1104 disassembled lines the operand takes exactly two shapes:
#   test DWORD PTR [rax*1+0x0],0x0   an index register, scale always 1, disp always 0
#   test DWORD PTR ds:0x0,0x0        no index register at all
# Both patterns are pinned to precisely those forms. Anything else -- a different
# scale or displacement, a base register, a truncated line -- is not guessed at; it
# becomes UNPARSED and is reported, so a changed operand shape shows up as a loud
# `?` in the table rather than a plausible-looking wrong register.
_INDEX_RE = re.compile(r'\[(\w+)\*1\+0x0\]')
_NO_INDEX_RE = re.compile(r'\bds:0x0\b')


def token_of(disasm):
    """What the source line's symbol turned into, as a single table token."""
    if UNDECODABLE in disasm:
        return UNDECODABLE
    m = _INDEX_RE.search(disasm)
    if m:
        return m.group(1)
    if _NO_INDEX_RE.search(disasm):
        return NO_INDEX
    return UNPARSED


def load_listing(path):
    """{symbol: token} for one (arch, compiler).

    Returns (data, skipped) where skipped counts lines whose probed name could not
    be identified unambiguously -- silently dropping those would understate the
    result as `-`.
    """
    out, skipped = {}, 0
    with open(path) as f:
        for line in f:
            if '#' not in line or line.lstrip().startswith(('.', '#')):
                continue
            source, _, disasm = line.partition('#')
            names = [n for n in _SYM_RE.findall(source) if n in SYMBOLS]
            if len(names) != 1:
                skipped += 1
                continue
            out[names[0]] = token_of(disasm.strip())
    return out, skipped


def cell(data, index):
    """xmmN/ymmN/zmmN for one compiler, as one table cell."""
    return '/'.join(data.get(f'{fam}{index}', MISSING) for fam in FAMILIES)


def render(arch, columns):
    """columns: [(compiler, {symbol: token})] -- never merged, never dropped."""
    labels = ['/'.join(f'{fam}{i}' for fam in FAMILIES) for i in INDEXES]
    rows = [[cell(data, i) for _, data in columns] for i in INDEXES]

    label_w = max(len('Register Names'), max(len(s) for s in labels))
    widths = [max(len(comp), max(len(r[c]) for r in rows))
              for c, (comp, _) in enumerate(columns)]

    def line(left, cells):
        return (f'{left:<{label_w}}' + ''.join(
            f'  {value:<{w}}' for value, w in zip(cells, widths))).rstrip()

    return [arch,
            line('128/256/512-bit', [''] * len(columns)),
            line('Register Names', [comp for comp, _ in columns]),
            '-' * label_w + ''.join('  ' + '-' * w for w in widths),
            *(line(label, row) for label, row in zip(labels, rows))]


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument('-r', '--results-dir', default=os.path.join(_HERE, 'results'))
    args = parser.parse_args()

    blocks, missing, unparsed, skipped = [], [], 0, 0
    for arch in ARCHS:
        columns = []
        for compiler in COMPILERS:
            path = os.path.join(args.results_dir, f'listing_{arch}_{compiler}.s')
            if os.path.exists(path):
                data, n_skipped = load_listing(path)
            else:
                missing.append(os.path.basename(path))
                data, n_skipped = {}, 0
            unparsed += sum(1 for v in data.values() if v == UNPARSED)
            skipped += n_skipped
            columns.append((compiler, data))
        blocks.append('\n'.join(render(arch, columns)))

    text = '\n\n'.join(blocks) + '\n'
    print(text, end='')

    out_path = os.path.join(args.results_dir, 'summary.txt')
    with open(out_path, 'w') as f:
        f.write(text)
    print(f'\n[*] written to {out_path}')

    if missing:
        print(f'[!] {len(missing)} listing(s) absent, shown as all "{MISSING}": '
              f'{", ".join(missing)}')
    if unparsed:
        print(f'[!] {unparsed} disassembly line(s) could not be read; '
              f'they appear as "{UNPARSED}"')
    if skipped:
        print(f'[!] {skipped} listing line(s) named no single vector register and '
              f'were dropped; the table understates the result')
    return 0


if __name__ == '__main__':
    sys.exit(main())
