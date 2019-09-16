# Inherit common ZenX stuff
$(call inherit-product, vendor/zenx/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
