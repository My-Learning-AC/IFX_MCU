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


#Log_Pre_Test_Check;

set TestString "SRSS ILO TRIM REGISTER UPDATE IN NORMAL OR LATER STAGE";
test_start $TestString;

set lock [IOR 0x4026C040];
IOW 0x4026C040 0x2;
IOW 0x4026C040 0x1;
IOR 0x4026C040;

set ILO_trim [IOR 0x40263010];
set ILO0_trim [IOR 0x40263014];
set ILO1_trim [IOR 0x40263220];

IOW 0x40263014 0x720;
IOW 0x40263220 0x72C;

IOR 0x40263014;
IOR 0x40263220;

IOW 0x40263014 $ILO0_trim;
IOW 0x40263220 $ILO1_trim;

IOR 0x40263014;
IOR 0x40263220;

IOW 0x4026C040 0x3
IOR 0x4026C040;

test_end $TestString;

#Log_Post_Test_Check;




set FlowEndTime [clock seconds];
compute_executionTime $FlowStartTime $FlowEndTime;

# Exit openocd
shutdown