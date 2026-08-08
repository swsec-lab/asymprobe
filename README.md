# ASymProbe

ASymProbe is a tool for probing assembly symbol ambiguity across multiple architectures.

This repository provides the artifact for reproducing the main results of our paper, *"Capture The Flag: Exploiting Compilation Flags to Summon Trojan Horses,"* accepted at NDSS 2027. The artifact is designed to run inside Docker containers to simplify dependency management and improve reproducibility.

## Prerequisites

This artifact requires a Linux environment that can run Docker containers. The host system should also provide a standard build environment capable of invoking `make`.

The experiments were tested with the following Docker version:

```text
Docker version 24.0.7
```

Other recent Docker versions are expected to work, but the artifact was validated using Docker 24.0.7.

## 1. Building Docker Images

Due to library conflicts between `gcc-multilib` and several cross-compilers, we provide four Docker images:

| Image                    | Dockerfile                        | Architectures                                                |
| ------------------------ | --------------------------------- | ------------------------------------------------------------ |
| `asymprobe`              | `Dockerfile`                      | x86, x86-64                                                  |
| `asymprobe:cross`        | `Dockerfile-cross`                | aarch64, arm, mips, mips64, powerpc64, riscv64, m68k, sparc64, s390x |
| `asymprobe:gcc-15`       | `dataset/Dockerfile.gcc-15`       | x86, x86-64 with GCC 15                                      |
| `asymprobe:gcc-15-cross` | `dataset/Dockerfile.gcc-15-cross` | aarch64, arm, powerpc64, riscv64, m68k, sparc64, s390x with GCC 15 |

To build all Docker images, run:

```bash
make docker-build
```

**Notes.**

- Building all Docker images is expected to take approximately 1-2 hours, depending on the host machine and network conditions.
- Separate Docker images are used to avoid library conflicts between the x86 toolchain and cross-compilers.
- GCC 15 is not available on Ubuntu 24.04. The `gcc-15` and `gcc-15-cross` images are based on Ubuntu 25.10.

## 2. Reproducing the Main Results

This section describes how to reproduce the main ambiguity results for the architectures where ambiguity was observed: x86 Intel syntax, x86-64 Intel syntax, and aarch64, using the pre-generated instruction templates already included in the `template/` directory. See [Section 5](#5-reproducing-the-full-results-optional) to regenerate the templates from scratch.

### 2.1. Running ASymProbe

This step runs ASymProbe to find ambiguity bugs by mutating the template files. ASymProbe replaces placeholders in each template with reserved symbols and compiles the resulting test cases to detect the build errors and miscompilations, as described in Sections IV.B of the paper.

This step is expected to take approximately 20-40 minutes.

ASymProbe uses the symbol file `symbols.txt` and the template files in the `template/` directory.

To run the main experiments, execute:

```bash
make docker-fast
```

The experiments are executed inside Docker containers using the corresponding compilers. Compiled test-case binaries are stored under the `output/` directory, and per-symbol ambiguity results are written to the `report/` directory as `report_<arch>_<compiler>.txt` files, each line recording the architecture, compiler, syntax, error type (`E1` = miscompilation, `E2` = build error), and symbol.


### 2.2. Summarizing Ambiguity Results

To summarize the results and generate the data corresponding to Table 1 and Table 4 in the paper, run:

```bash
make docker-triage
```

This step processes the files in the `report/` directory and writes the summarized ambiguity cases to the `bugs/` directory. It also prints a per-compiler breakdown of ambiguous symbol counts by register category (16-bit, 32-bit, ..., etc.) to the console, once for each architecture/syntax, e.g.:

```text
Bugs will be collected in: <current-directory>/bugs
compiler    16bit    32bit   128bit   256bit   512bit  Special      etc    total
--------------------------------------------------------------------------------
clang-14        8        8        8        8        8        1                41
clang-15        8        8        8        8        8        1                41
clang-16        8        8        8        8        8        1                41
clang-17        8        8        8        8        8        1                41
clang-18        8        8        8        8        8        1                41
clang-19        8        8        8        8        8        1        1       42
clang-20        8        8        8        8        8        1        1       42
clang-21        8        8        8        8        8        1        1       42
clang-22        8        8        8        8        8        1        1       42
gcc-14          8        8                                           15       31
gcc-15          8        8                         24                15       55
--------------------------------------------------------------------------------
total          88       88       72       72       96        9       34      459
Bugs will be collected in: <current-directory>/bugs
compiler    16bit    32bit    64bit   128bit   256bit   512bit       PC  Special      etc    total
--------------------------------------------------------------------------------------------------
clang-14                16       16       32       32       32        1        1        1      131
clang-15                16       16       32       32       32        1        2        1      132
clang-16                16       16       32       32       32        1        2        1      132
clang-17                16       16       32       32       32        1        2        1      132
clang-18                32       32       32       32       32        1        2        1      164
clang-19                32       32       32       32       32        1        2        2      165
clang-20                32       32       32       32       32        1        2        2      165
clang-21                32       32       32       32       32        1        2        2      165
clang-22                32       32       32       32       32        1        2        2      165
gcc-14         32                32                                                    15       79
gcc-15         32                32                                                    15       79
--------------------------------------------------------------------------------------------------
total          64      224      288      288      288      288        9       17       43     1509
```

Expected runtime: approximately 5 minutes.

Example output structure:

```text
bugs/
|-- x86_intel/
|   |-- clang-14/
|   |   |-- eax.txt
|
|-- x86-64_intel/
|   |-- clang-14/
|   |   |-- eax.txt
```

Each `.txt` file contains example code snippets that trigger ambiguity for the corresponding architecture, compiler, and symbol.

### 2.3. Reproducing the Vector Register Miscompilations (Table V)

[Section 2.2](#22-summarizing-ambiguity-results) reports *how many* symbols are ambiguous. This step reproduces Table V of the paper, which reports *what each ambiguous symbol is silently miscompiled into*: a program symbol named after a vector register (`xmm0`-`xmm31`, `ymm0`-`ymm31`, `zmm0`-`zmm31`) is consumed by the assembler as a register operand, so the memory access the source asked for is replaced by a general-purpose register with no diagnostic.

The experiment in `experiments/vector_reg_symbol/` narrows the scope to a single instruction over the 96 vector register names, assembles it with every compiler for x86 and x86-64, and pairs each miscompiled source line with the disassembly it actually produced.

To run it together with the other experiments:

```bash
cd experiments/
make
```

Expected runtime: under a minute.

The run writes two kinds of output under `experiments/vector_reg_symbol/results/`:

| Output                          | Description                                                                                      |
| ------------------------------- | ------------------------------------------------------------------------------------------------ |
| `listing_<arch>_<compiler>.s`   | Every miscompiled source line followed by the disassembly it produced, in Intel syntax           |
| `summary.txt`                   | Table V: one table per architecture, a row per register index and a column per compiler          |

`summary.txt` is also printed to the console. Both tables, abridged to five rows and four of the eleven compiler columns, are:

```text
x86
128/256/512-bit
Register Names     clang-14     ...  clang-22     gcc-14  gcc-15
-----------------  -----------       -----------  ------  ---------
xmm0/ymm0/zmm0     eax/eax/eax  ...  eax/eax/eax  -/-/-   -/-/-
xmm4/ymm4/zmm4     eiz/eiz/eiz  ...  eiz/eiz/eiz  -/-/-   -/-/-
xmm7/ymm7/zmm7     edi/edi/edi  ...  edi/edi/edi  -/-/-   -/-/-
xmm8/ymm8/zmm8     -/-/-        ...  -/-/-        -/-/-   -/-/(bad)
xmm31/ymm31/zmm31  -/-/-        ...  -/-/-        -/-/-   -/-/(bad)

x86-64
128/256/512-bit
Register Names     clang-14     ...  clang-18     ...  gcc-14  gcc-15
-----------------  -----------       -----------       ------  ------
xmm0/ymm0/zmm0     rax/rax/rax  ...  rax/rax/rax  ...  -/-/-   -/-/-
xmm4/ymm4/zmm4     0/0/0        ...  0/0/0        ...  -/-/-   -/-/-
xmm7/ymm7/zmm7     rdi/rdi/rdi  ...  rdi/rdi/rdi  ...  -/-/-   -/-/-
xmm16/ymm16/zmm16  rax/rax/rax  ...  r16/r16/r16  ...  -/-/-   -/-/-
xmm31/ymm31/zmm31  r15/r15/r15  ...  r31/r31/r31  ...  -/-/-   -/-/-
```

Each cell gives what `xmmN`, `ymmN` and `zmmN` were miscompiled into. A `-` means the name was not miscompiled. `(bad)` marks bytes that objdump could not decode (illegal instruction).

See `experiments/vector_reg_symbol/README.md` for the experiment design, the per-compiler miscompiled/correct/rejected counts, and a discussion of the results.

## 3. Reproducing Example Programs

The example programs discussed in the paper are provided under the `examples/` directory. Each example has its own subdirectory and Makefile.

To build and run all examples, use:

```bash
cd examples/
make
```

Alternatively, each example can be reproduced individually as shown below.

```bash
# Case 1: Clang
docker run --rm -v /workspace:/workspace -w /workspace/case1_clang asymprobe make
clang -save-temps -masm=intel -no-pie -fno-pie case1_clang.c -o case1_clang
./case1_clang
Capture the Flag

# Case 1: GCC
docker run --rm -v /workspace:/workspace -w /workspace/case1_gcc asymprobe make
gcc -masm=intel -pie -fpie case1_gcc.c -o case1_gcc
./case1_gcc
Capture the Flag

# Case 2: Clang
docker run --rm -v /workspace:/workspace -w /workspace/case2_clang asymprobe make
clang -save-temps -masm=intel -pie -fpie case2_clang.c -o case2_clang
./case2_clang
Capture the Flag

# Case 3: Clang
docker run --rm -v /workspace:/workspace -w /workspace/case3_clang asymprobe make
clang -save-temps -masm=intel -no-pie -fno-pie case3_clang.c -o case3_clang
./case3_clang
Capture the Flag

# Case 3: GCC 15
docker run --rm -v /workspace:/workspace -w /workspace/case3_gcc asymprobe:gcc-15 make
gcc -O2 -m32 -masm=intel -pie -fpie case3_gcc.c -o case3_gcc
./case3_gcc
make: *** [Makefile:7: case3_gcc] Illegal instruction (core dumped)
make: [Makefile:28: docker-case3_gcc] Error 2 (ignored)

# Example 1
docker run --rm -v /workspace:/workspace -w /workspace/example1 asymprobe make
clang -save-temps -masm=intel -pie -fpie example1.c -o example1
./example1
Authentication Success

# Example 2
docker run --rm -v /workspace:/workspace -w /workspace/example2 asymprobe make
gcc -masm=intel -m32 -no-pie -fno-pie example2.c -o example2
./example2
SESSION_ID=7f3a9c21;

# Example 3
docker run --rm -v /workspace:/workspace -w /workspace/example3 asymprobe make
gcc -masm=intel -O1 -pie -fpie -DUNIT_SIZE=BYTE example3.c -o example3
./example3
Write: 4096 bytes
...                 =======Secret Key:Capture the Flag=======   ...
...
```

The illegal-instruction behavior in `case3_gcc` is expected.


## 4. Reproducing the Patch Experiment

This section describes how to validate the proposed mitigation, which wraps each symbol in double quotes (`SYMBOL` → `"symbol"`) to disambiguate it from instruction mnemonics and registers.

To run the patch experiment for the fast-path architectures (x86, x86-64, aarch64), execute:

```bash
make docker-patch
```

This command re-runs the ASymProbe probing process with the `-patch` flag applied and stores results under `output-patch/` and `report-patch/` instead of `output/` and `report/`.

Expected runtime: approximately 20--40 minutes, comparable to [Section 2.1](#21-running-asymprobe).

To summarize the patch results, run:

```bash
make docker-triage-patch
```

This step processes the files in the `report-patch/` directory and writes the summarized cases to the `bugs-patch/` directory, the patched counterparts of `report/` and `bugs/` from [Section 2](#2-reproducing-the-main-results). Since quoting symbols resolves the ambiguity bugs detected in [Section 2](#2-reproducing-the-main-results), no ambiguity is expected to remain, and the command should print `No ambiguity bugs found.` for each architecture/compiler combination, e.g.:

```text
$ make docker-triage-patch
...
No ambiguity bugs found.
No ambiguity bugs found.
...
```

## 5. Reproducing the Full Results *[Optional]*

This section describes how to reproduce the full evaluation over all 119 architecture/compiler/syntax combinations reported in the paper.

This process is optional and may take more than one day.

### 5.1. Preprocessing

The preprocessing step compiles the dataset and collects generated assembly files for all 11 architectures and both syntaxes (Intel, AT&T) for x86/x86-64. It then extracts the instruction templates used by ASymProbe, applying the compilation options described in Section IV.A of the paper.

This step is expected to take approximately 8-12 hours.

```bash
make docker-preprocess-all
```

This command performs the following tasks:

- Extracts `coreutils-9.7.tar.gz` under the `dataset/` directory
- Compiles Coreutils using `dataset/build_coreutils.py`
- Stores intermediate build outputs under `dataset/build/`
- Extracts instruction templates using `dataset/extract_instruction.py`
- Writes generated templates to the `template/` directory

### 5.2. Running ASymProbe

```bash
make docker-all
```

### 5.3. Summarizing Results

```bash
make docker-triage-all
```

## 6. Output Directories

The main output directories are:

| Directory         | Description                                                                  |
| ------------------ | ----------------------------------------------------------------------------- |
| `template/`        | Instruction templates used by ASymProbe                                     |
| `dataset/build/`   | Intermediate build outputs generated during preprocessing                   |
| `output/`          | Compiled test-case binaries generated during probing                        |
| `report/`          | Raw per-symbol ambiguity results (see [Section 2.1](#21-running-asymprobe))                          |
| `output-patch/`, `report-patch/` | Same as above, generated when running the patch experiment ([Section 4](#4-reproducing-the-patch-experiment)) |
| `bugs/`            | Summarized ambiguity cases used for the paper tables                        |
| `bugs-patch/`       | Summarized cases after the patch ([Section 4](#4-reproducing-the-patch-experiment)); empty if the patch resolves all ambiguities |
| `examples/`        | Example programs discussed in the paper                                     |
| `experiments/vector_reg_symbol/` | Vector register miscompilation results, Table V ([Section 2.3](#23-reproducing-the-vector-register-miscompilations-table-v)) |

## 7. Artifact Notes

- The artifact is intended to be executed through Docker.
- Pre-generated templates are included to reduce reproduction time.
- [Section 2](#2-reproducing-the-main-results) reproduces the main ambiguity results for the architectures where ambiguity was observed.
- [Section 5](#5-reproducing-the-full-results-optional) (optional) regenerates the instruction templates from scratch and reproduces all 119 combinations evaluated in the paper.
- The example programs ([Section 3](#3-reproducing-example-programs)) demonstrate the real-world security impact of the detected ambiguities.
- The patch experiment ([Section 4](#4-reproducing-the-patch-experiment)) validates the proposed mitigation for the detected ambiguities.
