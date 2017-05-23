$(call inherit-product, device/samsung/jfltevzw/aosp_jfltevzw.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common du stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)
# Inherit from jfltevzw device
#$(call inherit-product, device/samsung/jfltevzw/device.mk)

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Set those variables here to overwrite the inherited values.

# Qualcomm
PRODUCT_PACKAGES += \
    libcnefeatureconfig

PRODUCT_NAME := du_jfltevzw
PRODUCT_DEVICE := jfltevzw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I545

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_BUILD_PROP_OVERRIDES += \
  BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:5.0.1/LRX22C/I545VRSGPL1:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltevzw-user 5.0.1 LRX22C I545VRSGPL1 release-keys"


$(call inherit-product-if-exists, vendor/samsung/jf-common/jf-common-vendor.mk)
