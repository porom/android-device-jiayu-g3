## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := G3

## Device identifier. This must come after all inclusions


TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, device/jiayu/G3/G3.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM9 stuff.
#$(call inherit-product-if-exists, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product-if-exists, vendor/cm/config/gsm.mk)

PRODUCT_DEVICE := G3
PRODUCT_NAME := G3
PRODUCT_BRAND := jiayu
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := JIAYU

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

CM_BUILDTYPE := EXPERIMENTAL
CM_EXTRAVERSION := leopesto