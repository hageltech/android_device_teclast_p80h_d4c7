LOCAL_PATH := device/teclast/p80h_d4c7

ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/ueventd \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_p80h_d4c7
