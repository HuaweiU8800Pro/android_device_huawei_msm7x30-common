LOCAL_PATH := $(call my-dir)
# Hack for build
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libhwrpc_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libhwrpc_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
