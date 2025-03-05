set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH="Reports\PreRequisites"

if not exist "%LOGPATH%" mkdir "%LOGPATH%"
%OPEN_OCD% -f HelperScripts\UpdateSROMDat.tcl > %LOGPATH%\PreReq_0_UpdateSROM.txt
%OPEN_OCD% -f HelperScripts\UpdateSflashDat.tcl > %LOGPATH%\PreReq_1_UpdateSflash.txt
@rem %OPEN_OCD% -f HelperScripts\Program_FB_C2D_6M.tcl > %LOGPATH%\PreReq_2_Program_FB_C2D_6M.txt
%OPEN_OCD% -f HelperScripts\UpdateTOC2_DisableAuth_ClkCfg3.tcl > %LOGPATH%\PreReq_3_UpdateTOC2_DisableAuth_ClkCfg3.txt
%OPEN_OCD% -f HelperScripts\Program_uid.tcl > %LOGPATH%\PreReq_4_Program_uid.txt
%OPEN_OCD% -f HelperScripts\Program_PKey.tcl > %LOGPATH%\PreReq_5_PKey.txt
%OPEN_OCD% -f HelperScripts\Program_OTP_address.tcl > %LOGPATH%\ProReq_6_Program_OTP_Address.txt