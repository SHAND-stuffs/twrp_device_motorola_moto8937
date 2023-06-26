#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_moto8937_n.mk \
    $(LOCAL_DIR)/twrp_moto8937_n_4_19.mk \
    $(LOCAL_DIR)/twrp_moto8937_o.mk \
    $(LOCAL_DIR)/twrp_moto8937_o_4_19.mk

COMMON_LUNCH_CHOICES := \
    twrp_moto8937_n-user \
    twrp_moto8937_n-userdebug \
    twrp_moto8937_n-eng \
    twrp_moto8937_n_4_19-user \
    twrp_moto8937_n_4_19-userdebug \
    twrp_moto8937_n_4_19-eng \
    twrp_moto8937_o-user \
    twrp_moto8937_o-userdebug \
    twrp_moto8937_o-eng \
    twrp_moto8937_o_4_19-user \
    twrp_moto8937_o_4_19-userdebug \
    twrp_moto8937_o_4_19-eng
