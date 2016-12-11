# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Device paths
COMMON_PATH := device/sony/common
PLATFORM_COMMON_PATH := device/sony/kitakami
BOARD_COMMON_PATH := device/sony/karin_windy
DEVICE_PATH := device/sony/karin

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.karin \
    init.karin \
    ueventd.karin

# Lights
PRODUCT_PACKAGES += \
    lights.karin

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.karin

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.karin

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# AD7146 - PAD controller
PRODUCT_PROPERTY_OVERRIDES += \
    service.pad1.control.start=pad1_on \
    service.pad2.control.start=pad2_on

# Inherit from those products. Most specific first.
$(call inherit-product, $(BOARD_COMMON_PATH)/aosp_sgp7xx_common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_sgp771
PRODUCT_DEVICE := karin
PRODUCT_MODEL := Xperia Z4 Tablet (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
