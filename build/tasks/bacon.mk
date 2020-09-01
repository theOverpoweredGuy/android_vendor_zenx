# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# ZenX-OS OTA update package

ifneq ($(BUILD_WITH_COLORS),0)
    include $(TOP_DIR)vendor/zenx/build/core/colors.mk
endif

ZENX_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ZENX_BUILD_VERSION).zip

.PHONY: otapackage zenx bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
zenx: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ZENX_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(ZENX_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ZENX_TARGET_PACKAGE).md5sum
	$(hide) ./vendor/zenx/tools/generate_ota_info.sh $(ZENX_TARGET_PACKAGE)
	@echo -e ""
	@echo -e ""
	@echo -e ""
	@echo -e ${CL_BLU}"███████╗███████╗███╗   ██╗██╗  ██╗      ██████╗ ███████╗"
	@echo -e ${CL_BLU}"╚══███╔╝██╔════╝████╗  ██║╚██╗██╔╝     ██╔═══██╗██╔════╝"
	@echo -e ${CL_BLU}"  ███╔╝ █████╗  ██╔██╗ ██║ ╚███╔╝█████╗██║   ██║███████╗"
	@echo -e ${CL_BLU}" ███╔╝  ██╔══╝  ██║╚██╗██║ ██╔██╗╚════╝██║   ██║╚════██║"
	@echo -e ${CL_BLU}"███████╗███████╗██║ ╚████║██╔╝ ██╗     ╚██████╔╝███████║"
	@echo -e ${CL_BLU}"╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝      ╚═════╝ ╚══════╝"
	@echo -e ""
	@echo -e ${CL_MAG}"======================================================================================================="
	@echo -e ${CL_RST}"Package: "$(ZENX_TARGET_PACKAGE)
	@echo -e ${CL_RST}"md5: `cat $(ZENX_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"
	@echo -e ${CL_RST}"size:`ls -lah $(ZENX_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ${CL_MAG}"======================================================================================================="

bacon: zenx
