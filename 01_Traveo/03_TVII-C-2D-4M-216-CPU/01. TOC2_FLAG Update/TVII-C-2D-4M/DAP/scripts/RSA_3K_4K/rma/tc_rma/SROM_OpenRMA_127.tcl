#This test script is written to be executed on all TVII devices with out any change.
#DO NOT MODIFY
set FlowStartTime [clock seconds];
set FlowEndTime [clock seconds];
set TestStartTime [clock seconds];
set TestEndTime [clock seconds];
set TestString NoTestStarted;


#source [find HelperScripts/SROM_Defines.tcl]
source [find ../run_config.tcl]

source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]

source [find signature_generated.tcl]

#acquire_TestMode_SROM;


Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
IOR 0x4022004C;
set CurrentProtection	[GetProtectionState];
if {($CurrentProtection == $PS_VIRGIN)} {
	set UID [ReturnSFlashRow 3];
	lset UID 0  0x01947fb4;
	lset UID 1  0x02032332;
	lset UID 2  0x00000000;
	
	
	set TestString "Test: OpenRma API in SORT lifecycle";
	test_start $TestString;
	test_compare $STATUS_SUCCESS [SROM_OpenRMA $SYS_CALL_VIA_SRAM_SCRATCH $lenOfObjectsG $certG $signWordG];
	test_end $TestString;
	IOR 0x4022004C;
	set TestString "Test: OpenRma API in SORT lifecycle";
	test_start $TestString;

	if {$DUT >= $TVIIBH4M_SILICON} { 
		# Read IPC4 data, instead of IPC7 data on TVIIBH *, TVIIC *
	    test_compare 0x000000EA [IOR 0x4022010C];
	} else {
	    # Read IPC3 data,  TVIIBE *
	    test_compare 0x000000EA [IOR 0x4022006C];
	}

        # for be device

	test_compare 0x000000EA [IOR 0x4022010C];

	set status [ expr { [SysCall_SiliconId_FamilyID familyId siRev] >> 28 } ]
	test_compare $status   0xA

	Print_SysCall_SiliconId_FamilyId
	Print_SysCall_SiliconId_LifeCycle

        test_end $TestString;	
} else {
    set TestString "Test: OpenRma API in NORMAL, SECURE, DEAD protection state";
	test_start $TestString;
	set lenOfObjects 0x14;
	set cert "junk";
	set signWord "junk";
    test_compare $STATUS_INVALID_PROTECTION [SROM_OpenRMA $SYS_CALL_VIA_SRAM_SCRATCH $lenOfObjects $cert $signWord];	
	test_end $TestString

}

set FlowEndTime [clock seconds];
compute_executionTime $FlowStartTime $FlowEndTime;


# Exit openocd
shutdown