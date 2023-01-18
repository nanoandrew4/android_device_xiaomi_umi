#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/umi

TARGET_HAS_UDFPS := true

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Assert
TARGET_OTA_ASSERT_DEVICE := umi

# Audio
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
BOARD_SUPPORTS_OPENSOURCE_STHAL := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Build
BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_umi
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_umi

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/vintf/device_framework_matrix.xml \
    $(DEVICE_PATH)/vintf/xiaomi_framework_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml

DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/vintf/manifest.xml \
    $(DEVICE_PATH)/vintf/xiaomi_manifest.xml

DEVICE_MATRIX_FILE += \
    $(DEVICE_PATH)/vintf/compatibility_matrix.xml

# Kernel
TARGET_KERNEL_CONFIG := umi_defconfig

# Partitions
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE := 209715200
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 209715200
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 209715200
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 209715200
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 209715200

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 150

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/umi/BoardConfigVendor.mk