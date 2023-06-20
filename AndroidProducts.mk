#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_moto8937.mk \
    $(LOCAL_DIR)/twrp_moto8937_4_19.mk

COMMON_LUNCH_CHOICES := \
    twrp_moto8937-user \
    twrp_moto8937-userdebug \
    twrp_moto8937-eng \
    twrp_moto8937_4_19-user \
    twrp_moto8937_4_19-userdebug \
    twrp_moto8937_4_19-eng
