# Camera
PRODUCT_PACKAGES := \
    Camera

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooter/shooter.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT="htc/htc_shooter/shooter:4.0.3/IML74K/560205.6:user/release-keys" PRIVATE_BUILD_DESC="2.95.651.6 CL560205 release-keys"

# Device naming
PRODUCT_DEVICE := shooter
PRODUCT_NAME := lineage_shooter
PRODUCT_BRAND := sprint
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D CDMA

# Bootanimation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooter
-include vendor/cm/config/common_versions.mk
