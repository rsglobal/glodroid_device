# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2020 Roman Stratiienko (r.stratiienko@gmail.com)

$(call inherit-product, device/glodroid/common/device-common.mk)

# Firmware
PRODUCT_COPY_FILES += \
    glodroid/kernel-firmware/armbian/rtlwifi/rtl8723bs_nic.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rtlwifi/rtl8723bs_nic.bin \
    glodroid/kernel-firmware/armbian/rtlwifi/rtl8723bs_wowlan.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rtlwifi/rtl8723bs_wowlan.bin \
    glodroid/kernel-firmware/armbian/rtlwifi/rtl8723bs_ap_wowlan.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rtlwifi/rtl8723bs_ap_wowlan.bin \

PRODUCT_COPY_FILES += \
    device/glodroid/opi_plus2e/audio.opi_plus2e.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio.opi_prime.xml \

# Checked by android.opengl.cts.OpenGlEsVersionTest#testOpenGlEsVersion. Required to run correct set of dEQP tests.
# 131072 == 0x00020000 == GLES v2.0
PRODUCT_VENDOR_PROPERTIES += \
    ro.opengles.version=131072
