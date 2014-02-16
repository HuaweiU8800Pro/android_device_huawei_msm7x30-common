USE_CAMERA_STUB := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Fm radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := bcm4329

# Optimalizations
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true
COMMON_GLOBAL_CFLAGS += -DTARGET7x30 -DTARGET_MSM7x30
$(shell mkdir -p $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/)

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
#BOARD_HAVE_BACK_MIC_CAMCORDER := true
#TARGET_QCOM_HDMI_OUT := true

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
BOARD_USES_QCNE := true

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true
TARGET_CPU_VARIANT:= scorpion
BOARD_WANTS_EMMC_BOOT := true
#TARGET_ARCH_VARIANT_FPU := neon

# Conserve memory in the Dalvik heap
# Details: https://github.com/CyanogenMod/android_dalvik/commit/15726c81059b74bf2352db29a3decfc4ea9c1428
#TARGET_ARCH_LOWMEM := true
#TARGET_ARCH_HAVE_NEON := true

TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy

# Hardware tunables framework
BOARD_HARDWARE_CLASS := device/huawei/msm7x30-common/cmhw

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_QCOM_VOIP_ENABLED := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
TARGET_GRALLOC_USES_ASHMEM := true

BOARD_USE_SKIA_LCDTEXT := true

COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK
COMMON_GLOBAL_CFLAGS += -DUSE_GENLOCK
COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
TARGET_DISABLE_ARM_PIE := true

# Graphics
DCHECK_FOR_EXTERNAL_FORMAT := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
BOARD_EGL_CFG := device/huawei/msm7x30-common/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_NO_RGBX_8888 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Qcom/Display
TARGET_USES_ION := false
#TARGET_NO_HW_OVERLAY := true
TARGET_NO_HW_VSYNC := true
TARGET_NO_HDMI := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_ENABLE_AV_ENHANCEMENTS := true
TARGET_USES_POST_PROCESSING := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_USE_LEGACY_GRALLOC := true
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL

# Web Rendering
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Wifi
WIFI_BAND                        := 802_11_ABGN
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := WEXT
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HOSTPAD_DEVICE             := bcmdhd
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/vendor/firmware/nvram.txt"
# flag for huawei
BOARD_USE_HUAWEI_BCM_WIFI := true
#BOARD_USE_SERNUM_FOR_MAC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8800pro/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/msm7x30-common/bluetooth/vnd_msm7x30.txt

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
# Use Linaro ARM-Cortex A8 optimized toolchain
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-arm-cortex-a8
#TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-cortex_a8-linux-gnueabi
# Use stock toolchain
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/huawei/u8800pro
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei androidboot.selinux=permissive
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# File System
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
TARGET_RECOVERY_INITRC := device/huawei/msm7x30-common/recovery/recovery.rc
#TARGET_RECOVERY_FSTAB := device/huawei/msm7x30-common/recovery_recovery.fstab
BOARD_RECOVERY_RMT_STORAGE := true
#BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/msm7x30-common/recovery/graphics_cn.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/msm7x30-common/recovery_kernel
TARGET_RECOVERY_FSTAB            := device/huawei/msm7x30-common/ramdisk/fstab.huawei
RECOVERY_FSTAB_VERSION           := 2

# Custom releasetools for old partition table.
TARGET_PROVIDES_RELEASETOOLS := true

# ETC
TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x30-common/include

# SELinux
BOARD_SEPOLICY_DIRS := \
device/huawei/msm7x30/sepolicy

BOARD_SEPOLICY_UNION := \
        file_contexts \
        genfs_contexts \
        app.te \
        btmacreader.te \
        device.te \
        drmserver.te \
        init_shell.te \
        file.te \
        rild.te \
        sensors_config.te \
        shell.te \
        surfaceflinger.te \
        system.te \
        zygote.te
