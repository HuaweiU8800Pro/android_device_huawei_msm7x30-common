# Copyright (C) 2012 The ShenDuOS Project
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

DEVICE_PACKAGE_OVERLAYS += device/huawei/msm7x30-common/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Video
PRODUCT_PACKAGES += \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libmm-omxcore \
    libmmcamera \
    libOmxCore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxQcelp13Enc \
    LibOmxEvrcEnc \
    libcamera_client

# Camera
PRODUCT_PACKAGES += \
    Camera \
    camera.msm7x30 \
    libcamera
    
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    libmemalloc \
    libqdutils \
    libgenlock \
    libgralloc \
    hwcomposer.msm7x30 \
    libhwcexternal \
    libhwcservice \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libc2dcolorconvert \
    libDivxDrm

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x30 \
    libloc_api-rpc

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x30

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    libnetcmdiface

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# iptables
PRODUCT_PACKAGES += \
	iptables \
	ip6tables
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    
# IDEOSX5Settings by Blefish
PRODUCT_PACKAGES += \
	IDEOSX5Settings

# Hardware Property Writer
PRODUCT_PACKAGES += \
	hwprops
	
# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bt.bdaddr_path=/sys/hwprops/btmac

# Wireless AP
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# F2FS
#PRODUCT_PACKAGES += \
#    mkfs.f2fs \
#    fsck.f2fs \
#    fibmap.f2fs

# FM radio
#PRODUCT_PACKAGES += \
#	qcom.fmradio \
#	libqcomfm_jni \
#	FM2 \
#	FMRecord

# Build FFMPEG Packages
PRODUCT_PACKAGES += \
    libavcodec \
    libavformat \
    libswscale \
    libswresample \
    libavutil

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser
    
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    ro.use_data_netmgrd=true \
    ro.config.ehrpd=true \
    ro.ril.shutdown=true \
    ro.multi.rild=false \
    ro.config.dualmic=true

# Disable SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=permissive

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camera.landscape=true \
    debug.camcorder.disablemeta=0

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.additionalmounts=/storage/sdcard1 \
    ro.vold.switchablepair=/storage/sdcard1,/storage/sdcard0 \
    ro.emmc.sdcard.partition=16 \
    ro.vold.umsdirtyratio=50 \
    ro.emmc=1 \
    ro.zygote.disable_gl_preload=true \
    persist.webview.provider=classic

# dalvik vm
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.dexopt-data-only=1

# system prop for opengles version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hw_acceleratord_onoff=1 \
    debug.hwc.fakevsync=1 \
    debug.composition.type=dyn \
    ro.opengles.version=196608 \
    debug.sf.hw=1 \
    com.qc.hardware=true \
    DEVICE_PROVISIONED=1 \
    ro.sf.lcd_density=240 \
    ro.config.low_ram=true \
    persist.sys.wfd.virtual=0 \
    mm.enable.smoothstreaming=true

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# init/Ramdisk files
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/msm7x30-common/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/msm7x30-common/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/msm7x30-common/ramdisk/fstab.huawei:root/fstab.huawei

# ETC
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/msm7x30-common/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/msm7x30-common/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/msm7x30-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/msm7x30-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml
#device/huawei/msm7x30-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab
    
# BLUETOOTH
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/msm7x30-common/prebuilt/etc/bluetooth/BCM4329.hcd:system/etc/firmware/BCM4329.hcd
    
# WIFI
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/msm7x30-common/prebuilt/wifi/nvram.txt:system/vendor/firmware/nvram.txt

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    device/huawei/msm7x30-common/prebuilt/vendor/firmware/fw_bcm4329_abg.bin:system/vendor/firmware/fw_bcm4329_abg.bin \
    device/huawei/msm7x30-common/prebuilt/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin

# Firmware
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/msm7x30-common/prebuilt/etc/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex

# KEY
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/usr/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/huawei/msm7x30-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/msm7x30-common/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/huawei/msm7x30-common/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/huawei/msm7x30-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/msm7x30-common/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/msm7x30-common/prebuilt/usr/idc/atmel-rmi-touchscreen.idc:system/usr/idc/atmel-rmi-touchscreen.idc \
    device/huawei/msm7x30-common/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc

# Video and Omx
PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    device/huawei/msm7x30-common/prebuilt/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \
#    device/huawei/msm7x30-common/prebuilt/lib/libOmxVenc.so:system/lib/libOmxVenc.so \

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
