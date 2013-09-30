## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := xt320

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/xt320/device_xt320.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt320
PRODUCT_NAME := cm_xt320
PRODUCT_BRAND := motorola
PRODUCT_MODEL := xt320
PRODUCT_MANUFACTURER := motorola
