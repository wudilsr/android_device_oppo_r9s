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
    $(LOCAL_PATH)/overlay
