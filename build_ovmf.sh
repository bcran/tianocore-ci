#!/bin/bash

set -e
set -u

. ./edksetup.sh
build -p OvmfPkg/OvmfPkgX64.dsc -t GCC5 -a X64 -b RELEASE
build -p OvmfPkg/OvmfPkgX64.dsc -t GCC5 -a X64 -b DEBUG
build -p OvmfPkg/OvmfPkgX64.dsc -t GCC5 -a X64 -b NOOPT

build -p OvmfPkg/OvmfPkgIa32.dsc -t GCC5 -a Ia32 -b RELEASE
build -p OvmfPkg/OvmfPkgIa32.dsc -t GCC5 -a Ia32 -b DEBUG
build -p OvmfPkg/OvmfPkgIa32.dsc -t GCC5 -a Ia32 -b NOOPT

build -p OvmfPkg/OvmfPkgIa32X64.dsc -t GCC5 -a X64 -a Ia32 -b RELEASE
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t GCC5 -a X64 -a Ia32 -b DEBUG
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t GCC5 -a X64 -a Ia32 -b NOOPT

build -p OvmfPkg/OvmfXen.dsc -t GCC5 -a X64 -b RELEASE
build -p OvmfPkg/OvmfXen.dsc -t GCC5 -a X64 -b DEBUG
build -p OvmfPkg/OvmfXen.dsc -t GCC5 -a X64 -b NOOPT
