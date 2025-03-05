set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG18\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG18\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_88.tcl 1> %LOGPATH_TEST%\mxs40srom_func_88.txt 2> %LOGPATH_TEST%\mxs40srom_func_88_error.txt
