rm -rf .repo/local_manifests
repo init -u https://github.com/Evolution-X/manifest -b cnb --git-lfs --depth=1
git clone https://github.com/xiechangan123/local_manifest_myron_EvoX.git -b main .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=Xcaaaa123
export BUILD_HOSTNAME=android-build
export TZ=Asia/Shanghai
source build/envsetup.sh
lunch lineage_myron-cp2a-userdebug
mka evolution
