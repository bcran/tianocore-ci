#!/bin/bash

set -e

cd ../edk2
#WORKSPACE=$PWD

echo "PWD is $PWD"
#echo "WORKSPACE is $WORKSPACE"
. ./edksetup.sh

ARCH2=
if [ -v A2 ]; then
	ARCH2="-a $A2"
fi

build -p $P -t $T -a $A $ARCH2 -b $B
