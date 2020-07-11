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

# Inherit the proprietary files
-include vendor/oppo/A57/BoardConfigVendor.mk
