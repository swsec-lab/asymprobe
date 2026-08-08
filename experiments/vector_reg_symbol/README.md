# Vector register names in symbol position

What x86/x86-64 assemblers do when a program symbol is named after a vector register
(`xmm0`-`xmm31`, `ymm0`-`ymm31`, `zmm0`-`zmm31`) and appears in an Intel-syntax
instruction. The main ASymProbe run (Sections 2 and 4 of the top-level README) scans
1005 symbols against ~1000-line instruction templates; this experiment narrows the scope
to a single instruction, so the miscompilation itself — what each name silently turns
into — can be read off directly.

## template.s

```asm
.intel_syntax noprefix
test	DWORD PTR [xmm0], 0
test	DWORD PTR [xmm1], 0
...
test	DWORD PTR [zmm31], 0
```

96 instructions, one per vector register name. Every line reads through a named symbol,
so each one should assemble to a relocation against that name. Any mnemonic works —
`listing.py` reads whatever is in the file — so swapping `test` for `mov`, `add`, ...
reruns the same experiment on a different instruction.

## listing.py

Assembles `template.s` with each compiler and writes back every source line followed by
what it became, disassembled with `objdump -dr -M intel` so both sides are in the same
syntax. Each listing is itself an assembly file, with the disassembly in a comment.

```asm
.intel_syntax noprefix
test    DWORD PTR [xmm0], 0   # test DWORD PTR [rax*1+0x0],0x0
test    DWORD PTR [xmm4], 0   # test DWORD PTR ds:0x0,0x0
test    DWORD PTR [zmm31], 0  # test DWORD PTR [r31*1+0x0],0x0
```

**Only miscompilations are listed.** A line is left out when it produced exactly the
instruction asked for, relocated against the name it addressed — the symbol survived —
and when the assembler rejected it, which is a build error rather than silent wrong
code. Everything else is listed: the name replaced by a register (no relocation), or
extra bytes emitted around the instruction, with any relocation the line did produce
shown after its disassembly.

The object each listing was read from is kept beside it as
`results/object_<arch>_<compiler>.o`, so what the assembler actually emitted can be
inspected directly:

```bash
objdump -dr -M intel results/object_x86-64_clang-18.o
```

## summary.py

Collapses the 22 listings into one table per architecture: a row per register index, a
column per compiler, and in each cell what `xmmN`, `ymmN` and `zmmN` were miscompiled
into. Written to `results/summary.txt` and printed to the console; see Section 2.3 of
the top-level README for the table and how to read its cells.

Columns are never merged, even where several compiler versions agree, and a compiler
with nothing to report keeps its column. It reads the listings only, so it re-runs in a
second without touching a compiler.

## Running

Requires the `asymprobe` and `asymprobe:gcc-15` images (top-level README, Section 1).
`make` from `experiments/` runs this experiment; from this directory:

```bash
make            # listing + summary
make listing    # write results/listing_<arch>_<compiler>.s
make summary    # rebuild results/summary.txt from existing listings
make clean
```


