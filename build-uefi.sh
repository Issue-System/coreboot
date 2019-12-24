#!/bin/bash

set -e

device="t440p"
filename="coreboot_tiano_${device}_archfan_`date +"%Y%m%d"`.rom"
rm -f ~/dev/firmware/${filename}*
rm -rf ./build
cp configs/.config.${device}.uefi .config
git submodule update --init --recursive
make clean
make olddefconfig
make
cp ./build/coreboot.rom ./${filename}
cbfstool ${filename} print
sha1sum ${filename} > ${filename}.sha1
mv ${filename}* ~/dev/firmware/