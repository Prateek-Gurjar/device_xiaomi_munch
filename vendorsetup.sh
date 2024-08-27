echo 'Cloning Resources required to compile Custom ROMs for Munch'

# Device Common
echo 'Cloning Common Device Tree'
git clone https://github.com/Prateek-Gurjar/device_xiaomi_sm8250-common.git -b los device/xiaomi/sm8250-common

# Kernel
echo 'Cloning Kernel'
git clone https://github.com/PocoF3Releases/kernel_xiaomi_sm8250.git -b aosp-14 kernel/xiaomi/sm8250

# Hardware Xiaomi
echo 'Cloning Hardware Xiaomi'
rm -rf hardware/xiaomi
git clone https://github.com/TheParasiteProject/hardware_xiaomi.git -b main hardware/xiaomi

# SM8250 Display
echo 'Cloning SM8250 Display'
rm -rf hardware/qcom-caf/sm8250/display
git clone -b uqpr3 https://github.com/hdzungx/android_hardware_qcom-caf_sm8250_display.git hardware/qcom-caf/sm8250/display

# Vendor
echo 'Cloning Vendor Tree'
git clone -b fourteen https://gitea.com/deadlyshroud/vendor_xiaomi_munch.git vendor/xiaomi/munch

# Vendor Common
echo 'Cloning Common Vendor Tree'
git clone -b fourteen https://gitea.com/deadlyshroud/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common

# Leica Camera
echo 'Cloning Leica Camera'
git clone https://gitea.com/hdzungx/android_vendor_xiaomi_miuicamera.git -b uqpr3 vendor/xiaomi/miuicamera

# KProfiles
echo 'Cloning KProfiles'
rm -rf packages/apps/KProfiles
git clone https://github.com/yaap/packages_apps_KProfiles.git -b fourteen packages/apps/KProfiles

# ViPER4AndroidFX
echo 'Cloning ViPER4AndroidFX'
rm -rf packages/apps/ViPER4AndroidFX
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX

echo 'Delete vendorsetup.sh from device tree once this is done!'
