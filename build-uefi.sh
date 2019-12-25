#!/bin/bash

set -e

CHECK_FILE="util/crossgcc/xgcc/bin/iasl"
if [ ! -f "$CHECK_FILE"  ] || [ `find "$CHECK_FILE" -mtime +30 | egrep '.*'` ]; then
	make crossgcc-i386 CPUS=$(nproc)
else
	echo "crossgcc is reasonably up-to-date. No need to waste precious cycles."
fi

device="t440p"
filename="coreboot_tiano_${device}_archfan_`date +"%Y%m%d"`.rom"
rm -f ~/dev/firmware/${filename}*
rm -rf ./build
cp configs/config.${device}.uefi .config
git submodule update --init --recursive
make clean
make olddefconfig
make
cp ./build/coreboot.rom ./${filename}
cbfstool ${filename} print
sha1sum ${filename} > ${filename}.sha1

if [ ! -d "~/dev/firmware" ]; then
	mkdir -p ~/dev/firmware
fi

mv ${filename}* ~/dev/firmware/
