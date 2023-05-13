#! /usr/bin/env bash

cd ./u-boot
make clean
make distclean

cd ..

cd ./fip
make clean
make distclean
