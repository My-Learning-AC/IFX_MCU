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
global SRAM0 SRAM1 SRAM2 SRAM_START_ADDR;

Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
puts [format "-----------------------------------------------------------------------"];
puts [format "SRAM Read"];

for {set addr [expr $SRAM_START_ADDR + 0x0]} {$addr < [expr $SRAM_START_ADDR + $SRAM0]} { incr addr 4} {
	IOR $addr; 
	#IOW $addr 0x00000000;
	#IOR $addr;
}

shutdown;