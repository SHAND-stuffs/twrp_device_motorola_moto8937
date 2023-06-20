#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(USES_DEVICE_MOTOROLA_MOTO8937),true)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
