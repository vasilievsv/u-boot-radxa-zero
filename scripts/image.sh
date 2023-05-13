#! /usr/bin/env bash

echo "Pack U-boot"

cp ./u-boot/u-boot.bin ./fip/radxa-zero/bl33.bin
cd ./fip/radxa-zero
make

ls -lah u-boot.*
