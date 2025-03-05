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
global CYREG_IPC0_STRUCT_DATA CYREG_IPC1_STRUCT_DATA CYREG_IPC2_STRUCT_DATA;

Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;

IOR 0x4022000C;
IOR [IOR 0x4022000C];
IOR 0x4022002C;
IOR 0x4022004C;
IOR 0x4022006C;
IOR 0x4022008C;
IOR 0x402200AC;
IOR 0x402200CC;
IOR 0x402200EC;
# Exit openocd
shutdown