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

SetPCValueOfMaster 15 2;

Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
puts [format "-----------------------------------------------------------------------"];
puts [format "VRPU Configuration"];
set addr 0x40AF0000;

for {set i 0} {$i < 0x40} { incr i 4} {
	puts [format "VRAM Protection for Read Master with ID = %d", [expr ($i/4)]];
	IOR [expr ($addr + $i)]
}
puts [format "-----------------------------------------------------------------------"];
set addr 0x40AF0040
for {set i 0} {$i < 0x40} { incr i 4} {
	puts [format "VRAM Protection for Write Master with ID = %d", [expr ($i/4)]];
	IOR [expr ($addr + $i)]
}
puts [format "-----------------------------------------------------------------------"];

set addr 0x40AF2000;
for {set num 0} {$num<32} {incr num} {
	puts [format "VRPU STRUCT - $num"];
	puts [format "ADDR-0"];
	IOR [expr ($addr + [expr $num*0x40] + 0x0)];
	puts [format "ATT-0"];
	IOR [expr ($addr + [expr $num*0x40] + 0x4)];
	puts [format "ADDR-1"];
	IOR [expr ($addr + [expr $num*0x40] + 0x20)];
	puts [format "ATT-1"];
	IOR [expr ($addr + [expr $num*0x40] + 0x24)];
	puts [format "-----------------------------------------------------------------------"];
}

set addr 0x40AF4000;
for {set num 0} {$num<16} {incr num} {
	puts [format "MPU configuration for Read Master - $num"];
	IOR [expr ($addr + [expr ($num*0x400)])];
	puts [format "-----------------------------------------------------------------------"];
}

set addr 0x40AF8000;
for {set num 0} {$num<16} {incr num} {
	puts [format "MPU configuration for Write Master - $num"];
	IOR [expr ($addr + [expr ($num*0x400)])];
	puts [format "-----------------------------------------------------------------------"];
}

puts [format "-----------------------------------------------------------------------"];

# Exit openocd
shutdown