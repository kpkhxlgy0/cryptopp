LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := cch_cryptopp_static
LOCAL_MODULE_FILENAME := cryptopp
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libcryptopp.a
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../include
include $(PREBUILT_STATIC_LIBRARY)
