#
# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := device/samsung/on7xelte
TARGET_OTA_ASSERT_DEVICE := on7xelte,on7xeltedd,on7xeltekl,on7xeltekk,on7xelteks,on7xelteub,on7xeltezt

# Include headers
TARGET_SPECIFIC_HEADER_PATH := device/samsung/exynos7870-common/include

TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/bin/mediaserver=24 \
    /system/vendor/bin/hw/rild=27

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos7870-common/sepolicy

# Ignore SELinux neverallows
SELINUX_IGNORE_NEVERALLOWS := true

# CCACHE
export USE_CCACHE=1

# DEPENDENCIES
export ALLOW_MISSING_DEPENDENCIES=true

#Just another command
export LC_ALL=C

#Java
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Inherit splitted common board configs
-include $(LOCAL_PATH)/board/*.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/on7xelte/sepolicy

# We modify several neverallows, so let the build proceed
ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

# Properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/system.prop

# Inherit from the proprietary version
-include vendor/samsung/on7xelte/BoardConfigVendor.mk
