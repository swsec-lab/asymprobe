#!/usr/bin/env python3

import argparse
import os
import subprocess
import sys
from itertools import product
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent.resolve()
SRC_DIR = SCRIPT_DIR / 'coreutils-9.7'

ALL_ARCHS     = ['x86', 'x86-64', 'aarch64', 'arm', 'mips', 'mips64', 'powerpc64', 'riscv64', 'm68k', 'sparc64', 's390x']
ALL_ARCHS     = ['x86-64']
ALL_COMPILERS = ['gcc-9', 'gcc-10', 'gcc-11', 'gcc-12', 'gcc-13', 'gcc-14', 'gcc-15'
                 'clang-14', 'clang-15', 'clang-16', 'clang-17', 'clang-18', 'clang-19', 'clang-20', 'clang-21', 'clang-22']
ALL_COMPILERS = ['clang', 'gcc']
ALL_PIE       = ['pie', 'nopie']
ALL_OPTS      = ['O0', 'O1', 'O2', 'O3', 'Os', 'Ofast']

_ARCH_MAP = {
    #              gcc_triple                  clang_target              arch_flag  host_triple              extra
    'x86':       (None,                        None,                     '-m32',    'i686-linux-gnu',        ''),
    'x86-64':    (None,                        None,                     '',        '',                      ''),
    'aarch64':   ('aarch64-linux-gnu',         'aarch64-linux-gnu',      '',        'aarch64-linux-gnu',     ''),
    'arm':       ('arm-linux-gnueabi',         'arm-linux-gnueabi',      '',        'arm-linux-gnueabi',     ''),
    'mips':      ('mips-linux-gnu',            'mips-linux-gnu',         '',        'mips-linux-gnu',        ''),
    'mips64':    ('mips64-linux-gnuabi64',     'mips64-linux-gnuabi64',  '',        'mips64-linux-gnuabi64', ''),
    'powerpc64': ('powerpc64-linux-gnu',       'powerpc64-linux-gnu',    '',        'powerpc64-linux-gnu',   ''),
    'riscv64':   ('riscv64-linux-gnu',         'riscv64-linux-gnu',      '',        'riscv64-linux-gnu',     '-march=rv64g'),
    'mingw32':   ('x86_64-w64-mingw32',        'x86_64-w64-mingw32',     '',        'x86_64-w64-mingw32',    ''),
    'm68k':      ('m68k-linux-gnu',            'm68k-linux-gnu',         '',        'm68k-linux-gnu',        ''),
    'sparc64':   ('sparc64-linux-gnu',         'sparc64-linux-gnu',      '',        'sparc64-linux-gnu',     ''),
    's390x':     ('s390x-linux-gnu',           's390x-linux-gnu',        '',        's390x-linux-gnu',       ''),
}


def resolve_cc(arch: str, compiler: str):
    """Return (cc, arch_flag, host_flag_list) for the given arch/compiler."""
    if arch not in _ARCH_MAP:
        return compiler, '', []

    gcc_triple, clang_target, arch_flag, host_triple, extra_clang = _ARCH_MAP[arch]
    is_gcc = compiler.startswith('gcc')

    if is_gcc:
        if gcc_triple is None:
            cc = compiler  
        else:
            ver_suffix = compiler[len('gcc'):]  
            cc = f'{gcc_triple}-gcc{ver_suffix}'
    else:
        if clang_target is None:
            cc = compiler  
        else:
            extra = f' {extra_clang}' if extra_clang else ''
            cc = f'{compiler} --target={clang_target}{extra}'

    host_flag = [f'--host={host_triple}'] if host_triple else []
    return cc, arch_flag, host_flag


def build_flags(arch: str, compiler: str, pie: str, opt: str, syntax: str = 'intel'):
    cc, arch_flag, host_flag = resolve_cc(arch, compiler)
    pie_flag = '-fpie -pie' if pie == 'pie' else '-fno-pie -no-pie'
    asm_flag = '-masm=intel -Dor=_or -Dflags=_flags -Dshr=_shr -Dand=_and' if arch in ('x86', 'x86-64') and syntax == 'intel' else ''
    no_integrated_as = '-fno-integrated-as -fno-addrsig' if compiler.startswith('clang') and arch in ('x86') and syntax == 'intel' else ''

    cflags  = ' '.join(filter(None, [f'-{opt}', arch_flag, pie_flag, asm_flag, no_integrated_as,
                                     '-save-temps=cwd']) )
    ldflags = ' '.join(filter(None, [arch_flag, pie_flag]))
    return cc, cflags, ldflags, host_flag


def build_one(arch: str, compiler: str, pie: str, opt: str, out_dir: Path, syntax: str = 'intel') -> bool:
    arch_dir = f'{arch}_{syntax}' if syntax else arch
    build_dir = out_dir / arch_dir / compiler / pie / opt
    build_dir.mkdir(parents=True, exist_ok=True)
    log_file = build_dir / 'build.log'

    cc, cflags, ldflags, host_flag = build_flags(arch, compiler, pie, opt, syntax)

    configure_cmd = [
        str(SRC_DIR / 'configure'),
        *host_flag,
        f'--prefix={build_dir}',
        '--disable-nls',
        '--disable-dependency-tracking',
        '--enable-no-install-program=stdbuf' + (',factor' if arch in ('x86', 'x86-64') else ''), # Clang includes AT&T inline assembly.
     ]
    make_cmd = ['make', f'-j1']
    env = os.environ.copy()
    env['FORCE_UNSAFE_CONFIGURE'] = '1'
    env['CC']      = cc
    env['CFLAGS']  = cflags
    env['LDFLAGS'] = ldflags

    with open(log_file, 'w') as log:
        for cmd in [configure_cmd, make_cmd]:
            result = subprocess.run(cmd, cwd=build_dir, env=env,
                                    stdout=log, stderr=subprocess.STDOUT)
            if result.returncode != 0:
                return False
    return True


def parse_args():
    parser = argparse.ArgumentParser(description='Build coreutils with multiple configurations')
    parser.add_argument('--arch',     nargs='+', default=ALL_ARCHS,     choices=list(_ARCH_MAP.keys()),
                        metavar='ARCH',     help=f'Architectures (default: all) [{", ".join(ALL_ARCHS)}]')
    parser.add_argument('--compiler', nargs='+', default=ALL_COMPILERS, choices=ALL_COMPILERS,
                        metavar='COMPILER', help=f'Compilers (default: all) [{", ".join(ALL_COMPILERS)}]')
    parser.add_argument('--pie',      nargs='+', default=ALL_PIE,       choices=ALL_PIE,
                        metavar='PIE',      help=f'PIE options (default: all) [{", ".join(ALL_PIE)}]')
    parser.add_argument('--opt',      nargs='+', default=ALL_OPTS,      choices=ALL_OPTS,
                        metavar='OPT',      help=f'Optimization levels (default: all) [{", ".join(ALL_OPTS)}]')
    parser.add_argument('--out-dir',  default=str(SCRIPT_DIR / 'build'),
                        help='Output directory (default: dataset/build)')
    parser.add_argument('--syntax',  nargs='+', default=['att', 'intel'], choices=['att', 'intel'],
                        metavar='SYNTAX', help='Assembly syntax for x86/x86-64 (default: att intel)')
    return parser.parse_args()


def main():
    args = parse_args()
    out_dir = Path(args.out_dir)

    combos = list(product(args.arch, args.compiler, args.pie, args.opt))
    total = sum(len(args.syntax) if arch in ('x86', 'x86-64') else 1 for arch, *_ in combos)

    done = 0
    for arch, compiler, pie, opt in combos:
        syntaxes = args.syntax if arch in ('x86', 'x86-64') else [None]
        for syntax in syntaxes:
            done += 1
            arch_dir = f'{arch}_{syntax}' if syntax else arch
            label = f'{arch_dir}/{compiler}/{pie}/{opt}'
            print(f'\r[{done}/{total}] {done*100//total}% - {label}    ', end='', flush=True)

            ok = build_one(arch, compiler, pie, opt, out_dir, syntax )
            if not ok:
                log_path = out_dir / arch_dir / compiler / pie / opt / 'build.log'
                print(f'\nERROR: {label} - see {log_path}')

    print(f'\r[{total}/{total}] 100% - Done.                        ')


if __name__ == '__main__':
    if not SRC_DIR.is_dir():
        print(f'Error: coreutils source not found: {SRC_DIR}', file=sys.stderr)
        sys.exit(1)
    main()
