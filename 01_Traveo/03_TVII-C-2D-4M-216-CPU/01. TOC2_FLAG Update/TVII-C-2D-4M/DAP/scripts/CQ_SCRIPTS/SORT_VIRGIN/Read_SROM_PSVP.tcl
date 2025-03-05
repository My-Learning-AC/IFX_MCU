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


Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
set romStart 0x40211000;

set romLimt 8192
for {set word 0} {$word < $romLimt} {incr word} {
	set addr [expr $romStart + $word*4];
	IOR $addr;
}
IOW 0x40211000 0x2809f7FC;
IOR $romStart;
# Exit openocd
shutdown