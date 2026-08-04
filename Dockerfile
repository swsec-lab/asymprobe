FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Base tools + GCC versions (x86 / x86-64 only)
RUN apt-get update && apt-get install -y \
    wget lsb-release gnupg software-properties-common \
    automake texinfo \
    gcc-multilib libc6-dev-i386 \
    gcc-9 gcc-10 gcc-11 gcc-12 gcc-13 gcc-14 \
    clang clang-14 clang-15 clang-16 clang-17 clang-18 clang-19 clang-20 \
    && rm -rf /var/lib/apt/lists/*

# Clang 21~22 via LLVM official script
RUN wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh \
    && for v in 21 22; do ./llvm.sh $v; done \
    && rm llvm.sh

# Python dependencies
RUN apt-get update && apt-get install -y python3 python3-pip \
    && pip3 install --break-system-packages requests \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
