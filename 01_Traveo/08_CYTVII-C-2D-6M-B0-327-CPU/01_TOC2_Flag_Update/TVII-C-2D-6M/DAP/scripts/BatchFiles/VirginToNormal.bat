set OPEN_OCD="..\bin\openocd.exe"             
set BITFILE="B0\srom28"
set LOGPATH="Log\%BITFILE%\R03_SortToNormal"

if not exist "%LOGPATH%" mkdir "%LOGPATH%"
REM %OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\1_Sflash.txt
@rem %OPEN_OCD% -f HelperScripts\Program_PKey_FB.tcl >%LOGPATH%\1AProgram_Pkey_FB.txt
%OPEN_OCD% -f CQ_SCRIPTS\Enable_SkipHash_FllCtl_NarCtl.tcl > %LOGPATH%\1B_Enable_SkipHash_FllCtl_NarCtl.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\2_BasicTest.txt
@rem %OPEN_OCD% -f UpdateDummyFlashBoot.tcl > %LOGPATH%\2a_UpdateDummyFlashBoot.txt
@rem %OPEN_OCD% -f UpdateBootProt.tcl > %LOGPATH%\2a_UpdateBootProt.txt
@rem %OPEN_OCD% -f ReadSflash.tcl > %LOGPATH%\2b_Sflash.txt
%OPEN_OCD% -f HelperScripts\VirginToSort_ApplyTrimsFromSflash.tcl > %LOGPATH%\3_ApplyTrimsFromSflash.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\4_BasicTest.txt
@rem %OPEN_OCD% -f ProgramFlashBoot.tcl > %LOGPATH%\2a_ProgramFlashBoot.txt
@rem %OPEN_OCD% -f HelperScripts\SortToProvisioned.tcl > %LOGPATH%\5_SortToProvisioned.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\6_BasicTest.txt
%OPEN_OCD% -f HelperScripts\UpdateTOC1.tcl > %LOGPATH%\6A_UpdateTOC1.txt
%OPEN_OCD% -f HelperScripts\UpdateTOC2.tcl > %LOGPATH%\6A_UpdateTOC2.txt
%OPEN_OCD% -f HelperScripts\UpdateUID.tcl > %LOGPATH%\6B_UpdateUID.txt
REM %OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\6C_Sflash.txt
@rem %OPEN_OCD% -f CQ_SCRIPTS\mxs40srom_func_39.tcl > %LOGPATH%\7_CalibrateCheck_BeforeNormalEfuse.txt
@rem %OPEN_OCD% -f HelperScripts\UpdateHashOnTrims_CorruptIt.tcl > %LOGPATH%\6D_CorruptHashOnTrims.txt
%OPEN_OCD% -f HelperScripts\ProvisionedToNormalProvisioned.tcl > %LOGPATH%\7_ProvToNormP.txt

@rem %OPEN_OCD% -f ES10_SCRIPTS\mxs40srom_func_39.tcl > %LOGPATH%\9_CalibrateCheck_AfterNormalEfuse.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\8_BasicTest.txt

@rem %OPEN_OCD% -f HelperScripts\NormalProvisionedToSecure.tcl > %LOGPATH%\9_NormalProvisionedToSecure.txt
@rem %OPEN_OCD% -f HelperScripts\NormalProvisionedToSecureDebug.tcl > %LOGPATH%\9_NormalProvisionedToSecure.txt
@rem %OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\10_BasicTest.txt
@rem %OPEN_OCD% -f HelperScripts\TransitionToRma.tcl > %LOGPATH%\11_TransitionToRma.txt
