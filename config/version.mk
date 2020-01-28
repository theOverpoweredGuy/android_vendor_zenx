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
ZENX_VERSION = 3.1
ZENX_BUILD_DATE := $(shell date -u +%d-%m-%Y)
<<<<<<< HEAD
ZENX_BUILD_VERSION := ZenX-OS-v$(ZENX_VERSION)-$(shell date -u +%Y%m%d)-$(ZENX_BUILD)-$(ZENX_BUILD_TYPE)
ZENX_FINGERPRINT := ZenX-OS/v$(ZENX_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)

=======
ZENX_BUILD_VERSION := Zenx-OS-v$(ZENX_VERSION)-$(shell date -u +%Y%m%d)-$(ZENX_BUILD)-$(ZENX_BUILD_TYPE)
ZENX_FINGERPRINT := Zenx-OS/v$(ZENX_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)
=======
HAVOC_VERSION = 3.1
HAVOC_BUILD_DATE := $(shell date -u +%d-%m-%Y)
HAVOC_FINGERPRINT := Havoc-OS/v$(HAVOC_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)
>>>>>>> 4e3a191d... vendor: Havoc 3.1

ifeq ($(WITH_GAPPS),true)
    HAVOC_BUILD_VERSION := Havoc-OS-v$(HAVOC_VERSION)-$(shell date -u +%Y%m%d)-$(HAVOC_BUILD)-$(HAVOC_BUILD_TYPE)-GApps
else
    HAVOC_BUILD_VERSION := Havoc-OS-v$(HAVOC_VERSION)-$(shell date -u +%Y%m%d)-$(HAVOC_BUILD)-$(HAVOC_BUILD_TYPE)
endif
>>>>>>> 2083d4d6... vendor: Prepare for GApps
