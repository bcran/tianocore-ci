cd edk2
set WORKSPACE=%CD%
call edksetup.bat reconfig vs2019

call build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b RELEASE || exit /b
call build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b DEBUG || exit /b
call build -p OvmfPkg/OvmfPkgX64.dsc -t VS2019 -a X64 -b NOOPT || exit /b

call build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b RELEASE || exit /b
call build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b DEBUG || exit /b
call build -p OvmfPkg/OvmfPkgIa32.dsc -t VS2019 -a Ia32 -b NOOPT || exit /b

call build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b RELEASE || exit /b
call build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b DEBUG || exit /b
call build -p OvmfPkg/OvmfPkgIa32X64.dsc -t VS2019 -a X64 -a Ia32 -b NOOPT || exit /b

call build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b RELEASE || exit /b
call build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b DEBUG || exit /b
call build -p OvmfPkg/OvmfXen.dsc -t VS2019 -a X64 -b NOOPT || exit /b
