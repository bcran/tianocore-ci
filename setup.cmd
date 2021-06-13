set EDK2REPO=https://github.com/tianocore/edk2.git

if not exist edk2 (
	git clone %EDK2REPO% || exit /b
) else (
	cd edk2
	git fsck
	if "%ERRORLEVEL%" NEQ "0" (
		cd ..
		git clone %EDK2REPO% || exit /b
	) else (
		git clean -fdx || exit /b
		cd ..
	)
)

cd edk2
git submodule update --init --force || exit /b
set WORKSPACE=%CD%
edksetup.bat ForceRebuild VS2019 || exit /b
edksetup.bat Reconfig || exit /b

