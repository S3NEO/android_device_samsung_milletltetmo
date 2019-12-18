# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# inherit from common millet
include device/samsung/millet-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := millet,milletltetmo

# Kernel
TARGET_KERNEL_CONFIG := lineage_milletltetmo_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8226
TARGET_LIBINIT_MSM8226_DEFINES_FILE := device/samsung/milletltetmo/init/init_millet.cpp

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# HIDL
DEVICE_MANIFEST_FILE += device/samsung/milletltetmo/manifest.xml

# inherit from the proprietary version
-include vendor/samsung/milletltetmo/BoardConfigVendor.mk
