ARCH:=aarch64
SUBTARGET:=an7529
BOARDNAME:=Airoha AN7529 
CPU_TYPE:=cortex-a53
KERNELNAME:=Image dtbs

DEFAULT_PACKAGES += \
	airoha-en7523-npu-firmware

define Target/Description
  Build firmware images for Airoha AN7529 ARM based boards.
endef
