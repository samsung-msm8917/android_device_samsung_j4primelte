#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j4primelte
TARGET_VENDOR := samsung

# Assert
TARGET_OTA_ASSERT_DEVICE := j4primelte, j4primeltedx

# Inherit from the proprietary version
-include vendor/samsung/j4primelte/BoardConfigVendor.mk
