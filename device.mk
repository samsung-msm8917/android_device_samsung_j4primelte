#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/B13QL_s5k3l6xx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/B13QL_s5k3l6xx_module_info.xml \
    $(LOCAL_PATH)/configs/camera/Q05QL_s5k5e9yx_front_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q05QL_s5k5e9yx_front_module_info.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l6xx_chromatix_j4primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l6xx_chromatix_j4primelte.xml \
    $(LOCAL_PATH)/configs/camera/sdm450_camera_j4primelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j4primelte.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from proprietary files
$(call inherit-product, vendor/samsung/j4primelte/j4primelte-vendor.mk)
