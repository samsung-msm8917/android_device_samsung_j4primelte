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

# Display
TARGET_SCREEN_DENSITY := 260

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USES_MKE2FS := true

# Kernel
TARGET_KERNEL_CONFIG := j4primelte_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2453520000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13260271616
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864 # 64 MB
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # 64 MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 106954752 # 102 MB
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8937

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/samsung/j4primelte/BoardConfigVendor.mk
