#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8953-common
-include device/oppo/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/oppo/r9s

# Kernel
TARGET_KERNEL_CONFIG := lineageos_r9s_defconfig

# Display
TARGET_SCREEN_DENSITY := 480

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib64/hw/fingerprint.msm8953.so|libshims_binder.so

# Inherit the proprietary files
-include vendor/oppo/r9s/BoardConfigVendor.mk
