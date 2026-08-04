#!/usr/bin/env python3
import argparse
import os
import re
import shutil
import subprocess
import sys

_GCC_VERSIONS   = ['gcc-14', 'gcc-15']
_CLANG_VERSIONS = ['clang-14', 'clang-15', 'clang-16', 'clang-17', 'clang-18','clang-19', 'clang-20', 'clang-21', 'clang-22']

# gcc-15 cross-compiler is unavailable for these architectures
_GCC15_UNSUPPORTED = {'mips', 'mips64'}

def _make_arch_compiler_map():
    arch_base = {
        'x86':       ('{ver}',                         ['-m32'], ['-m32']),
        'x86-64':    ('{ver}',                         [],       []),
        'aarch64':   ('aarch64-linux-gnu-{ver}',       [],       ['--target=aarch64-linux-gnu']),
        'arm':       ('arm-linux-gnueabi-{ver}',        [],       ['--target=arm-linux-gnueabi']),
        'mips':      ('mips-linux-gnu-{ver}',           [],       ['--target=mips-linux-gnu']),
        'mips64':    ('mips64-linux-gnuabi64-{ver}',    [],       ['--target=mips64-linux-gnuabi64']),
        'powerpc64': ('powerpc64-linux-gnu-{ver}',      [],       ['--target=powerpc64-linux-gnu']),
        'riscv64':   ('riscv64-linux-gnu-{ver}',        [],       ['--target=riscv64-linux-gnu', '-march=rv64g']),
        'm68k':      ('m68k-linux-gnu-{ver}',           [],       ['--target=m68k-linux-gnu']),
        's390x':     ('s390x-linux-gnu-{ver}',          [],       ['--target=s390x-linux-gnu']),
        'sparc64':   ('sparc64-linux-gnu-{ver}',        [],       ['--target=sparc64-linux-gnu']),
    }
    result = {}
    for arch, (gcc_tmpl, gcc_extra, clang_extra) in arch_base.items():
        result[arch] = {}
        for ver in _GCC_VERSIONS:
            if ver == 'gcc-15' and arch in _GCC15_UNSUPPORTED:
                continue
            result[arch][ver] = [gcc_tmpl.format(ver=ver)] + gcc_extra
        for ver in _CLANG_VERSIONS:
            result[arch][ver] = [ver] + clang_extra
    return result

_ARCH_COMPILER_MAP = _make_arch_compiler_map()

class Mutator:
    def apply_symbol(self, template_content, symbol, error_lines):
        lines = template_content.split('\n')
        for idx in range(len(lines)):
            if idx + 1 not in error_lines:
                lines[idx] = lines[idx].replace('SYMBOL', symbol)
        return '\n'.join(lines)

    def comment_out_lines(self, template_content, error_lines):
        lines = template_content.split('\n')
        for lineno in error_lines:
            idx = lineno - 1
            if 0 <= idx < len(lines):
                lines[idx] = '# ' + lines[idx]
        return '\n'.join(lines)


class Compile:
    def __init__(self, architecture, compiler, contents, symbol, compile_dir):
        self.architecture = architecture
        self.compiler = compiler
        self._contents = contents
        self._symbol = symbol
        self._compile_dir = compile_dir
        self._text = None

    def _compiler_cmd(self):
        return _ARCH_COMPILER_MAP.get(self.architecture, {}).get(self.compiler, [self.compiler])

    def _try_compile(self, src, obj):
        """Run compiler on src -> obj. Returns (success, new_errors)."""
        result = subprocess.run(self._compiler_cmd() + ['-c', src, '-o', obj],
                                capture_output=True, text=True, check=False)
        if result.returncode == 0:
            return True, []

        stderr = result.stderr
        new_errors = list(dict.fromkeys(int(m) for m in re.findall(r'\.s:(\d+)', stderr)))
        undef_syms = re.findall(r'<unknown>:0: error: Undefined temporary symbol (\S+)', stderr)
        if undef_syms:
            lines = self._contents.split('\n')
            new_errors2 = [i + 1 for i, line in enumerate(lines)
                          if any(sym in line for sym in undef_syms)]
            new_errors.extend(new_errors2)

        if not new_errors:
            print(f"Internal failure detected in {self.compiler} while assembling '{self._symbol}'.")

        return False, new_errors

    def _extract_text_from_object(self, object_file):
        try:
            result = subprocess.run(['objdump', '-s', '-j', '.text', object_file],
                                    capture_output=True, text=True, check=True)
            return self._extract_text_section(result.stdout)
        except subprocess.CalledProcessError as e:
            print(f"Error extracting text from {object_file}: {e}")
            return None

    def _extract_text_section(self, objdump_output):
        bytes_hex = []
        in_text = False
        for line in objdump_output.split('\n'):
            if 'Contents of section .text:' in line:
                in_text = True
                continue
            if in_text:
                m = re.match(r'^\s+[0-9a-f]+\s+((?:[0-9a-f]+\s*)+)', line)
                if m:
                    bytes_hex.append(m.group(1).strip())
                elif line.strip():
                    break
        return ' '.join(bytes_hex)

    def _create_assembly_file(self, src, contents):
        with open(src, 'w') as f:
            f.write(contents)




class CompileSym(Compile):
    def __init__(self, architecture, compiler, contents, symbol, compile_dir):
        super().__init__(architecture, compiler, contents, symbol, compile_dir)
        self.error_line_numbers = []
        self._src = None
        self._obj = None

    def compile(self):
        self._src = os.path.join(self._compile_dir, f"{self._symbol}.s")
        self._obj = os.path.join(self._compile_dir, f"{self._symbol}.o")

        self._create_assembly_file(self._src, self._contents)
        success, error_line_numbers = self._try_compile(self._src, self._obj)
        if success:
            self._text = self._extract_text_from_object(self._obj)
            return True

        self.error_line_numbers = error_line_numbers
        return False

    def remove_files(self):
        for path in (self._src, self._obj):
            if path and os.path.exists(path):
                os.remove(path)


class CompileGT(Compile):
    def __init__(self, architecture, compiler, contents, symbol, compile_dir):
        super().__init__(architecture, compiler, contents, symbol, compile_dir)
        self._sym_lines = []

    def get_sym_lines(self):
        if not self._sym_lines:
            self._sym_lines = [i + 1 for i, line in enumerate(self._contents.split('\n'))
                               if 'SYMBOL' in line and not line.lstrip().startswith('#') and 'SYMBOL:' not in line]
        return self._sym_lines

    def compile(self, mutator):
        os.makedirs(self._compile_dir, exist_ok=True)
        src = os.path.join(self._compile_dir, f"{self._symbol}.s")
        obj = os.path.join(self._compile_dir, f"{self._symbol}.o")

        content = self._contents
        success = False

        while True:
            self._create_assembly_file(src, content)
            success, new_errors = self._try_compile(src, obj)
            if not new_errors:
                break
            content = mutator.comment_out_lines(content, new_errors)

        if not success:
            return False

        self._text = self._extract_text_from_object(obj)
        if self._text is None:
            return False

        self._contents = content
        self._sym_lines = self.get_sym_lines()
        return True


class Differ:
    def __init__(self, architecture, compiler):
        self.architecture = architecture
        self.compiler = compiler
        self._errors = []

    def examine_ambiguity_errors(self, gt, sym, symbol, error_line_numbers):
        if gt._text != sym._text:
            self._errors.append((self.architecture, self.compiler, symbol, 'E1'))
        elif error_line_numbers:
            self._errors.append((self.architecture, self.compiler, symbol, 'E2'))
        else:
            sym.remove_files()

    def had_exception(self, gt, sym, symbol, error_line_numbers):
        if not sym.error_line_numbers:
            self._errors.append((self.architecture, self.compiler, symbol, 'E2'))
            return True
        if set(error_line_numbers) == set(gt.get_sym_lines()):
            self._errors.append((self.architecture, self.compiler, symbol, 'E2'))
            return True
        return False

class ASymProbe:
    def __init__(self, architecture, patch=False, compilers=None, no_compilers=None, syntax=None):
        self.architecture = architecture
        if syntax is None and architecture in ('x86', 'x86-64'):
            self.syntax = 'intel'
        else:
            self.syntax = syntax
        self.symbol_list = []
        base = compilers if compilers else _GCC_VERSIONS + _CLANG_VERSIONS
        exclude = set(no_compilers) if no_compilers else set()
        self._compilers = [c for c in base if c not in exclude]
        self._reported_errors = []
        self._patch = patch

    def probe(self, work_dir, report_dir):  # work_dir: directory for compiled files
        os.makedirs(work_dir, exist_ok=True)
        os.makedirs(report_dir, exist_ok=True)

        total = len(self.symbol_list) * len(self._compilers)
        done = 0

        for compiler in self._compilers:
            template_content = self._load_template_content(compiler)
            if template_content is None:
                done += len(self.symbol_list)
                continue

            compiler_cmd = _ARCH_COMPILER_MAP.get(self.architecture, {}).get(compiler, [compiler])
            if not shutil.which(compiler_cmd[0]):
                print(f"Skipping {compiler}: {compiler_cmd[0]} not found.")
                done += len(self.symbol_list)
                continue

            arch_dir = f'{self.architecture}_{self.syntax}' if self.syntax and self.architecture in ('x86', 'x86-64') else self.architecture
            compile_dir = os.path.join(work_dir, arch_dir, compiler)
            gt = CompileGT(self.architecture, compiler, template_content, 'ground_truth', compile_dir)
            mutator = Mutator()
            differ = Differ(self.architecture, compiler)
            if gt.compile(mutator) is not True:
                done += len(self.symbol_list)
                continue

            for symbol in self.symbol_list:
                done += 1
                print(f"\r[{done}/{total}] {done*100//total}% - {compiler} {symbol}    ", end='', flush=True)

                error_line_numbers = []

                while True:
                    sym_str = f'"{symbol}"' if self._patch else symbol
                    new_content = mutator.apply_symbol(gt._contents, sym_str, error_line_numbers)
                    sym = CompileSym(self.architecture, compiler, new_content, symbol, compile_dir)
                    if sym.compile() is True:
                        differ.examine_ambiguity_errors(gt, sym, symbol, error_line_numbers)
                        break

                    error_line_numbers.extend(sym.error_line_numbers)
                    if differ.had_exception(gt, sym, symbol, error_line_numbers):
                        break

            self._reported_errors.extend(differ._errors)
            self._report(compiler, report_dir)

        print(f"\r[{total}/{total}] 100% - Done.                        ")

    def _get_template_file(self, compiler):
        template_dir = 'template'
        known = {'x86', 'x86-64', 'aarch64', 'arm', 'm68k', 'mips', 'mips64', 'powerpc64', 'riscv64', 's390x', 'sparc64'}
        if self.architecture not in known:
            return None
        base = 'gcc' if compiler.startswith('gcc') else 'clang' if compiler.startswith('clang') else compiler
        if self.syntax and self.architecture in ('x86', 'x86-64'):
            return os.path.join(template_dir, f'template_{self.architecture}_{self.syntax}_{base}.s')
        return os.path.join(template_dir, f'template_{self.architecture}_{base}.s')

    def _load_template_content(self, compiler):
        template_file = self._get_template_file(compiler)
        if not template_file or not os.path.exists(template_file):
            print(f"Error: Template file {template_file} not found.")
            return None

        with open(template_file, 'r') as f:
            content = f.read()
        if self.architecture in ('x86', 'x86-64') and (self.syntax is None or self.syntax == 'intel'):
            content = '.intel_syntax noprefix\n' + content

        return content

    def _report(self, compiler, output_dir='.'):
        by_compiler = {}
        for arch, comp, symbol, error_type in self._reported_errors:
            if comp == compiler:
                by_compiler.setdefault((arch, comp), []).append((symbol, error_type))

        for (arch, comp), entries in by_compiler.items():
            if self.syntax and arch in ('x86', 'x86-64'):
                filename = os.path.join(output_dir, f'report_{arch}_{self.syntax}_{comp}.txt')
            else:
                filename = os.path.join(output_dir, f'report_{arch}_{comp}.txt')
            with open(filename, 'w') as f:
                for symbol, error_type in sorted(entries, key=lambda x: (x[1], x[0])):
                    syntax = self.syntax or 'None'
                    f.write(f"{arch:<10}{comp:<10}{syntax:<10}{error_type:<10}{symbol}\n")

    def load_symbols_from_file(self, filename):
        """Load symbols from a file, one symbol per line."""
        symbols = []
        try:
            with open(filename, 'r') as f:
                for line in f:
                    symbol = line.strip()
                    if symbol:  # Skip empty lines
                        symbols.append(symbol)
        except FileNotFoundError:
            print(f"Error: File {filename} not found.")
            return

        self.symbol_list = list(dict.fromkeys(symbols))

def main():
    parser = argparse.ArgumentParser(description='ASymProbe: Generate probe code based on architecture.')
    parser.add_argument('-f', '--symbol-file', default='template/symbols.txt', help='Input file containing symbol list (default: template/symbols.txt)')
    parser.add_argument('-w', '--work-dir', default=None, help='Work directory for testing (default: ./output or ./output-patch)')
    parser.add_argument('-r', '--report-dir', default=None, help='Output directory for report files (default: ./report or ./report-patch)')
    parser.add_argument('-patch', action='store_true', help='Wrap symbol with double quotes: SYMBOL → "symbol"')
    parser.add_argument('--compiler', nargs='+', metavar='COMPILER', help='Run only specified compiler(s) (e.g. gcc-15 clang-18)')
    parser.add_argument('--no-compiler', nargs='+', metavar='COMPILER', help='Exclude specified compiler(s) from the list (e.g. gcc-15)')
    parser.add_argument('--syntax', choices=['intel', 'att'], default=None, help='Assembly syntax for x86/x86-64 (intel or att)')
    parser.add_argument('architecture', choices=['x86', 'x86-64', 'aarch64', 'arm', 'm68k', 'mips', 'mips64', 'powerpc64', 'riscv64', 's390x', 'sparc64'], help='Target architecture')

    args = parser.parse_args()

    if args.patch:
        work_dir   = args.work_dir   or './output-patch'
        report_dir = args.report_dir or './report-patch'
    else:
        work_dir   = args.work_dir   or './output'
        report_dir = args.report_dir or './report'

    probe = ASymProbe(args.architecture, patch=args.patch, compilers=args.compiler, no_compilers=args.no_compiler, syntax=args.syntax)
    probe.load_symbols_from_file(args.symbol_file)
    if not probe.symbol_list:
        print(f"Error: No symbols loaded from '{args.symbol_file}'.")
        return

    if not probe._compilers:
        print("Error: No compilers specified.")
        return

    syntax_info = f"  syntax={args.syntax}" if args.syntax else ""
    print(f"[*] arch={args.architecture}{syntax_info}  symbols={len(probe.symbol_list)}  compilers={len(probe._compilers)}  patch={args.patch}")
    sys.stdout.flush()

    probe.probe(work_dir, report_dir)

if __name__ == '__main__':
    main()
