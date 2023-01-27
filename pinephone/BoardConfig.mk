# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2019 The Android Open-Source Project

include device/glodroid/common/board-common.mk

BOARD_VENDOR_SEPOLICY_DIRS += device/glodroid/pinephone/sepolicy/vendor

# Apply mesa3d patches to reduce CPU load during frame processing.
BOARD_MESA3D_PATCHES_DIRS += device/glodroid/patches/vendor/mesa3d_slowgpu

BOARD_KERNEL_SRC_DIR := glodroid/kernel/common-android13-5.15-lts
KERNEL_DEFCONFIG := device/glodroid/pinephone/kernel.defconfig
KERNEL_FRAGMENTS := device/glodroid/platform/common/sunxi/a64_overlay.config

BOARD_KERNEL_PATCHES_DIRS := \
    device/glodroid/pinephone/patches-kernel/megi-audio-5.15     \
    device/glodroid/pinephone/patches-kernel/megi-bt-5.15        \
    device/glodroid/pinephone/patches-kernel/megi-drm-5.15       \
    device/glodroid/pinephone/patches-kernel/megi-fixes-5.15     \
    device/glodroid/pinephone/patches-kernel/megi-pp-5.15        \
    device/glodroid/pinephone/patches-kernel/megi-samuel-5.15    \
    device/glodroid/pinephone/patches-kernel/megi-wifi-5.15      \
    device/glodroid/pinephone/patches-kernel/megi-anx-5.15       \
    device/glodroid/pinephone/patches-kernel/megi-axp-5.15       \
    device/glodroid/pinephone/patches-kernel/megi-cam-5.15       \
    device/glodroid/pinephone/patches-kernel/megi-err-5.15       \
    device/glodroid/pinephone/patches-kernel/megi-modem-5.15     \
    device/glodroid/pinephone/patches-kernel/megi-speed-5.15     \
    device/glodroid/pinephone/patches-kernel/glodroid-drm-5.15   \
    device/glodroid/pinephone/patches-kernel/glodroid-other-5.15 \
