rm -rf .repo/local_manifests && \
rm -rf {device,vendor,kernel,hardware}/xiaomi && \
rm -rf packages/apps/ViPER4AndroidFX && \
repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-22.2 -git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b lineage-22.2 device/xiaomi/renoir && \
git clone https://github.com/Failedmush/android_device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush/vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-22.2 kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \
. build/envsetup.sh && \
gk -s && axion renoir va user && make installclean && ax -br
