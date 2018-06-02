ifneq ($(filter shooter shootervm,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
