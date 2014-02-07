#LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)

#ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file

#-include vendor/jiayu/G3/AndroidBoardVendor.mk
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),G3)
include $(all-subdir-makefiles)
endif