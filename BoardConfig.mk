USE_CAMERA_STUB := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SP8835EB	# Got it from extract_dtb
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Might save storage
TW_DEFAULT_LANGUAGE := en-US


# Platform
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOARD_PLATFORM_GPU := Mali-400 MP

# Architecture 64bit
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_CPU_VARIANT := cortex-a7

# kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SP8835EB

# Trying compressinon just like in kernel(might or might not work)
#BOARD_RAMDISK_COMPRESS := lzma
#TARGET_RECOVERY_FSTYPE := ext4
#TARGET_RECOVERY_SIZE := 15M


## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p24
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p18
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw


# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x000F00000	# size might be 0xF02800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x000F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x073A00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x130AFBC00
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x009600000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/FortuneShip/LS_4008/kernel
TARGET_PREBUILT_DTB := device/FortuneShip/LS_4008/dt.img
TARGET_SYSTEM_PROP := device/FortuneShip/LS_4008/system.prop

# Recovery
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/FortuneShip/LS_4008/recovery/root/etc/recovery.fstab


# Use this flag if the board has a ext4 partition larger than 2gb
#TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_CUSTOM_BOOTIMG_MK :=  device/FortuneShip/LS_4008/bootimg.mk

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true


TW_USE_NEW_MINADBD := true

# Screen resolution
#TW_SCREEN_HEIGHT := 800
#TW_SCREEN_WIDTH := 480

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480


# debug
#BOARD_HAS_NO_REAL_SDCARD := true

# Enable verbose logging
#TW_DEBUG := true
TW_NO_SCREEN_BLANK := 1
#TW_INCLUDE_DEBUG := 1

# Ensure the log directory is writable
TW_RECOVERY_LOG_PATH := /tmp/recovery.log
TW_USE_COMPRESSION := true

# Custom log paths (optional)
TW_LOG_STORAGE := /data/media/0/TWRP



## EXCLUDE to Save disk space
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_EXCLUDE_APP_MANAGER := true
TW_EXCLUDE_MULTIUSER := true
TW_EXCLUDE_TREBLE := true
TW_EXCLUDE_FBE := true

TW_INCLUDE_NTFS_3G := false
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := false	# Might save space
TWRP_INCLUDE_LOGCAT := false


TW_EXCLUDE_MTP := true
TW_EXCLUDE_SDEXT := true
TW_EXCLUDE_ADB := true
TW_EXCLUDE_USB_STORAGE := true
TW_NO_USB_STORAGE := true


TW_EXCLUDE_DOWNLOAD_MODE := true
TW_HAS_DOWNLOAD_MODE := false
#TW_HAS_DOWNLOAD_MODE := true	# for samsung devices only

TW_EXCLUDE_CRYPTO := true
TW_EXCLUDE_OPENRECOVERY_SCRIPT := true
TW_EXCLUDE_HAPTICS := true
TW_EXCLUDE_BLKID := true
TW_EXCLUDE_BATTERY_PERCENT := true


TW_NO_CPU_TEMP := true
# disables things like sdcard partitioning and may save you some space if TWRP isn't fitting in your recovery patition
BOARD_HAS_NO_REAL_SDCARD := true


# copied from device_android_samsung_galaxyl
USE_NO_TORCH := true
TW_NO_EXFAT := true
TW_NO_EXFAT_FUSE := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_USE_RGB565 := true

# This dont work
#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp -Oz -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -fomit-frame-pointer -fmerge-all-constants -flto
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp -Oz -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -fomit-frame-pointer -fmerge-all-constants -flto

#TARGET_GLOBAL_CFLAGS += -Oz -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -fomit-frame-pointer -fmerge-all-constants -flto
#TARGET_GLOBAL_CPPFLAGS += -Oz -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -fomit-frame-pointer -fmerge-all-constants -flto
#TARGET_GLOBAL_LDFLAGS += -Wl,--gc-sections -Wl,--strip-all #-Wl,--icf=all -flto -Wl,-Oz

#TWRP_EVENT_LOGGING := false
#TW_INCLUDE_FB2PNG := false
#TW_USE_TOOLBOX := true


#TW_NO_SCREEN_TIMEOUT := true
#TW_DISABLE_TTF:= true	TW_DISABLE_TTF support has been deprecated in TWRP.
#TW_OEM_BUILD := true	# consumes space

