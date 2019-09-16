# Inherit full common ZenX stuff
$(call inherit-product, vendor/zenx/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include ZenX LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/zenx/overlay/dictionaries

$(call inherit-product, vendor/zenx/config/telephony.mk)
