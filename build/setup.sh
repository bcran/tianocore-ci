#!/bin/bash

set -e
set -u

echo "Working directory is $PWD"

EDK2REPO=https://github.com/tianocore/edk2.git
NUM_CORES=$(getconf _NPROCESSORS_ONLN)

cd ..

if [ ! -d edk2 ]; then
	git clone ${EDK2REPO}
else
	pushd edk2
	git fsck
	if [ $? -ne 0 ]; then
		popd
		rm -rf edk2
		git clone ${EDK2REPO}
	else
		git clean -fdx
		popd
	fi
fi

cd edk2
git submodule update --init --force
make -C BaseTools -j${NUM_CORES}
	
