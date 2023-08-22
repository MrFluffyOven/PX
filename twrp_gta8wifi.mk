#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
Release name
# Release name
PRODUCT_RELEASE_NAME := gta8wifi

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_MODEL := SM-X200
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/device.mk)
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta8wifixx-user 11 RP1A.200720.012 X200XXS2CWD2 release-keys"

BUILD_FINGERPRINT := samsung/gta8wifixx/gta8wifi:11/RP1A.200720.012/X200XXS2CWD2:user/release-keys
