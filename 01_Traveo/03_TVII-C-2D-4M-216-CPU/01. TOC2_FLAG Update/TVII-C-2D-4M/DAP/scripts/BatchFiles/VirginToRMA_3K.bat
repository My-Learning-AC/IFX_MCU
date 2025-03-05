set OPEN_OCD="..\bin\openocd.exe"

set LOGPATH="Report\Log_LifeCycleConversion_01\RMA_3K"

if not exist "%LOGPATH%" mkdir "%LOGPATH%"

%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\0_Sflash.txt
@rem %OPEN_OCD% -f HelperScripts\Program_FB_4M.tcl >%LOGPATH%\1_Program_FB.txt
%OPEN_OCD% -f HelperScripts\Program_3K_RSA_Support.tcl > %LOGPATH%\1A_Program_3K_RSA_Support.txt
%OPEN_OCD% -f HelperScripts\Program_uid.tcl > %LOGPATH%\2A_PreReq_4_UpdateUID.txt
%OPEN_OCD% -f HelperScripts\Program_PKey_3K.tcl > %LOGPATH%\2B_PreReq_Program_PKEY_3K.txt
%OPEN_OCD% -f HelperScripts\UpdateTOC2_DisableAuth_ClkCfg3.tcl > %LOGPATH%\2C_PreReq_3_UpdateTOC2_DisableAuth_ClkCfg3.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\2D_BasicTest.txt
%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\2E_Sflash.txt
%OPEN_OCD% -f HelperScripts\VirginToSort_ApplyTrimsFromSflash.tcl > %LOGPATH%\3_ApplyTrimsFromSflash.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\3A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\SortToProvisioned.tcl > %LOGPATH%\4_SortToProvisioned.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\4A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\4B_Sflash.txt
%OPEN_OCD% -f HelperScripts\ProvisionedToNormalProvisioned.tcl > %LOGPATH%\5_ProvToNormP.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\5A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\Program_secure_hex_3k.tcl > %LOGPATH%\5B_Program_SecureHex_3K.txt
%OPEN_OCD% -f HelperScripts\NormalProvisionedToSecure.tcl > %LOGPATH%\6_NormalProvisionedToSecure.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\6A_BasicTest.txt
%OPEN_OCD% -f RMA\SROM_TransitionToRMA_122.3k.tcl > %LOGPATH%\7_TransitionToRMA_3K.txt
@rem %OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\7A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\OpenRma_lowLevel_3K.tcl > %LOGPATH%\8_OpenRMA_3K.txt
