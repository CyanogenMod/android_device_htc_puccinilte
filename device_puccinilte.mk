$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/puccinilte/puccinilte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/puccinilte/overlay

LOCAL_PATH := device/htc/puccinilte
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    device/htc/puccinilte/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/puccinilte/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/puccinilte/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/puccinilte/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/puccinilte/recovery/sbin/tty:recovery/root/sbin/tty \
    device/htc/puccinilte/recovery/sbin/power_test:recovery/root/sbin/power_test  \
    device/htc/puccinilte/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/htc/puccinilte/recovery/system/bin/linker:recovery/root/system/bin/linker \
    device/htc/puccinilte/recovery/system/bin/ntrig_touchd:recovery/root/system/bin/ntrig_touchd \
    device/htc/puccinilte/recovery/system/lib/libc.so:recovery/root/system/lib/libc.so \
    device/htc/puccinilte/recovery/system/lib/libcutils.so:recovery/root/system/lib/libcutils.so \
    device/htc/puccinilte/recovery/system/lib/liblog.so:recovery/root/system/lib/liblog.so \
    device/htc/puccinilte/recovery/system/lib/libm.so:recovery/root/system/lib/libm.so \
    device/htc/puccinilte/recovery/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    device/htc/puccinilte/recovery/system/lib/libutils.so:recovery/root/system/lib/libutils.so \
    device/htc/puccinilte/recovery/system/lib/libz.so:recovery/root/system/lib/libz.so

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_puccinilte
PRODUCT_DEVICE := puccinilte
