#! /usr/bin/env sh

echo "clone u-boot"
if ls ../u-boot 1> /dev/null 2>&1; then
    echo "already exist"
else
    git clone -b radxa-zero-v2021.07 https://github.com/radxa/u-boot.git --depth=1
fi

echo "FIP(Firmware in Package) is a collection of scripts and pre-built binaries"
if ls ../fip 1> /dev/null 2>&1; then
    echo "already exist"
else
    git clone https://github.com/radxa/fip.git --depth=1
fi

echo "AArch64 ELF bare-metal target (aarch64-none-elf)"
if ls /opt/gcc-arm** 1> /dev/null 2>&1; then
    echo "already exist"
else
    wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz
    tar xvf gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz -C /opt
    rm -rf gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz
fi
