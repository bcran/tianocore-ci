set EDK2REPO=https://github.com/tianocore/edk2.git

if not exist edk2 (
	git clone %EDK2REPO% 
) else (
	cd edk2
	git fsck
	if "%ERRORLEVEL%" NEQ "0" (
		cd ..
		git clone %EDK2REPO%
	) else (
		git clean -fdx
	)
)

cd edk2
edksetup.bat Reconfig ForceRebuild VS2019
