# Copyright (C) 2022 Project-Xtended
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

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

PRODUCT_PACKAGE_OVERLAYS += vendor/xtras/overlay/common
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/xtras/overlay/common

ifeq ($(EXTRA_UDFPS_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    UdfpsResources
endif

PRODUCT_COPY_FILES += \
    vendor/xtras/prebuilt/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2017.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2017.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2018.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2018.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2019.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2019.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2019_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2019_midyear.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2020.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2020.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2020_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2020_midyear.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2021.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2021.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2021_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2021_midyear.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2022.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2022.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/pixel_experience_2022_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2022_midyear.xml \
    vendor/xtras/prebuilt/product/etc/sysconfig/wellbeing.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/wellbeing.xml \
    
# Bootanimation
include vendor/xtras/prebuilt/bootanimation/bootanimation.mk

# Copy fonts to system
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/xtras/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Includes fonts
include vendor/xtras/fonts/fonts.mk

# Icon shapes
PRODUCT_PACKAGES += \
    IconShapeCylinderOverlay \
    IconShapeHeartOverlay \
    IconShapeHexagonOverlay \
    IconShapeLeafOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedHexagonOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay

# Navbar
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden

# Prebuilt packages
PRODUCT_PACKAGES += \
    ViaBrowser
    
# Statusbar Icons
PRODUCT_PACKAGES += \
    StrokeSignalOverlay \
    SneakySignalOverlay \
    XperiaSignalOverlay \
    ZigZagSignalOverlay \
    WavySignalOverlay \
    RoundSignalOverlay \
    InsideSignalOverlay \
    BarsSignalOverlay

# Themes
PRODUCT_PACKAGES += \
    UnmonetThemeAndroidOverlay \
    UnmonetThemeSettingsOverlay \
    NexodusThemeAndroidOverlay \
    NexodusThemeSettingsOverlay \
    NexodusThemeSystemUIOverlay \
    ProjectOptronicThemeAndroidOverlay \
    ProjectOptronicThemeSettingsOverlay \
    ProjectOptronicThemeSystemUIOverlay \
    PacleggersThemeAndroidOverlay \
    PacleggersThemeSettingsOverlay \
    PacleggersThemeSystemUIOverlay \
    SolarizedThemeAndroidOverlay \
    SolarizedThemeSettingsOverlay \
    SolarizedThemeSystemUIOverlay \
    ShishuIllusionsThemeAndroidOverlay \
    ShishuIllusionsThemeSettingsOverlay \
    ShishuIllusionsThemeSystemUIOverlay \
    ShishuImmensityThemeAndroidOverlay \
    ShishuImmensityThemeSettingsOverlay \
    ShishuImmensityThemeSystemUIOverlay \
    ShishuThemeAndroidOverlay \
    ShishuThemeSettingsOverlay \
    ShishuThemeSystemUIOverlay \
    ShishuNightsThemeAndroidOverlay \
    ShishuNightsThemeSettingsOverlay \
    ShishuNightsThemeSystemUIOverlay \
    ShishuAmalgamationThemeAndroidOverlay \
    ShishuAmalgamationThemeSettingsOverlay \
    ShishuAmalgamationThemeSystemUIOverlay \
    BakedGreenSystemOverlay \
    BakedGreenSystemUIOverlay \
    ChocoXSystemOverlay \
    ChocoXSystemUIOverlay \
    DarkGreySystemOverlay \
    DarkGreySystemUIOverlay \
    MaterialOceanSystemOverlay \
    MaterialOceanSystemUIOverlay \
    PitchBlackSystemOverlay \
    PitchBlackSystemUIOverlay \
    SolarizedDarkSystemOverlay \
    SolarizedDarkSystemUIOverlay \
    XtendedClearSystemOverlay \
    XtendedClearSystemUIOverlay

# Wi-Fi Icons
PRODUCT_PACKAGES += \
    StrokeWiFiOverlay \
    SneakyWiFiOverlay \
    XperiaWiFiOverlay \
    ZigZagWiFiOverlay \
    WavyWiFiOverlay \
    RoundWiFiOverlay \
    InsideWiFiOverlay \
    BarsWiFiOverlay
