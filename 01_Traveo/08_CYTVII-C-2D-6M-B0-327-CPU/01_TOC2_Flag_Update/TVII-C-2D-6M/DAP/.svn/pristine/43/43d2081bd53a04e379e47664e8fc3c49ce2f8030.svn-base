#source [find interface/jlink.cfg]
#source [find interface/kitprog3.cfg]
#source [find HelperScripts/CustomFunctions.tcl]
#source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/SROM_Defines.tcl]
source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]

acquire_TestMode_SROM;

global CYREG_IPC_STRUCT_LOCK_STATUS;

#set _CHIPNAME generic_dap_access
#source [find target/swj-dp.tcl]
#swj_newdap $_CHIPNAME cpu -irlen 4 -ircapture 0x1 -irmask 0xf
#dap create $_CHIPNAME.dap -chain-position $_CHIPNAME.cpu

# Writes 'val' to address 'addr' via AP 'ap'
proc mww_ll { ap addr val } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	$_CHIPNAME.dap apreg $ap 0x0C $val
}

# Reads and displays data from address 'addr' via AP 'ap'
proc mdw_ll { ap addr } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	$_CHIPNAME.dap apreg $ap 0x0C
}

# Reads data from address 'addr' via AP 'ap' and returns it
# Can be used to read data and pass it to other commands
proc mrw_ll { ap addr } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	set ap [ocd_$_CHIPNAME.dap apreg $ap 0x0C]
	regsub -all {(\s*\n)+} $ap "" ap
	return $ap
}


#init
#mww_ll 0 0x4026207C 0x1;
#re_boot;
#shutdown;

# Now you can access memory via SYSAP :
puts "Acquire Check"
IOWap 0 0x28001000 0x12345678
IORap 0 0x28001000
IORap 0 $CYREG_IPC_STRUCT_DATA

Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
IOW $CYREG_MAIN_FLASH_SAFETY 0x1;
IOW $CYREG_WORK_FLASH_SAFETY 0x1;

mww_ll 0 0x40210050 0xFFFFFFFF;
mww_ll 0 0x40210054 0xFFFFFFFF;
mww_ll 0 0x40210058 0xFFFFFFFF;
mdw_ll 0 0x4021000C;
mdw_ll 0 0x40210010;
mdw_ll 0 0x40210014;
mdw_ll 0 0x40210018;

set SFLASH_END_ADDR	[expr $SFLASH_START_ADDR + $SFLASH_SIZE - 1] ;


set PKEY [ReturnSFlashRow 50];
set trims [ReturnSFlashRow 1];
lset PKEY 0 0x00000448;
lset PKEY 1 0x0;
lset PKEY 2 0x0;
lset PKEY 3 0x0;

test_compare 0xa0000000 [SROM_WriteRow $SYS_CALL_GREATER32BIT 0 0x17006400 0 $PKEY];


shutdown;
