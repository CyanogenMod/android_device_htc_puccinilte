## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := puccinilte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/puccinilte/device_puccinilte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := puccinilte
PRODUCT_NAME := cm_puccinilte
PRODUCT_BRAND := htc
PRODUCT_MODEL := puccinilte
PRODUCT_MANUFACTURER := htc
