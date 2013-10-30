
LOCAL_PATH := $(call my-dir)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/xt320/xt320-vendor.mk)
$(call inherit-product-if-exists, vendor/qcom/proprietary/qcom-vendor.mk)

# still need make -j4 copybit.msm7x27a gralloc.msm7x27a hwcomposer.msm7x27a lights.msm7x27a libgenlock

PRODUCT_PACKAGES += \
    camera.$(TARGET_BOARD_PLATFORM) \
    libcamera \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    audio_policy.msm7x27a \
    audio_primary.msm7x27a \
    lights.msm7x27a \
    copybit.msm7x27a \
    gps.msm7x27a

DEVICE_PACKAGE_OVERLAYS += device/motorola/xt320/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := xt320
PRODUCT_DEVICE := xt320

