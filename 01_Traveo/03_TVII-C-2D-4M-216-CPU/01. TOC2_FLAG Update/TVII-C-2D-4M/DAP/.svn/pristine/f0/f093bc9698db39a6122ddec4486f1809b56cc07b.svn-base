# supported devices
set G(FAMILY:TVII-BE-1M)   0x0101
set G(FAMILY:TVII-BE-2M)   0x0102
set G(FAMILY:TVII-BE-4M)   0x0108
set G(FAMILY:TVII-C2D6M)   0x0106
set G(FAMILY:TVII-BH-4M)   0x0107
set G(FAMILY:TVII-BH-8M)   0x0104
set G(FAMILY:TVII-C2D4M)   0x010B


set ENABLE_ACQUIRE 1
# --------------PSV / Silicon -----------------------
# separate scripts/hex files for silicon and psvp
# set is_psvp to 1 for PSVP and to 0 for Silicon
set is_psvp 0

# ------------- Select Target ---------------------------------


#set G(OPT_FA	\MILY) $G(FAMILY:TVII-BE-1M)
#set G(OPT_FAMILY) $G(FAMILY:TVII-BE-2M)
#set G(OPT_FAMILY) $G(FAMILY:TVII-BE-4M)
set G(OPT_FAMILY) $G(FAMILY:TVII-C2D4M)
#set G(OPT_FAMILY) $G(FAMILY:TVII-BH-8M)
#set G(OPT_FAMILY) $G(FAMILY:TVII-C2D6M)
#set G(OPT_FAMILY) $G(FAMILY:TVII-BH-4M)
#set G(FLASHBOOTHEX) xxflashboot_tviibe2m_a2_3.1.0.421.hex

# ------------- Probe ---------------------------------
#set G(FLASHBOOTHEX) flashboot_tviibe1m_b2_psvp_3.1.0.394.hex

#source [find interface/jlink.cfg]
#source [find interface/cmsis-dap.cfg] ;# NOTE: MiniProg4 is incompatible with PSVP for TVII-BE-1M
#source [find interface/cmsis-dap.cfg]
source [find interface/kitprog3.cfg]

transport select swd
# ------------- Configure Target, Apps ---------------------------------
source [find ../apps_config.tcl]

adapter_khz 200
init
traveo2 sflash_restrictions 3

source [find ../tcl_lib/regs.tcl]
source [find ../tcl_lib/sys_calls.tcl]
source [find ../tcl_lib/misc.tcl]
