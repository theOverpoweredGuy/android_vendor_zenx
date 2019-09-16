# Versioning System

ifndef ZENX_BUILD_TYPE
    ZENX_BUILD_TYPE := Unofficial
endif

# Only include ZenX OTA for official builds
ifeq ($(filter-out Official,$(ZENX_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

TARGET_PRODUCT_SHORT := $(subst zenx_,,$(ZENX_BUILD_TYPE))

# Set all versions
ZENX_VERSION = 3.0
ZENX_BUILD_DATE := $(shell date -u +%d-%m-%Y)
ZENX_BUILD_VERSION := ZenX-OS-v$(ZENX_VERSION)-$(shell date -u +%Y%m%d)-$(ZENX_BUILD)-$(ZENX_BUILD_TYPE)
ZENX_FINGERPRINT := ZenX-OS/v$(ZENX_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)
