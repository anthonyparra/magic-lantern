# For portable binaries, without any camera-specific includes
# Will compile autoexec.bin from reboot.c & friends (or ML_SRC_REBOOT_OBJ)
# Compile this with sudo make -C ../magic-lantern/platform/750D.100/ install_qemu ML_MODULES_DYNAMIC= CONFIG_BOOT_DUMPER=y
# Run QEMU with ./run_canon_fw.sh 750D,firmware="boot=1" -d io,sflash -s -S & gdb-multiarch -x 750D/debugmsg.gdb

MODEL=750D
FW_VERSION=100
ROMBASEADDR=0xFE0A0000
RESTARTSTART=0

# force execution in uncacheable memory (flag 0x40000000)
# Canon code jumps to AUTOEXEC.BIN / *.FIR at 0x800000 / 0x800120
AUTOEXEC_BASE = 0x40800000
FIR_BASE      = 0x40800120

include ../Makefile.platform

# dummy definitions to avoid building regular ML
# (we only want what's in reboot.c)

magiclantern.bin:
	@echo Not building magiclantern.bin

magiclantern:
	@echo Not building magiclantern

magiclantern.sym:
	touch magiclantern.sym
