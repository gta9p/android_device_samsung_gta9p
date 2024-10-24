#
# Copyright (C) 2023 The LineageOS Project
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
#

DEVICE_PATH := device/samsung/gta9p

include device/samsung/sm6375-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/lineage-gta9p_defconfig
BOARD_NAME                  := SRPVC22C004

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))

# Recovery
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 450

# OTA assert
TARGET_OTA_ASSERT_DEVICE := gta9p

# Security patch
VENDOR_SECURITY_PATCH := 2023-08-01

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
