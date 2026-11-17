$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PLATFORM := msm8998
DEVICE_PATH := device/sony/lilac
COMMON_PATH := device/sony/yoshino-common
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH) $(COMMON_PATH)
PRODUCT_PACKAGES += init.qcom.recovery.rc init.recovery.usb.rc
$(call inherit-product, $(COMMON_PATH)/device-common.mk)
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

PRODUCT_NAME := twrp_lilac
PRODUCT_DEVICE := lilac
PRODUCT_SHIPPING_API_LEVEL := 27
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8441
PRODUCT_MANUFACTURER := Sony
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lilac PRIVATE_BUILD_DESC="G8441-user 9 47.2.A.11.228 3311891731 release-keys"
BUILD_FINGERPRINT := Sony/G8441/G8441:9/47.2.A.11.228/3311891731:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.usb.pid_suffix=1F4 vendor.usb.rndis.func.name=gsi
