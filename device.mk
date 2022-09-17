#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oppo/r9s

# Inherit from msm8953-common
$(call inherit-product, device/oppo/msm8953-common/msm8953.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/r9s/r9s-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/oppo/r9s

# Screen density
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml

# Rootdir
PRODUCT_PACKAGES += \
    fpc1020.rc

# Shims
PRODUCT_PACKAGES += \
    libshims_binder
