# Copyright (C) 2019 The Android Open Source Project
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

$(call inherit-product, device/glodroid/opi_plus2e/device.mk)

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := false

PRODUCT_BOARD_PLATFORM := sunxi
PRODUCT_NAME := opi_plus2e
PRODUCT_DEVICE := opi_plus2e
PRODUCT_BRAND := OrangePI
PRODUCT_MODEL := opi_plus2e
PRODUCT_MANUFACTURER := xunlong
PRODUCT_HAS_EMMC := true

GD_LOWRAM_CONFIG := true
GD_NO_DEFAULT_BLUETOOTH := true

CRUST_FIRMWARE_DEFCONFIG := orangepi_plus2e_defconfig

UBOOT_DEFCONFIG  := orangepi_plus2e_defconfig
KERNEL_SRC       := glodroid/kernel/stable
KERNEL_DEFCONFIG := $(KERNEL_SRC)/arch/arm/configs/sunxi_defconfig
KERNEL_FRAGMENTS := \
    device/glodroid/platform/common/sunxi/sunxi-common.config \

KERNEL_DTB_FILE := sun8i-h3-orangepi-plus2e.dtb
