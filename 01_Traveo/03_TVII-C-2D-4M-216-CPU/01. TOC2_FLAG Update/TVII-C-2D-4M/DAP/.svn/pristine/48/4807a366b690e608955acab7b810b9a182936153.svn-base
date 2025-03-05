set OPEN_OCD="..\bin\openocd.exe"

set LOGPATH="Report\Log_LifeCycleConversion_01\RMA_2K"

if not exist "%LOGPATH%" mkdir "%LOGPATH%"

%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\0_Sflash.txt
@rem %OPEN_OCD% -f HelperScripts\Program_FB_6M.tcl >%LOGPATH%\1_Program_FB.txt
%OPEN_OCD% -f HelperScripts\Program_2K_RSA_Support.tcl > %LOGPATH%\1A_Program_2K_RSA_Support.txt
%OPEN_OCD% -f HelperScripts\Program_uid.tcl > %LOGPATH%\2A_PreReq_4_UpdateUID.txt
%OPEN_OCD% -f HelperScripts\Program_PKey.tcl > %LOGPATH%\2B_PreReq_Program_PKEY_2K.txt
%OPEN_OCD% -f HelperScripts\UpdateTOC2_DisableAuth_ClkCfg3.tcl > %LOGPATH%\2C_PreReq_3_UpdateTOC2_DisableAuth_ClkCfg3.txt
%OPEN_OCD% -f HelperScripts\Program_secure_hex.tcl > %LOGPATH%\2D_Program_SecureHex_2K.txt
@rem %OPEN_OCD% -f HelperScripts\Program_OTP_address.tcl > %LOGPATH%\2E_ProReq_6_Program_OTP_Address.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\2F_BasicTest.txt
%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\2G_Sflash.txt
%OPEN_OCD% -f HelperScripts\VirginToSort_ApplyTrimsFromSflash.tcl > %LOGPATH%\3_ApplyTrimsFromSflash.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\3A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\SortToProvisioned.tcl > %LOGPATH%\4_SortToProvisioned.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\4A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\ReadSflash.tcl > %LOGPATH%\4B_Sflash.txt
%OPEN_OCD% -f HelperScripts\ProvisionedToNormalProvisioned.tcl > %LOGPATH%\5_ProvToNormP.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\5A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\NormalProvisionedToSecure.tcl > %LOGPATH%\6_NormalProvisionedToSecure.txt
%OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\6A_BasicTest.txt
%OPEN_OCD% -f RMA\SROM_TransitionToRMA_122.tcl > %LOGPATH%\7_TransitionToRMA_2K.txt
@rem %OPEN_OCD% -f HelperScripts\BasicTest.tcl > %LOGPATH%\7A_BasicTest.txt
%OPEN_OCD% -f HelperScripts\OpenRma_lowLevel.tcl > %LOGPATH%\8_OpenRMA_2K.txt
