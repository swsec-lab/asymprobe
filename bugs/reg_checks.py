#!/usr/bin/env python3
import argparse
import os
import re

_SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

_CATEGORIES = [
    ('16bit',  re.compile(r'^(ax|bx|cx|dx|si|di|sp|bp|r\d+w)$')),
    ('32bit',  re.compile(r'^(eax|ebx|ecx|edx|esi|edi|esp|ebp|r\d+d)$')),
    ('64bit',  re.compile(r'^(rax|rbx|rcx|rdx|rsi|rdi|rsp|rbp|r\d+)$')),
    ('128bit', re.compile(r'^xmm\d+$')),
    ('256bit', re.compile(r'^ymm\d+$')),
    ('512bit', re.compile(r'^zmm\d+$')),
    ('PC',     re.compile(r'^(eip|rip)$')),
    ('Special',    re.compile(r'^(eiz|riz)$')),
]

def classify(keyword):
    for cat, pattern in _CATEGORIES:
        if pattern.match(keyword):
            return cat
    return 'etc'


def group_by_category(keywords):
    """Return ordered list of (category, sorted keywords) for non-empty categories."""
    groups = {}
    for kw in keywords:
        groups.setdefault(classify(kw), []).append(kw)
    order = [cat for cat, _ in _CATEGORIES] + ['etc']
    return [(cat, sorted(groups[cat])) for cat in order if cat in groups]


def format_grouped(keywords, indent='  '):
    parts = []
    for cat, kws in group_by_category(keywords):
        parts.append(f"{indent}{cat}({len(kws)}): {', '.join(kws)}")
    return '\n'.join(parts)


def load_keywords(arch, base_dir=_SCRIPT_DIR):
    """Return {compiler: set(keywords)} for all compilers under <base_dir>/<arch>/."""
    arch_dir = os.path.join(base_dir, arch)
    if not os.path.isdir(arch_dir):
        return {}

    result = {}
    for compiler in sorted(os.listdir(arch_dir)):
        compiler_dir = os.path.join(arch_dir, compiler)
        if not os.path.isdir(compiler_dir):
            continue
        keywords = {
            fname[:-4]
            for fname in os.listdir(compiler_dir)
            if fname.endswith('.txt')
        }
        if keywords:
            result[compiler] = keywords
    return result


def main():
    parser = argparse.ArgumentParser(description='Compare bug keywords across compilers.')
    parser.add_argument('arch', help='Target architecture (e.g. x86-64)')
    parser.add_argument('--syntax', choices=['intel', 'att'], default=None, help='Assembly syntax (intel or att)')
    parser.add_argument('-d', '--base-dir', default=_SCRIPT_DIR, help='Base directory containing <arch>/ folders (default: script directory)')
    args = parser.parse_args()

    arch_dir = f'{args.arch}_{args.syntax}' if args.syntax else args.arch
    data = load_keywords(arch_dir, args.base_dir)
    if not data:
        return

    compilers = sorted(data)
    all_keywords = sorted(set().union(*data.values()))
   
    # Category count table: rows=compilers, cols=categories
    all_cats = [cat for cat, _ in _CATEGORIES] + ['etc']
    active_cats = [cat for cat in all_cats
                   if any(classify(kw) == cat for kw in set().union(*data.values()))]

    comp_w = max(len(c) for c in compilers)
    col_w  = max(max(len(c) for c in active_cats), len('total'))

    header = f"{'compiler':<{comp_w}}" + ''.join(f"  {c:>{col_w}}" for c in active_cats) + f"  {'total':>{col_w}}"
    print(header)
    print('-' * len(header))
    for compiler in compilers:
        counts = [sum(1 for kw in data[compiler] if classify(kw) == cat) for cat in active_cats]
        row = f"{compiler:<{comp_w}}" + ''.join(f"  {cnt:>{col_w}}" if cnt else ' ' * (col_w + 2) for cnt in counts)
        row += f"  {len(data[compiler]):>{col_w}}"
        print(row)
    # total col per category
    print('-' * len(header))
    totals = [sum(sum(1 for kw in data[c] if classify(kw) == cat) for c in compilers) for cat in active_cats]
    grand  = sum(len(data[c]) for c in compilers)
    print(f"{'total':<{comp_w}}" + ''.join(f"  {t:>{col_w}}" if t else ' ' * (col_w + 2) for t in totals) + f"  {grand:>{col_w}}")


if __name__ == '__main__':
    main()
