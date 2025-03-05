set OPEN_OCD="..\bin\openocd.exe"             
set BITFILE="B0\srom28"
set LOGPATH="4M_PSVP\R15_SortToNormalP"

if not exist "%LOGPATH%" mkdir "%LOGPATH%"
@rem %OPEN_OCD% -f HelperScripts\Program_OTP_address.tcl > %LOGPATH%\0_Program_OTP_address.txt
@rem %OPEN_OCD% -f HelperScripts\UpdateSflashDat.tcl > %LOGPATH%\0A_Sflash_update.txt
@rem %OPEN_OCD% -f HelperScripts\Program_FB_4M.tcl > %LOGPATH%\0B_FB_update.txt
@rem %OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\1_Sflash.txt
%OPEN_OCD% -f HelperScripts\Program_OTP_address.tcl > %LOGPATH%\PreReq_6_OTP.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\2_BasicTest.txt
%OPEN_OCD% -f HelperScripts\VirginToSort_ApplyTrimsFromSflash.tcl > %LOGPATH%\3_ApplyTrimsFromSflash.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\4_BasicTest.txt
%OPEN_OCD% -f HelperScripts\SortToProvisioned.tcl > %LOGPATH%\5_SortToProvisioned.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\6_BasicTest.txt
@rem %OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\6C_Sflash.txt
%OPEN_OCD% -f HelperScripts\ProvisionedToNormalProvisioned.tcl > %LOGPATH%\7_ProvToNormP.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\8_BasicTest.txt
