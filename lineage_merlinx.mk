#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RisingOS stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="MT6768" \
    RISING_MAINTAINER="Nadins"

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_NOT_USES_BLUR := true
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/merlinx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_merlinx
PRODUCT_DEVICE := merlinx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="merlin-user 11 RP1A.200720.011 V12.5.4.0.RJOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/merlin/merlin:11/RP1A.200720.011/V12.5.4.0.RJOMIXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
