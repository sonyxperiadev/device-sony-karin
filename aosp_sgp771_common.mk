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

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/karin/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/sony/kitakami/device.mk)
$(call inherit-product, vendor/sony/karin/karin-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product-if-exists, prebuilts/chromium/webview_prebuilt.mk)
$(call inherit-product-if-exists, vendor/google/products/gms.mk)

PRODUCT_COPY_FILES += \
    device/sony/karin/rootdir/system/etc/BCM4356.hcd:system/etc/firmware/BCM43xx.hcd \
    device/sony/karin/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/sony/karin/rootdir/system/etc/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    device/sony/karin/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/karin/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/karin/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/karin/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0000.cfg:system/vendor/etc/touch_fusion_panel_id_0x0000.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0700.cfg:system/vendor/etc/touch_fusion_panel_id_0x0700.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0701.cfg:system/vendor/etc/touch_fusion_panel_id_0x0701.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0702.cfg:system/vendor/etc/touch_fusion_panel_id_0x0702.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0704.cfg:system/vendor/etc/touch_fusion_panel_id_0x0704.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0705.cfg:system/vendor/etc/touch_fusion_panel_id_0x0705.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0706.cfg:system/vendor/etc/touch_fusion_panel_id_0x0706.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0708.cfg:system/vendor/etc/touch_fusion_panel_id_0x0708.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0709.cfg:system/vendor/etc/touch_fusion_panel_id_0x0709.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070A.cfg:system/vendor/etc/touch_fusion_panel_id_0x070A.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070C.cfg:system/vendor/etc/touch_fusion_panel_id_0x070C.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070D.cfg:system/vendor/etc/touch_fusion_panel_id_0x070D.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0710.cfg:system/vendor/etc/touch_fusion_panel_id_0x0710.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0717.cfg:system/vendor/etc/touch_fusion_panel_id_0x0717.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x071B.cfg:system/vendor/etc/touch_fusion_panel_id_0x071B.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x071F.cfg:system/vendor/etc/touch_fusion_panel_id_0x071F.cfg

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.usb.pid_suffix=1CF
