LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := liblocation_api
LOCAL_MODULE_PATH_32 := $(TARGET_OUT_VENDOR)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR)/lib64
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libgps.utils \
    libdl \
    liblog

LOCAL_SRC_FILES += \
    LocationAPI.cpp \
    LocationAPIClientBase.cpp

LOCAL_CFLAGS += \
     -fno-short-enums

LOCAL_HEADER_LIBRARIES := \
    libloc_pla_headers \
    libgps.utils_headers

LOCAL_CFLAGS += $(GNSS_CFLAGS)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblocation_api_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_HEADER_LIBRARY)
