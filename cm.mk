# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := shooter

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooter/device_shooter.mk)

# Device naming
PRODUCT_DEVICE := shooter
PRODUCT_NAME := cm_shooter
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Evo 3D
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT=sprint/htc_shooter/shooter:4.0.3/IML74K/130920.2:user/release-keys PRIVATE_BUILD_DESC="2.08.651.2 CL130920 release-keys"
