#!/bin/bash

set -e

cd edk2
WORKSPACE=$PWD
TOOL_CHAIN_TAG=${TOOL_CHAIN_TAG:- GCC5}
. ./edksetup.sh
build -p OvmfPkg/OvmfPkgX64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b RELEASE
build -p OvmfPkg/OvmfPkgX64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b DEBUG
build -p OvmfPkg/OvmfPkgX64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b NOOPT

build -p OvmfPkg/OvmfPkgIa32.dsc -t ${TOOL_CHAIN_TAG} -a IA32 -b RELEASE
build -p OvmfPkg/OvmfPkgIa32.dsc -t ${TOOL_CHAIN_TAG} -a IA32 -b DEBUG
build -p OvmfPkg/OvmfPkgIa32.dsc -t ${TOOL_CHAIN_TAG} -a IA32 -b NOOPT

build -p OvmfPkg/OvmfPkgIa32X64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -a IA32 -b RELEASE
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -a IA32 -b DEBUG
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t ${TOOL_CHAIN_TAG} -a X64 -a IA32 -b NOOPT

build -p OvmfPkg/OvmfXen.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b RELEASE
build -p OvmfPkg/OvmfXen.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b DEBUG
build -p OvmfPkg/OvmfXen.dsc -t ${TOOL_CHAIN_TAG} -a X64 -b NOOPT
