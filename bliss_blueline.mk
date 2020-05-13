# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

BLISS_BUILDTYPE := OFFICIAL
BLISS_DEVELOPER := slothdabski

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/blueline/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 10 QQ2A.200501.001.B2 6352890 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:10/QQ2A.200501.001.B2/6352890:user/release-keys

$(call inherit-product-if-exists, vendor/google/blueline/blueline-vendor.mk)

$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
