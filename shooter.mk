#
# Copyright (C) 2011 The CyanogenMod Project
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
#

COMMON_PATH := device/htc/shooter

DEVICE_PACKAGE_OVERLAYS += device/htc/shooter-common/overlay-cdma

# common shooter configs
$(call inherit-product, device/htc/shooter-common/shooter-common.mk)

# ramdisk stuffs
PRODUCT_PACKAGES += \
    init.shooter.rc \
    init.shooter.usb.rc \
    ueventd.shooter.rc \
    fstab.shooter

## recovery and custom charging
PRODUCT_PACKAGES += \
    init.recovery.shooter.rc \
    choice_fn \
    detect_key \
    htcbatt \
    offmode_charging \
    power_test \
    twrp.fstab

## dsp Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    $(COMMON_PATH)/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    $(COMMON_PATH)/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    $(COMMON_PATH)/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    $(COMMON_PATH)/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    $(COMMON_PATH)/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    $(COMMON_PATH)/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    $(COMMON_PATH)/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    $(COMMON_PATH)/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    $(COMMON_PATH)/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    $(COMMON_PATH)/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    $(COMMON_PATH)/dsp/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
    $(COMMON_PATH)/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    $(COMMON_PATH)/dsp/IOTable.txt:system/etc/IOTable.txt \
    $(COMMON_PATH)/dsp/IOTable_NEL.txt:system/etc/IOTable_NEL.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_HP_NEL.txt:system/etc/soundimage/Sound_Phone_Original_HP_NEL.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_NEL.txt:system/etc/soundimage/Sound_Phone_Original_NEL.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_REC_Voda.txt:system/etc/soundimage/Sound_Phone_Original_REC_Voda.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_SPK_NEL.txt:system/etc/soundimage/Sound_Phone_Original_SPK_NEL.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_SPK_Voda.txt:system/etc/soundimage/Sound_Phone_Original_SPK_Voda.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    $(COMMON_PATH)/dsp/soundimage/Sound_Phone_Original_WB.txt:system/etc/soundimage/Sound_Phone_Original_WB.txt \
    $(COMMON_PATH)/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    $(COMMON_PATH)/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    $(COMMON_PATH)/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    $(COMMON_PATH)/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    $(COMMON_PATH)/keylayout/shooter-keypad.kl:system/usr/keylayout/shooter-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keychars/shooter-keypad.kcm.bin:system/usr/keychars/shooter-keypad.kcm \
    $(COMMON_PATH)/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm

# idc
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/idc/shooter-keypad.idc:system/usr/idc/shooter-keypad.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb

# Adreno Drivers
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(COMMON_PATH)/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(COMMON_PATH)/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(COMMON_PATH)/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(COMMON_PATH)/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# GPS
PRODUCT_PACKAGES += \
    gps.shooter

PRODUCT_PACKAGES += \
    Torch

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# WiMAX support
PRODUCT_PACKAGES += \
    CMWimaxSettings

# call the proprietary setup
$(call inherit-product, vendor/htc/shooter/shooter-vendor.mk)
