#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/sheng/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/sheng

# Display
TARGET_SCREEN_DENSITY := 400

# Kernel
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    cs35l43.ko \
    fpc1552.ko \
    nt36532_touch.ko \
    nanosic_platform.ko \
    wl2868c.ko \
    wl2866d.ko \
    virtual_fg.ko \
    xm_battmngr_init.ko \
    xm_charger.ko \
    xm_utils.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += \
    nt36532_touch.ko

BOOT_KERNEL_MODULES += \
    nt36532_touch.ko

# OTA assert
TARGET_OTA_ASSERT_DEVICE := sheng

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
