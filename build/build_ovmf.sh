#!/bin/bash

set -e
set -x

while getopts "t:a:b:p:" OPTION; do
	case $OPTION in
	t)
		T=$OPTARG
		;;
	a)
		A="$ARCH $OPTARG"
		;;
	b)
		B=$OPTARG
		;;
	p)
		P=$OPTARG
		;;
	*)
		echo "Invalid option"
		exit 1
		;;
	esac
done

cd ../edk2
#WORKSPACE=$PWD
T=${T:-GCC5}


echo "PWD is $PWD"
#echo "WORKSPACE is $WORKSPACE"
. ./edksetup.sh

build -p $P -t $T -a $A -b $B
