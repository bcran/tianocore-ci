cd edk2
edksetup.bat reconfig || exit /b

build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b RELEASE || exit /b
build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b DEBUG || exit /b
build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b NOOPT || exit /b

build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b RELEASE || exit /b
build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b DEBUG || exit /b
build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b NOOPT || exit /b

build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b RELEASE || exit /b
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b DEBUG || exit /b
build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b NOOPT || exit /b

build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b RELEASE || exit /b
build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b DEBUG || exit /b
build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b NOOPT || exit /b
