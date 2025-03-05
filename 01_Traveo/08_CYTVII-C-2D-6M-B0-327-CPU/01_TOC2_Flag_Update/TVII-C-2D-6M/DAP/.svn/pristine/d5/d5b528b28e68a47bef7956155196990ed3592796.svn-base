set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_002\CFG_13\Test"
set LOGPATH_HELPER="Reports\Regression_002\CFG_13\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FB_C2D_6M.tcl 1> %LOGPATH_HELPER%\Program_FB_C2D_6M.txt 2> %LOGPATH_HELPER%\Program_FB_C2D_6M_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_PKey.tcl 1> %LOGPATH_HELPER%\Program_PKey.txt 2> %LOGPATH_HELPER%\Program_PKey_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_OTP_address.tcl 1> %LOGPATH_HELPER%\Program_OTP_address.txt 2> %LOGPATH_HELPER%\Program_OTP_address_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\UpdateTOC2_DisableAuth_ClkCfg3.tcl 1> %LOGPATH_HELPER%\UpdateTOC2_DisableAuth_ClkCfg3.txt 2> %LOGPATH_HELPER%\UpdateTOC2_DisableAuth_ClkCfg3_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_PKey.tcl 1> %LOGPATH_HELPER%\Program_PKey.txt 2> %LOGPATH_HELPER%\Program_PKey_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_PSVP_secure_hex.tcl 1> %LOGPATH_HELPER%\Program_PSVP_secure_hex.txt 2> %LOGPATH_HELPER%\Program_PSVP_secure_hex_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_1.txt 2> %LOGPATH_HELPER%\BasicTest_1_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\VirginToSort_ApplyTrimsFromSflash.tcl 1> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash.txt 2> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_2.txt 2> %LOGPATH_HELPER%\BasicTest_2_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\SortToProvisioned.tcl 1> %LOGPATH_HELPER%\SortToProvisioned.txt 2> %LOGPATH_HELPER%\SortToProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_3.txt 2> %LOGPATH_HELPER%\BasicTest_3_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FLL_CTL_0.tcl 1> %LOGPATH_HELPER%\Program_FLL_CTL_0.txt 2> %LOGPATH_HELPER%\Program_FLL_CTL_0_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ProvisionedToNormalProvisioned.tcl 1> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned.txt 2> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_4.txt 2> %LOGPATH_HELPER%\BasicTest_4_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\NormalProvisionedToSecure.tcl 1> %LOGPATH_HELPER%\NormalProvisionedToSecure.txt 2> %LOGPATH_HELPER%\NormalProvisionedToSecure_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_5.txt 2> %LOGPATH_HELPER%\BasicTest_5_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_82.tcl 1> %LOGPATH_TEST%\mxs40srom_func_82.txt 2> %LOGPATH_TEST%\mxs40srom_func_82_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_83.tcl 1> %LOGPATH_TEST%\mxs40srom_func_83.txt 2> %LOGPATH_TEST%\mxs40srom_func_83_error.txt
