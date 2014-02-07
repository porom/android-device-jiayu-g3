$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/jiayu/G3/G3-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/jiayu/G3/overlay

LOCAL_PATH := device/Jiayu/G3

ifneq ($(TARGET_PREBUILT_KERNEL),)
	PRODUCT_COPY_FILES += \
		device/jiayu/G3/kernel:kernel
endif

PRODUCT_COPY_FILES += \
    device/jiayu/G3/prebuilt/root/init.G3.rc:root/init.G3.rc \
    device/jiayu/G3/prebuilt/root/init.G3.usb.rc:root/init.G3.usb.rc \
    device/jiayu/G3/prebuilt/root/ueventd.G3.rc:root/ueventd.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := G3
PRODUCT_DEVICE := G3
PRODUCT_BRAND := jiayu
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := JIAYU