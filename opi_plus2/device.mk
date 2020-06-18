# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2020 Roman Stratiienko (r.stratiienko@gmail.com)

$(call inherit-product, device/glodroid/common/device-common.mk)
$(call inherit-product, device/glodroid/common/device-common-sunxi.mk)
$(call inherit-product, device/glodroid/common/bluetooth/no-bluetooth.mk)

PRODUCT_COPY_FILES += \
    device/glodroid/plus2e/audio.plus2e.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio.plus2e.xml \
