# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_tiffany
PRODUCT_DEVICE := tiffany
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5X
PRODUCT_MANUFACTURER := Xiaomi

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="Xiaomi/tiffany/tiffany:8.1.0/OPM1.171019.026/V10.0.6.0.OEHCNFH:user/release-keys" \
	PRIVATE_BUILD_DESC="tiffany-user 8.1.0 OPM1.171019.026 V10.0.6.0.OEHCNFH release-keys"
    
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    sys.usb.controller=a600000.dwc3 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    sys.usb.rndis.func.name=gsi \
    sys.usb.rmnet.func.name=gsi

TARGET_VENDOR_PRODUCT_NAME := tiffany
TARGET_VENDOR_DEVICE_NAME := tiffany
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=tiffany PRODUCT_NAME=tiffany