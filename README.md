# ASymProbe

ASymProbe is a tool for probing assembly symbol ambiguity across multiple architectures.

This repository provides the artifact for reproducing the main results of our paper, accepted at NDSS 2027. The artifact is designed to run inside Docker containers to simplify dependency management and improve reproducibility.

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

- Building all Docker images is expected to take approximately 1--2 hours, depending on the host machine and network conditions.
- Separate Docker images are used to avoid library conflicts between the x86 toolchain and cross-compilers.
- GCC 15 is not available on Ubuntu 24.04. The `gcc-15` and `gcc-15-cross` images are based on Ubuntu 25.10.

## 2. Reproducing the Main Results

This section describes how to reproduce the main ambiguity results for the architectures where ambiguity was observed: x86 Intel syntax, x86-64 Intel syntax, and aarch64.

### 2.1. Preprocessing *[Optional]*

The preprocessing step compiles the dataset and collects generated assembly files. It then extracts instruction templates used by ASymProbe.

This step applies the compilation options described in Section 4.1.1 of the paper. It is expected to take approximately 2--4 hours.

This step is optional because pre-generated template files are already included in the `template/` directory.

#### 2.1.1. Extract the Dataset

The preprocessing step uses Coreutils 9.7. To extract `coreutils-9.7.tar.gz` under the `dataset/` directory, run:

```bash
make setup
```

#### 2.1.2. Run Preprocessing

To run preprocessing, execute:

```bash
make docker-preprocess
```

This command performs the following tasks:

- Compiles Coreutils using `dataset/build_coreutils.py`
- Stores intermediate build outputs under `dataset/build/`
- Extracts instruction templates using `dataset/extract_instruction.py`
- Writes generated templates to the `templates/` directory

### 2.2. Running ASymProbe

This step runs ASymProbe to find ambiguity bugs by mutating the template files. ASymProbe replaces placeholders in each template with reserved symbols and compiles the resulting test cases to detect the build errors and miscompilations, as described in Sections 4.1.2 and 4.1.3 of the paper.

This step is expected to take approximately 20--40 minutes.

ASymProbe uses the symbol file `symbols.txt` and the template files in the `templates/` directory.

To run the main experiments, execute:

```bash
make docker-fast
```

The experiments are executed inside Docker containers using the corresponding compilers. Detected ambiguity bugs are stored under the output/ directory.


### 2.3. Summarizing Ambiguity Results

To summarize the results and generate the data corresponding to Table 1 and Table 4 in the paper, run:

```bash
make docker-triage
```

This step processes the files in the `output/` directory and writes the summarized ambiguity cases to the `bugs/` directory.

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


## 4. Reproducing the Full Results *[Optional]*

This section describes how to reproduce the full evaluation over all 119 architecture/compiler/syntax combinations reported in the paper.

This process is optional and may take more than one day.

### 4.1. Preprocessing

```bash
make setup
make docker-build-all
```

### 4.2. Running ASymProbe

```bash
make docker-all
```

### 4.3. Summarizing Results

```bash
make docker-triage-all
```

## 5. Output Directories

The main output directories are:

| Directory        | Description                                               |
| ---------------- | --------------------------------------------------------- |
| `template/`      | Instruction templates used by ASymProbe                   |
| `dataset/build/` | Intermediate build outputs generated during preprocessing |
| `output/`        | Raw ambiguity detection results                           |
| `bugs/`          | Summarized ambiguity cases used for the paper tables      |
| `examples/`      | Example programs discussed in the paper                   |

## 6. Artifact Notes

- The artifact is intended to be executed through Docker.
- Pre-generated templates are included to reduce reproduction time.
- The fast path reproduces the main ambiguity results for the architectures where ambiguity was observed.
- The full path reproduces all 119 combinations evaluated in the paper.
