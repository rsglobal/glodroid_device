# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2019 The Android Open-Source Project

BC_PATH := $(patsubst $(CURDIR)/%,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

include glodroid/configuration/common/board-common.mk

BOARD_MESA3D_GALLIUM_DRIVERS := panfrost

BOARD_KERNEL_CMDLINE += earlyprintk console=ttyS2,1500000n8 printk.devkmsg=on printk.time=1

BOARD_VENDOR_SEPOLICY_DIRS += $(BC_PATH)/sepolicy/vendor

BOARD_LIBCAMERA_IPAS := rkisp1
BOARD_LIBCAMERA_PIPELINES := rkisp1

KERNEL_FRAGMENTS := $(BC_PATH)/kernel.config
KERNEL_DEFCONFIG := $(BC_PATH)/pinephone_pro_defconfig

BOARD_KERNEL_SRC_DIR := glodroid/kernel/common-android14-6.1
BOARD_KERNEL_PATCHES_DIRS := \
	$(BC_PATH)/patches-kernel/glodroid-6.1 \
	$(BC_PATH)/patches-kernel/megi-af8133j-6.1 \
	$(BC_PATH)/patches-kernel/megi-anx-6.1 \
	$(BC_PATH)/patches-kernel/megi-assorted-6.1 \
	$(BC_PATH)/patches-kernel/megi-axp-6.1 \
	$(BC_PATH)/patches-kernel/megi-bt-6.1 \
	$(BC_PATH)/patches-kernel/megi-ppp-drivers-6.1 \
	$(BC_PATH)/patches-kernel/megi-ppp-dt-6.1 \
	$(BC_PATH)/patches-kernel/megi-wifi-6.1 \
