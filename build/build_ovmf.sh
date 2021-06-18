#!/bin/bash

set -e

cd ../edk2
WORKSPACE=$PWD
PATH=$PATH:/usr/local/bin

. ./edksetup.sh

ARCH2=
if [ -n "$A2" ]; then
	ARCH2="-a $A2"
fi

build -p $P -t $T -a $A $ARCH2 -b $B
