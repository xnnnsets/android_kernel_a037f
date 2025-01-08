#!/bin/bash

export PATH=$(pwd)/toolchain/clang/host/linux-x86/clang-r547379/bin:$PATH
export CROSS_COMPILE=$(pwd)/toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-
export CLANG_TRIPLE=aarch64-buildroot-linux-gnu
export ARCH=arm64


export KCFLAGS="-w"
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS="-w" LLVM=1 LLVM_IAS=1 CONFIG_SECTION_MISMATCH_WARN_ONLY=y a03s_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS="-w" LLVM=1 LLVM_IAS=1 CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j6
