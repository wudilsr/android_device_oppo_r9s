#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oppo/A57

# Inherit from msm8937-common
$(call inherit-product, device/oppo/msm8937-common/msm8937.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/A57/A57-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/oppo/A57

# Screen density
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

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
