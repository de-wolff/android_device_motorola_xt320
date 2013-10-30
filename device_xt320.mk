LOCAL_PATH := $(call my-dir)
VENDOR := motorola
DEVICE := xt320

$(call inherit-product, vendor/cm/config/common.mk)

$(call inherit-productt-if-exists, device/ldpi-common/ldpi.mk)
$(call inherit-product-if-exists, vendor/$(VENDOR)/$(DEVICE)/xt320-vendor.mk)
$(call inherit-product-if-exists, vendor/qcom/proprietary/qcom-vendor.mk)

$(call inherit-product, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product, frameworks/base/data/sounds/NewAudio.mk)

PRODUCT_PACKAGES += \


DEVICE_PACKAGE_OVERLAYS += device/$(VENDOR)/$(DEVICE)/overlay

LOCAL_PATH := $(call my-dir)

# $(call inherit-product, build/target/product/full.mk)

$(call inherit-product-if-exists, vendor/$(VENDOR)/$(DEVICE)/xt320-vendor.mk)

$(call inherit-product, build/target/product/core.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)


PRODUCT_COPY_FILES += \
	device/$(VENDOR)/$(DEVICE)/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/$(VENDOR)/$(DEVICE)/root/init.qcom.rc:root/init.qcom.rc \
	device/$(VENDOR)/$(DEVICE)/root/init.qcom.sh:root/init.qcom.sh \
	device/$(VENDOR)/$(DEVICE)/fstab:system/etc/fstab \

PRODUCT_COPY_FILES += \
    device/$(VENDOR)/$(DEVICE)/prebuilt/etc/firmware/bt/brcm/broadcom_bt_fw.hcd:system/etc/firmware/bt/brcm/broadcom_bt_fw.hcd \
    device/$(VENDOR)/$(DEVICE)/prebuilt/usr/idc/sitronix_ts.idc:system/usr/idc/sitronix_ts.idc \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=180dpi \


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_xt320
PRODUCT_DEVICE := xt320
PRODUCT_BRAND := motorola

