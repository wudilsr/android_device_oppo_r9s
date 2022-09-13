#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/oppo/r9s

# inherit from Oppo common
-include device/oppo/common/BoardConfigCommon.mk

# Assertions
TARGET_OTA_ASSERT_DEVICE := r9s,R9s

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8953

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Audio
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_EXT_HDMI := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_SSR := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
#AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD  := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_READ_ADDR_FROM_PROP := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# GPU
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlyprintk androidboot.selinux=permissive ramoops.mem_address=0x8ff00000 ramoops.mem_size=0x100000 ramoops.record_size=0x20000 ramoops.dump_oops=0
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_OFFSET = 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := r9s_defconfig
TARGET_KERNEL_SOURCE := kernel/oppo/msm8953
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage Hardware
BOARD_HARDWARE_CLASS += \
    $(DEVICE_PATH)/lineagehw \
    hardware/lineage/lineagehw

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 58765843456
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# RIL
TARGET_RIL_VARIANT := caf

# Init
#TARGET_INIT_VENDOR_LIB := libinit_r9s
#TARGET_RECOVERY_DEVICE_MODULES := libinit_r9s
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shim
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib/libizat_core.so|libshims_get_process_name.so

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Telephony
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# TWRP
ifeq ($(WITH_TWRP),true)
include $(DEVICE_PATH)/twrp.mk
endif

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
include vendor/oppo/r9s/BoardConfigVendor.mk
