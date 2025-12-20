repo init --depth=1 --no-repo-verify -u https://github.com/DerpFest-AOSP/manifest.git -b 15 --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-derp15 .repo/local_manifests
/opt/crave/resync.sh
source build/envsetup.sh
lunch derp_apollo-userdebug
make installclean
mka derp
