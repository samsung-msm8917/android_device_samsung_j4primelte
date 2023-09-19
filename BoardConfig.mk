#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j4primelte
TARGET_VENDOR := samsung

# Inherit from msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := j4primelte, j4primeltedx

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8937

# Inherit from the proprietary version
-include vendor/samsung/j4primelte/BoardConfigVendor.mk
