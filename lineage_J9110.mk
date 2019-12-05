# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from J9110 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sony
PRODUCT_DEVICE := J9110
PRODUCT_MANUFACTURER := sony
PRODUCT_NAME := lineage_J9110
PRODUCT_MODEL := Xperia 1

PRODUCT_GMS_CLIENTID_BASE := android-sony
TARGET_VENDOR := sony
TARGET_VENDOR_PRODUCT_NAME := J9110
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="griffin_dsds-user 10 55.1.A.0.748 055001A000074800442216154 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Sony/J9110_EEA/J9110:10/55.1.A.0.748/055001A000074800442216154:user/release-keys
