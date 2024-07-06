# Release name
PRODUCT_RELEASE_NAME := LS_4008

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := LS_4008
PRODUCT_NAME := omni_LS_4008
PRODUCT_BRAND := LYF
PRODUCT_MANUFACTURER := FortuneShip
