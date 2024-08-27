#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Flags
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 870 5G" \
    RISING_MAINTAINER="Prateek Gurjar"
RISING_PACKAGE_TYPE := VANILLA_AOSP
TARGET_ENABLE_BLUR := true
WITH_GMS := false
TARGET_HAS_UDFPS := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_PACKAGE := 1
TARGET_LAUNCHER := 1
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_MATLOG := false
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := PrateekGurjar
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := PrateekGurjar
MATRIXX_CHIPSET := SM8250
MATRIXX_BATTERY := 4500mah
MATRIXX_DISPLAY := 1080×2400
EVEREST_MAINTAINER := PrateekGurjar
WITH_GAPPS := false
TARGET_SUPPORTS_BLUR := true

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
