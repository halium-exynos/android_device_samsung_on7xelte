#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter on7xelte on7xeltedd,$(TARGET_DEVICE)),)

$(shell mkdir -p $(OUT_DIR)/target/product/$(TARGET_DEVICE)/obj/KERNEL_OBJ/init)
$(shell cp $(TARGET_KERNEL_SOURCE)/init/vmm.elf $(OUT_DIR)/target/product/$(TARGET_DEVICE)/obj/KERNEL_OBJ/init/vmm.elf)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

endif
