#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j4primelte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device Identifier. This must come after all inclusions.
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := j4primelte
PRODUCT_MANUFACTURER := Samsung
PRODUCT_NAME := lineage_j4primelte
PRODUCT_MODEL := Galaxy J4+

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j4primeltedx-user 9 PPR1.180610.011 J415FXXU2BSDM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/j4primeltedx/j4primelte:9/PPR1.180610.011/J415FXXU2BSDM:user/release-keys"
