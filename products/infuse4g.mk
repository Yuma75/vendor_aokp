# Inherit AOSP device configuration for infuse4g.
$(call inherit-product, device/samsung/infuse4g/full_infuse4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# infuse4g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/infuse4g

# Setup device specific product configuration.
PRODUCT_NAME := aokp_infuse4g
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := infuse4g
PRODUCT_MODEL := SGH-I997
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=SGH-I977 BUILD_ID=SGH-I977 BUILD_FINGERPRINT=samsung/SGH-I997/SGH-I997:4.1.1/JRO03C/UCLB3:user/release-keys PRIVATE_BUILD_DESC="SGH-I997-user JRO03C 4.1.1 UCLB3 release-keys"

# Infuse4g specific packages
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
