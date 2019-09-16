# Inherit mini common ZenX stuff
$(call inherit-product, vendor/zenx/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/zenx/config/telephony.mk)
