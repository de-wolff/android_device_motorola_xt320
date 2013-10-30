LOCAL_PATH := $(call my-dir)
VENDOR := motorola
DEVICE := xt320

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base_telephony.mk)
$(call inherit-product-if-exists, vendor/qcom/proprietary/qcom-vendor.mk)
$(call inherit-product, device/$(VENDOR)/$(DEVICE)/device_xt320.mk)
$(call inherit-product-if-exists, vendor/$(VENDOR)/$(DEVICE)/xt320-vendor.mk)
$(call inherit-product, frameworks/base/data/sounds/OldAudio.mk)



# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/xt320/overlay

PRODUCT_PACKAGES += \
    libcamera \
    liblights \
    libgenlock \
    liboverlay \
    gralloc.msm7x27a \
    audio_policy.msm7x27a \
    audio_primary.msm7x27a \
    camera.msm7x27a \
    copybit.msm7x27a \
    lights.msm7x27a \
    gps.msm7x27a


#$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_xt320
PRODUCT_DEVICE := xt320
