#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8937-common
-include device/oppo/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/oppo/A57

# Kernel
TARGET_KERNEL_CONFIG := lineageos_A57_defconfig

# Display
TARGET_SCREEN_DENSITY := 280

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib64/hw/fingerprint.msm8937.so|libshims_binder.so

# Inherit the proprietary files
-include vendor/oppo/A57/BoardConfigVendor.mk
