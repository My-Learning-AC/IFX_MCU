#This test script is written to be executed on all TVII devices with out any change.
#DO NOT MODIFY
set FlowStartTime [clock seconds];
set FlowEndTime [clock seconds];
set TestStartTime [clock seconds];
set TestEndTime [clock seconds];
set TestString NoTestStarted;

source [find HelperScripts/SROM_Defines.tcl]
#source [find ../run_config.tcl]

source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]

source [find RSA_3K_4K/rma/tc_rma/signature_generated.3k.tcl]

acquire_TestMode_SROM;

#ReadFaultRegisters;
#Log_Pre_Test_Check;
#
Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
#
set TestString "Test : TransitionToRma ";
test_start $TestString;	
#
#ReadFaultRegisters;


test_compare $STATUS_SUCCESS [SROM_TransitionToRMA $SYS_CALL_GREATER32BIT $lenOfObjectsG $certG $signWordG];

IOW 0x40210050 0xffffffff 
IOW 0x40210054 0xffffffff 	
IOW 0x40210058 0xffffffff 

ReadFaultRegisters;
test_compare 0xEA [IOR 0x4022006C]; #Expected value 0xEA in IPC3 DATA if API succeeds
IOR 0x4022004C;
test_end $TestString;

set FlowEndTime [clock seconds];
compute_executionTime $FlowStartTime $FlowEndTime;

# Exit OpenOCD
shutdown;
#--------------------------------------------------------------------------------#

