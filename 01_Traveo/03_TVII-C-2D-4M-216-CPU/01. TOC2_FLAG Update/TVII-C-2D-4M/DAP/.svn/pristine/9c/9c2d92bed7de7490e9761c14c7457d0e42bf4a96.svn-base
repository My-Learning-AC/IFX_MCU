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


Log_Pre_Test_Check;

set TestString "Write a known patter to last 2KB of SRAM";
test_start $TestString;
set sram_available_size [getSizeAvailableSRAM];

puts "Available SRAM size is: $sram_available_size";

set end_addr [expr $SRAM_START_ADDR + $sram_available_size];
set start_addr   [expr $end_addr - $SIZE_2KB];

for {set addr $start_addr} {$addr < $end_addr} {incr addr 4} {
    IOW $addr 0xA5A5A5A5;
}
test_end $TestString;

set TestString "Read back last 2KB of SRAM and check if they are corrupted";
test_start $TestString;
for {set addr $start_addr} {$addr < $end_addr} {incr addr 4} {
    test_compare 0xA5A5A5A5 [IOR $addr];
}
test_end $TestString;

set TestString "SoftReset and re-acquire";
test_start $TestString;
re_boot;
test_end $TestString;

acquire_TestMode_SROM;


Log_Pre_Test_Check;

set TestString "Read back last 2KB of SRAM and check if they are corrupted";
test_start $TestString;
for {set addr $start_addr} {$addr < $end_addr} {incr addr 4} {
    test_compare 0xA5A5A5A5 [IOR $addr];
}
test_end $TestString;

Log_Post_Test_Check;




set FlowEndTime [clock seconds];
compute_executionTime $FlowStartTime $FlowEndTime;

# Exit openocd
shutdown