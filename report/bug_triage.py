#!/usr/bin/env python3
import argparse
import os
import subprocess
import sys


def parse_report(filename):
    entries = []
    with open(filename, 'r') as f:
        for line in f:
            parts = line.split()
            if len(parts) < 5:
                continue
            arch, compiler, syntax, error_type, symbol = parts[0], parts[1], parts[2], parts[3], parts[4]
            if error_type in ('E1'):
                entries.append((arch, compiler, syntax, error_type, symbol))
    return entries


_SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

def make_paths(arch, compiler, syntax, symbol):
    arch_dir = f'{arch}_{syntax}' if syntax != 'None' else arch
    base = os.path.join(_SCRIPT_DIR, '..', 'output', arch_dir, compiler)
    asm = os.path.join(base, f'{symbol}.s')
    obj = os.path.join(base, f'{symbol}.o')
    gt  = os.path.join(base, 'ground_truth.o')
    return asm, obj, gt


def objdump(path):
    result = subprocess.run(['objdump', '-d', '-M intel', '--no-show-raw-insn', path],
                            capture_output=True, text=True)
    return result.stdout.splitlines()


def text_section_start(lines):
    idx = next((i for i, l in enumerate(lines) if '<.text>' in l), None)
    return idx + 1 if idx is not None else None


def normalize(line):
    parts = line.split(None, 1)
    rest = parts[1] if len(parts) > 1 else ''
    return rest.split('#')[0].rstrip()


def diff_text_sections(obj_lines, gt_lines):
    start = text_section_start(obj_lines)
    if start is None:
        return None, []
    diffs = [(i - start, normalize(gt_lines[i]), normalize(obj_lines[i]))
             for i in range(start, min(len(obj_lines), len(gt_lines)))
             if normalize(obj_lines[i]) != normalize(gt_lines[i])]
    return start, diffs


def load_asm_instructions(asm_path):
    instructions = []
    with open(asm_path, 'r', errors='replace') as f:
        for line in f:
            stripped = line.strip()
            if not stripped:
                continue
            if stripped.startswith(('#', '//', ';', '.')):
                continue
            if stripped.endswith(':'):
                continue
            instructions.append(stripped)
    return instructions


def format_bug_report(arch, compiler, symbol, diffs, asm_lines):
    lines = []
    lines.append(f"# {arch} {compiler} {symbol}")
    lines.append(f"# {'asm':<38}  # {'symbol':<40}  | {'ground_truth'}")
    lines.append(f"# {'-'*38}  {'-'*42}  {'-'*40}")
    lines.append('.intel_syntax noprefix')
    for lineno, gt_line, obj_line in diffs:
        asm_line = (asm_lines[lineno] if lineno < len(asm_lines) else '').expandtabs(8)
        if 'SYMBOL' in asm_line:
            continue
        lines.append(f"{asm_line:<40}  # {obj_line:<40}  | {gt_line}")
    return '\n'.join(lines)


def save_bug_report(arch, compiler, syntax, symbol, content, output_dir):
    arch_dir = f'{arch}_{syntax}' if syntax != 'None' else arch
    bug_path = os.path.join(output_dir, arch_dir, compiler, f'{symbol}.txt')
    os.makedirs(os.path.dirname(bug_path), exist_ok=True)
    with open(bug_path, 'w') as f:
        f.write(content + '\n')


def triage_report(report_file, output_dir):
    try:
        entries = parse_report(report_file)
    except FileNotFoundError:
        #print(f"Error: File {report_file} not found.", file=sys.stderr)
        return 0, 0

    processed = skipped = 0
    for arch, compiler, syntax, _, symbol in entries:
        asm, obj, gt = make_paths(arch, compiler, syntax, symbol)

        obj_lines = objdump(obj)
        gt_lines  = objdump(gt)

        if not obj_lines:
            print(f"Warning: empty objdump output for {symbol} ({arch}/{compiler})", file=sys.stderr)
            skipped += 1
            continue

        _, diffs = diff_text_sections(obj_lines, gt_lines)
        if not diffs:
            skipped += 1
            continue

        asm_lines = load_asm_instructions(asm)
        content   = format_bug_report(arch, compiler, symbol, diffs, asm_lines)
        save_bug_report(arch, compiler, syntax, symbol, content, output_dir)
        processed += 1

    return processed, skipped


def main():
    parser = argparse.ArgumentParser(description='Triage miscompilation bugs from ASymProbe report.')
    parser.add_argument('report_files', nargs='+', help='Report file(s) (e.g. report_x86-64_gcc-12.txt)')
    parser.add_argument('-o', '--output-dir', default=os.path.join(_SCRIPT_DIR, '..', 'bugs'),
                        help='Output directory for bug reports (default: bugs/)')
    args = parser.parse_args()

    print(f"Bugs will be collected in: {os.path.realpath(args.output_dir)}")
    total_processed = total_skipped = 0
    for report_file in args.report_files:
        processed, skipped = triage_report(report_file, args.output_dir)
        total_processed += processed
        total_skipped   += skipped


if __name__ == '__main__':
    main()
