#!/usr/bin/env python3
import argparse
import sys
from collections import defaultdict
from pathlib import Path


def parse_report(filename):
    # counts[arch][compiler][error_type] = count
    counts = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    with open(filename, 'r') as f:
        for line in f:
            parts = line.split()
            if len(parts) < 5:
                continue
            arch, compiler, error_type = parts[0], parts[1], parts[3]
            counts[arch][compiler][error_type] += 1
    return counts


def print_summary(counts, label):

    print(f"=== {label} ===")
    header = f"  {'Compiler':<12} {'Miscompile':>9} {'Build Error':>9} {'Total':>7}"
    sep = '-' * len(header)

    for arch in sorted(counts):
        print(f"[{arch}]")
        print(header)
        print(sep)
        for compiler in sorted(counts[arch]):
            errors = counts[arch][compiler]
            miscompile = errors.get('E1', 0) 
            ambiguous  = errors.get('E2', 0)
            total      = miscompile + ambiguous
            print(f"  {compiler:<12} {miscompile:>9} {ambiguous:>9} {total:>7}")



def main():
    parser = argparse.ArgumentParser(description='Triage ASymProbe report files.')
    parser.add_argument('report_files', nargs='+', help='Report file(s) (e.g. report_x86-64_gcc-12.txt)')
    args = parser.parse_args()

    total = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    for filename in args.report_files:
        try:
            counts = parse_report(filename)
        except FileNotFoundError:
            #print(f"Error: File {filename} not found.", file=sys.stderr)
            continue
        for arch, compilers in counts.items():
            for compiler, errors in compilers.items():
                for error_type, cnt in errors.items():
                    total[arch][compiler][error_type] += cnt

    if len(args.report_files) > 1:
        print_summary(total, 'TOTAL')


if __name__ == '__main__':
    main()
