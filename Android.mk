ifneq ($(filter LS_4008,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

# Dont know if this works or not
#LOCAL_CFLAGS += -Wl,--strip-all, -Wl,--gc-sections
