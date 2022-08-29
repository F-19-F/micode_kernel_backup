#!/bin/bash
export compiler_root=${HOME}/cros_compiler
PATH=${compiler_root}/clang-proton/bin/:$PATH
# PATH=${compiler_root}/gas/:${compiler_root}/clang/bin/:$PATH
# export LD_LIBRARY_PATH=${compiler_root}/clang/lib64:$LD_LIBRARY_PATH
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CC=clang \
LLVM=1 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=aarch64-linux-gnu- \
CROSS_COMPILE_ARM32=arm-linux-gnueabi-\
CROSS_COMPILE_COMPAT=arm-linux-gnueabi- "
make ${args} munch_user_defconfig
make ${args}