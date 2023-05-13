#! /usr/bin/env bash


echo "************************************************************************"
echo "*  Build U-boot"
echo "*"
echo "************************************************************************"


export CROSS_COMPILE=/opt/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf/bin/aarch64-none-elf-
export ARCH=arm
cd u-boot
ls -lah
make radxa-zero_defconfig 
make
