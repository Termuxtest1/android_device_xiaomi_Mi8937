#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from Mi8937 device
$(call inherit-product, device/xiaomi/Mi8937/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

WITH_GMS := false

MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := Termuxtest1 

TARGET_ENABLE_BLUR := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi8937_4_19
PRODUCT_NAME := aosp_Mi8937_4_19
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Add Google Contacts, Dialer & Messaging 
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys"

PRODUCT_SYSTEM_PROPERTIES += ro.build.fingerprint=$(BUILD_FINGERPRINT)
