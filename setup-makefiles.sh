#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=A57
export DEVICE_COMMON=msm8937-common
export VENDOR=oppo

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
