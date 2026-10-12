
define Device/airoha_en7523-evb
  $(Device/FitImage)
  DEVICE_VENDOR := Airoha
  DEVICE_MODEL := EN7523 Evaluation Board
  DEVICE_DTS := en7523-evb
endef
TARGET_DEVICES += airoha_en7523-evb

define Device/skyworth_gn630v
  $(Device/Uboot-FitImage)
  DEVICE_VENDOR := Skyworth
  DEVICE_MODEL := GN630V
  DEVICE_VARIANT := v1
  IMAGES += uboot-chainload.itb
  IMAGE/uboot-chainload.itb := uboot-chainloader skyworth_gn630v
  ARTIFACT/uboot-bootloader.bin += | fill-zero 0x100000
  DEVICE_PACKAGES += kmod-usb-ohci kmod-usb2 hostapd-mbedtls wpad-mbedtls kmod-mt7915e kmod-mt7916-firmware
endef
TARGET_DEVICES += skyworth_gn630v
