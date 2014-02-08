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
    device/jiayu/G3/prebuilt/root/init.rc:root/init.rc \
    device/jiayu/G3/prebuilt/root/init.usb.rc:root/init.usb.rc \
    device/jiayu/G3/prebuilt/root/advanced_meta_init.project.rc:root/advanced_meta_init.project.rc \
    device/jiayu/G3/prebuilt/root/advanced_meta_init.rc:root/advanced_meta_init.rc \
    device/jiayu/G3/prebuilt/root/factory_init.rc:root/factory_init.rc \
    device/jiayu/G3/prebuilt/root/init.aee.customer.usb.rc:root/init.aee.customer.usb.rc \
    device/jiayu/G3/prebuilt/root/init.goldfish.rc:root/init.goldfish.rc \
    device/jiayu/G3/prebuilt/root/init.no_ssd.usb.rc:root/init.no_ssd.rc \
    device/jiayu/G3/prebuilt/root/init.project.rc:root/init.project.rc \
    device/jiayu/G3/prebuilt/root/init.trace.usb.rc:root/init.trace.usb.rc \
    device/jiayu/G3/prebuilt/root/init.xlog.rc:root/init.xlog.rc \
    device/jiayu/G3/prebuilt/root/meta_init.project.rc:root/meta_init.project.rc \
    device/jiayu/G3/prebuilt/root/meta_init.rc:root/meta_init.rc \
    device/jiayu/G3/prebuilt/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/jiayu/G3/prebuilt/root/ueventd.rc:root/ueventd.rc \


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := G3
PRODUCT_DEVICE := G3
PRODUCT_BRAND := jiayu
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := JIAYU