#!/bin/bash

set -e

while getopts "t:a:b:p:" OPTION; do
	case $OPTION in
	t)
		TOOLCHAIN=$OPTARG
		;;
	a)
		ARCH="$ARCH $OPTARG"
		;;
	b)
		BUILD=$OPTARG
		;;
	p)
		PLATFORM=$OPTARG
		;;
	*)
		echo "Invalid option"
		exit 1
		;;
	esac
done

cd ../edk2
WORKSPACE=$PWD
TOOLCHAIN=${TOOLCHAIN:-GCC5}

echo "PWD is $PWD"
echo "WORKSPACE is $WORKSPACE"
ls
. ./edksetup.sh

build -p $PLATFORM -t $TOOLCHAIN -a $ARCH -b $BUILD
