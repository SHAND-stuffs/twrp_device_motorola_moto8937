#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := moto8937_o

# Crypto
MITHORIUM_KEYMASTER_VERSION := 3.0

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from moto8937 device
$(call inherit-product, device/motorola/moto8937/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
BOARD_VENDOR := Motorola
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := MSM8937 Oreo
PRODUCT_MANUFACTURER := Motorola
TARGET_VENDOR := Motorola
