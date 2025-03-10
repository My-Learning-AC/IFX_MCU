#This test script is written to be executed on all TVII devices with out any change.
#DO NOT MODIFY
set FlowStartTime [clock seconds];
set FlowEndTime [clock seconds];
set TestStartTime [clock seconds];
set TestEndTime [clock seconds];
set TestString NoTestStarted;

source [find HelperScripts/SROM_Defines.tcl]
source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]


acquire_TestMode_SROM;
	
global SYS_CALL_GREATER32BIT SYS_CALL_LESS32BIT;

IOW 0x28008000 0x100;
IOR 0x28008000;
 

#Change execute permission attribute
set sub_region_disable 0x00;
set user_access 0x6;# User Execute-Disabled
set prev_access 0x6;# User Execute-Disabled
set non_secure 0x1;
set pc_mask_0 0x0;
set pc_mask_15_1 0x7F ;
set region_size 0x8;#0x8 = 512 Bytes; 0x7 = 256 Bytes
set pc_match 0x0;
set region_addr 0x28008000 ; #0x08008000 for BE/CE devices
puts "Region Addr to read protect  = 0x%08x $region_addr" ;
Config_SMPU_ADD0_ATT0 $sub_region_disable $user_access $prev_access $non_secure $pc_mask_0 $pc_mask_15_1 $region_size $pc_match $region_addr;

#SetPCValueOfMaster 15 2
#GetPCValueOfMaster 15	
#re_boot;
IOR $CYREG_IPC_STRUCT_ACQUIRE;
IOW $CYREG_IPC_STRUCT_ACQUIRE 0x80000f03;
IOR $CYREG_IPC_STRUCT_ACQUIRE;

IOW $CYREG_IPC_STRUCT_DATA 0x28008000; #0x08008000 for BE/CE devices
IOR $CYREG_IPC_STRUCT_DATA;

IOW $CYREG_IPC_STRUCT_NOTIFY 0x1;

puts "Wait for IPC Release"
after 100
for {set i 0} {$i<100} {incr i} {
	IOR $CYREG_IPC_STRUCT_LOCK_STATUS;
}

IOR $CYREG_IPC_STRUCT_DATA;
if {[IOR $CYREG_IPC_STRUCT_DATA] == 0xF00000F1} {
	puts "Test Passed, Hardfault generated during API call"
} else {
	puts "Test failed"
}

IOR 0x28008000; #0x08008000 for BE/CE devices
	
set FlowEndTime [clock seconds];
compute_executionTime $FlowStartTime $FlowEndTime;

# Exit openocd
shutdown