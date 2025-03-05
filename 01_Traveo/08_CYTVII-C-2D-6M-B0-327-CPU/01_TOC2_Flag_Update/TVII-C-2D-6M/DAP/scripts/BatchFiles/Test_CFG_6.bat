set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_002\CFG_6\Test"
set LOGPATH_HELPER="Reports\Regression_002\CFG_6\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FB_C2D_6M.tcl 1> %LOGPATH_HELPER%\Program_FB_C2D_6M.txt 2> %LOGPATH_HELPER%\Program_FB_C2D_6M_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_PKey.tcl 1> %LOGPATH_HELPER%\Program_PKey.txt 2> %LOGPATH_HELPER%\Program_PKey_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_OTP_address.tcl 1> %LOGPATH_HELPER%\Program_OTP_address.txt 2> %LOGPATH_HELPER%\Program_OTP_address_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ProgramLedToggleAllCores.tcl 1> %LOGPATH_HELPER%\ProgramLedToggleAllCores.txt 2> %LOGPATH_HELPER%\ProgramLedToggleAllCores_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_1.txt 2> %LOGPATH_HELPER%\BasicTest_1_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_67.tcl 1> %LOGPATH_TEST%\mxs40srom_func_67.txt 2> %LOGPATH_TEST%\mxs40srom_func_67_error.txt
