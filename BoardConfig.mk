#
# Copyright (C) 2020 The LineageOS Project
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

-include device/brcm/rpi-common/BoardConfigCommon.mk

DEVICE_PATH := device/brcm/rpi3

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_CONFIG := lineageos_rpi3_defconfig
TARGET_KERNEL_SOURCE := kernel/brcm/rpi-4.19

# Graphics
BOARD_GPU_DRIVERS := vc4
BOARD_USES_MINIGBM := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_SCREEN_DENSITY := 160

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Memory
MALLOC_SVELTE := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
