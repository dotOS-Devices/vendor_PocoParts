VENDOR_PATH := vendor/PocoParts

# PocoParts
PRODUCT_SOONG_NAMESPACES += \
    vendor/PocoParts

# Device Settings
PRODUCT_PACKAGES += \
    PocoParts

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/parts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-parts.xml \
    $(VENDOR_PATH)/init/init.pocoparts.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.pocoparts.rc \
    $(VENDOR_PATH)/init/init.pocoparts.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.pocoparts.rc

PRODUCT_PRODUCT_PROPERTIES += \
    persist.lcd.hbm_mode=0 \
    persist.lcd.cabc_mode=1

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay

# Properties
TARGET_VENDOR_PROP += $(VENDOR_PATH)/vendor.prop

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy/vendor
TARGET_SEPOLICY_DIR := msmsteppe
