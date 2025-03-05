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


mdw_ll 1 $CYREG_IPC_STRUCT_ACQUIRE
mww_ll 1 $CYREG_IPC_STRUCT_ACQUIRE 0x80000f03
mdw_ll 1 $CYREG_IPC_STRUCT_ACQUIRE

mww_ll 1 $CYREG_IPC_STRUCT_DATA 0x011A0101;
mdw_ll 1 $CYREG_IPC_STRUCT_DATA;

mww_ll 1 $CYREG_IPC_STRUCT_NOTIFY 0x1;

puts "Wait for IPC Release"
after 100
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS 
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS
mdw_ll 1 $CYREG_IPC_STRUCT_LOCK_STATUS

puts "Read IPC0 DATA"
mdw_ll 0 $CYREG_IPC_STRUCT_DATA


shutdown;
