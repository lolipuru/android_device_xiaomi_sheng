#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sheng/sheng-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml

# IFAAService
PRODUCT_PACKAGES += \
    IFAAService

# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlaySheng \
    NfcOverlaySheng \
    SettingsOverlaySheng \
    SettingsProviderResSheng \
    SystemUIOverlaySheng \
    WifiResSheng

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml

# Peripheral Manager
PRODUCT_PACKAGES += \
    XiaomiPeripheralManager

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
