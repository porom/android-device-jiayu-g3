USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/Jiayu/G3/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt657x
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_BOOTLOADER_BOARD_NAME := G3

#kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_SPECIFIC_HEADER_PATH := device/jiayu/G3/include
#TARGET_PREBUILT_RECOVERY_KERNEL := device/jiayu/G3/kernel_recovery
#TARGET_KERNEL_CONFIG := cm_G3_slim_defconfig

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x1F766690
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x8A600000
BOARD_FLASH_BLOCK_SIZE := 1024

TARGET_PREBUILT_KERNEL := device/jiayu/G3/kernel
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file


BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Internal storage
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p5
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p2

#twrp
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_NO_USB_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0

#SP3_NAME := "nvram"
#SP3_DISPLAY_NAME := "nvram"
#SP3_BACKUP_METHOD := image
#SP3_MOUNTABLE := 0