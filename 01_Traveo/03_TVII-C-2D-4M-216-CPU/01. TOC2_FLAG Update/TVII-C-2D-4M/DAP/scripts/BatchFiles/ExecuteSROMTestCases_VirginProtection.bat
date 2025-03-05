set CYPCLI="C:\Program Files (x86)\Cypress\Cypress Programmer\cypcli.exe"
set PI="C:\Perl64\bin\perl.exe"
set SILICON="SILICON_NUM_67"
 
set LOGPATH="..\Reports\%SILICON%\AUTOMATION"
set TEST_SCRIPTS="..\PerlScripts"
if not exist "%LOGPATH%" mkdir "%LOGPATH%"
REM "ReadMe: Soft Reset Test Cases will fail as acquire without reset is not available. As a result, where CM4 is expected to be active, Acquire with testmode makes CM4 disabled and SoftReset API succeeds instead of returning an error code"


%PI% %TEST_SCRIPTS%\AA008_SiliconId_Type0.pl 1> %LOGPATH%\AA008_SiliconId_Type0.txt 2> %LOGPATH%\AA008_SiliconId_Type0_error.txt
%PI% %TEST_SCRIPTS%\AA009_SiliconId_Type1.pl 1> %LOGPATH%\AA009_SiliconId_Type1.txt 2> %LOGPATH%\AA009_SiliconId_Type1_error.txt
%PI% %TEST_SCRIPTS%\AA010_SiliconId_Type2.pl 1> %LOGPATH%\AA010_SiliconId_Type2.txt 2> %LOGPATH%\AA010_SiliconId_Type2_error.txt
%PI% %TEST_SCRIPTS%\AA011_SiliconId_Type_Invalid.pl 1> %LOGPATH%\AA011_SiliconId_Type_Invalid.txt 2> %LOGPATH%\AA011_SiliconId_Type_Invalid_error.txt
%PI% %TEST_SCRIPTS%\AA012_Blow_Fuse_Bit_Invalid_Addr.pl 1> %LOGPATH%\AA012_Blow_Fuse_Bit_Invalid_Addr.txt 2> %LOGPATH%\AA012_Blow_Fuse_Bit_Invalid_Addr_error.txt
%PI% %TEST_SCRIPTS%\AA013_Blow_Fuse_Bit.pl 1> %LOGPATH%\AA013_Blow_Fuse_Bit.txt 2> %LOGPATH%\AA013_Blow_Fuse_Bit_error.txt
%PI% %TEST_SCRIPTS%\AA014_ReadFuseByte_Invalid_Byte_Addr.pl 1> %LOGPATH%\AA014_ReadFuseByte_Invalid_Byte_Addr.txt 2> %LOGPATH%\AA014_ReadFuseByte_Invalid_Byte_Addr_error.txt
%PI% %TEST_SCRIPTS%\AA015_ReadFuseByte.pl 1> %LOGPATH%\AA015_ReadFuseByte.txt 2> %LOGPATH%\AA015_ReadFuseByte_error.txt
%PI% %TEST_SCRIPTS%\AA018_ProgramRow_Main_Work_Flash.pl 1> %LOGPATH%\AA018_ProgramRow_Main_Work_Flash.txt 2> %LOGPATH%\AA018_ProgramRow_Main_Work_Flash_error.txt
%PI% %TEST_SCRIPTS%\AA019_ProgramRow_Main_Work_Flash_Blocking.pl 1> %LOGPATH%\AA019_ProgramRow_Main_Work_Flash_Blocking.txt 2> %LOGPATH%\AA019_ProgramRow_Main_Work_Flash_Blocking_error.txt
%PI% %TEST_SCRIPTS%\AA020_ProgramRow_Main_Work_Flash_NonBlocking.pl 1> %LOGPATH%\AA020_ProgramRow_Main_Work_Flash_NonBlocking.txt 2> %LOGPATH%\AA020_ProgramRow_Main_Work_Flash_NonBlocking_error.txt
%PI% %TEST_SCRIPTS%\AA022_ProgramRowInvalidFlashAddr.pl 1> %LOGPATH%\AA022_ProgramRowInvalidFlashAddr.txt 2> %LOGPATH%\AA022_ProgramRowInvalidFlashAddr_error.txt
%PI% %TEST_SCRIPTS%\AA028_CheckSumRow.pl 1> %LOGPATH%\AA028_CheckSumRow.txt 2> %LOGPATH%\AA028_CheckSumRow_error.txt
%PI% %TEST_SCRIPTS%\AA029_CheckSumEntireFlash.pl 1> %LOGPATH%\AA029_CheckSumEntireFlash.txt 2> %LOGPATH%\AA029_CheckSumEntireFlash_error.txt
%PI% %TEST_SCRIPTS%\AA032_33_ComputeHash_MainFlash_SFlash_InvalidFlash_SFlash.pl 1> %LOGPATH%\AA032_33_ComputeHash_MainFlash_SFlash_InvalidFlash_SFlash.pl.txt 2> %LOGPATH%\AA032_33_ComputeHash_MainFlash_SFlash_InvalidFlash_SFlash_error.txt
%PI% %TEST_SCRIPTS%\AA034_ConfigureRegBulk_SRAM_MMIO.pl 1> %LOGPATH%\AA034_ConfigureRegBulk_SRAM_MMIO.txt 2> %LOGPATH%\AA034_ConfigureRegBulk_SRAM_MMIO_error.txt
%PI% %TEST_SCRIPTS%\AA036_ConfigureRegBulk_StartAddrGrtEndAddr.pl 1> %LOGPATH%\AA036_ConfigureRegBulk_StartAddrGrtEndAddr.txt 2> %LOGPATH%\AA036_ConfigureRegBulk_StartAddrGrtEndAddr_error.txt
REM %CYPCLI% --ignore-metadata --device TVII-PSVP --program-device DirectExecute.hex overwrite with-protection
REM            --ignore-metadata --device TVII-PSVP --program-device public_key_valid.hex overwrite with-protection
REM %PI% %TEST_SCRIPTS%\AA037_DirectExecute_SRAM.pl 1> %LOGPATH%\AA028_CheckSumRow.txt 2> %LOGPATH%\AA028_CheckSumRow_error.txt
REM %PI% %TEST_SCRIPTS%\AA038_DirectExecute_FLASH.pl 1> %LOGPATH%\AA038_DirectExecute_FLASH.txt 2> %LOGPATH%\AA038_DirectExecute_FLASH_error.txt
REM %PI% %TEST_SCRIPTS%\AA039_DirectExecute_SRAM_Type_0_1_2_3.pl 1> %LOGPATH%\AA039_DirectExecute_SRAM_Type_0_1_2_3.txt 2> %LOGPATH%\AA039_DirectExecute_SRAM_Type_0_1_2_3_error.txt
REM %PI% %TEST_SCRIPTS%\AA040_DirectExecute_FLASH_Type_0_1_2_3.pl 1> %LOGPATH%\AA040_DirectExecute_FLASH_Type_0_1_2_3.txt 2> %LOGPATH%\AA040_DirectExecute_FLASH_Type_0_1_2_3_error.txt
REM %PI% %TEST_SCRIPTS%\AA042_Calibrate.pl 1> %LOGPATH%\AA042_Calibrate.txt 2> %LOGPATH%\AA042_Calibrate_error.txt
REM %PI% %TEST_SCRIPTS%\AA044_Calibrate_HashOnTrimsCorrupt.pl 1> %LOGPATH%\AA044_Calibrate_HashOnTrimsCorrupt.txt 2> %LOGPATH%\AA044_Calibrate_HashOnTrimsCorrupt_error.txt
%PI% %TEST_SCRIPTS%\AA047_EraseSector_InvalidAddress.pl 1> %LOGPATH%\AA047_EraseSector_InvalidAddress.txt 2> %LOGPATH%\AA047_EraseSector_InvalidAddress_error.txt
%PI% %TEST_SCRIPTS%\AA045_EraseSectorMainWorkBlockingNonBlocking.pl 1> %LOGPATH%\AA045_EraseSectorMainWorkBlockingNonBlocking.txt 2> %LOGPATH%\AA045_EraseSectorMainWorkBlockingNonBlocking_error.txt
%PI% %TEST_SCRIPTS%\AA061_ReadUniqueId.pl 1> %LOGPATH%\AA061_ReadUniqueId.txt 2> %LOGPATH%\AA061_ReadUniqueId_error.txt
%PI% %TEST_SCRIPTS%\AA101_Invalid_IPC_STRUCT.pl 1> %LOGPATH%\AA101_Invalid_IPC_STRUCT.txt 2> %LOGPATH%\AA101_Invalid_IPC_STRUCT_error.txt
%PI% %TEST_SCRIPTS%\AA102_InvalidOpcode.pl 1> %LOGPATH%\AA102_InvalidOpcode.txt 2> %LOGPATH%\AA102_InvalidOpcode_error.txt
REM %CYPCLI% --ignore-metadata --device TVII-PSVP --program-device  SoftReset_CM0_CM4_PinToggle.hex overwrite with-protection
REM %CYPCLI% --reset-device sw
REM %PI% %TEST_SCRIPTS%\AA089_SoftResetType0.pl 1> %LOGPATH%\AA089_SoftResetType0.txt 2> %LOGPATH%\AA089_SoftResetType0_error.txt
REM %CYPCLI% --ignore-metadata --device TVII-PSVP --program-device  SoftReset_CM0_PinToggle_CM4_NotEnabled.hex overwrite with-protection
REM %CYPCLI% --reset-device sw
REM %PI% %TEST_SCRIPTS%\AA090_SoftResetCM4NotActive.pl 1> %LOGPATH%\AA090_SoftResetCM4NotActive.txt 2> %LOGPATH%\AA090_SoftResetCM4NotActive_error.txt
REM %CYPCLI% --ignore-metadata --device TVII-PSVP --program-device  SoftReset_CM0_CM4_PinToggle.hex overwrite with-protection
REM %CYPCLI% --reset-device sw
REM %PI% %TEST_SCRIPTS%\AA091_SoftResetType1_CM4Active.pl 1> %LOGPATH%\AA091_SoftResetType1_CM4Active.txt 2> %LOGPATH%\AA091_SoftResetType1_CM4Active_error.txt
REM %CYPCLI% --reset-device sw
REM %PI% %TEST_SCRIPTS%\AA093_SoftResetInvalidType.pl 1> %LOGPATH%\AA093_SoftResetInvalidType.txt 2> %LOGPATH%\AA093_SoftResetInvalidType_error.txt
%PI% %TEST_SCRIPTS%\AA165_BlankCheck.pl 1> %LOGPATH%\AA165_BlankCheck.txt 2> %LOGPATH%\AA165_BlankCheck_error.txt
%PI% %TEST_SCRIPTS%\AA166_BlankCheckOngoingErase.pl 1> %LOGPATH%\AA166_BlankCheckOngoingErase.txt 2> %LOGPATH%\AA166_BlankCheckOngoingErase_error.txt
%PI% %TEST_SCRIPTS%\AA167_BlankCheckOnSuspendedEraseSector.pl 1> %LOGPATH%\AA167_BlankCheckOnSuspendedEraseSector.txt 2> %LOGPATH%\AA167_BlankCheckOnSuspendedEraseSector_error.txt
%PI% %TEST_SCRIPTS%\AA167A_BlankCheckOngoingProgram.pl 1> %LOGPATH%\AA167A_BlankCheckOngoingProgram.txt 2> %LOGPATH%\AA167A_BlankCheckOngoingProgram_error.txt
%PI% %TEST_SCRIPTS%\AA168_BlankCheckOnProgrammedFlash.pl 1> %LOGPATH%\AA168_BlankCheckOnProgrammedFlash.txt 2> %LOGPATH%\AA168_BlankCheckOnProgrammedFlash_error.txt
%PI% %TEST_SCRIPTS%\AA055_EraseSuspend.pl 1> %LOGPATH%\AA055_EraseSuspend.txt 2> %LOGPATH%\AA055_EraseSuspend_error.txt
%PI% %TEST_SCRIPTS%\AA056_EraseSuspend_With_No_Ongoing_Erase.pl 1> %LOGPATH%\AA056_EraseSuspend_With_No_Ongoing_Erase.txt 2> %LOGPATH%\AA056_EraseSuspend_With_No_Ongoing_Erase_error.txt
%PI% %TEST_SCRIPTS%\AA057_EraseResume.pl 1> %LOGPATH%\AA057_EraseResume.txt 2> %LOGPATH%\AA057_EraseResume_error.txt
%PI% %TEST_SCRIPTS%\AA058_EraseResume_NoOngoingErase.pl 1> %LOGPATH%\AA058_EraseResume_NoOngoingErase.txt 2> %LOGPATH%\AA058_EraseResume_NoOngoingErase_error.txt
%PI% %TEST_SCRIPTS%\AA110_SFlash_WriteRow_All_virgin.pl 1> %LOGPATH%\AA110_SFlash_WriteRow_All_virgin.txt 2> %LOGPATH%\AA110_SFlash_WriteRow_All_virgin_error.txt







