set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG15\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG15\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_86.tcl 1> %LOGPATH_TEST%\mxs40srom_func_86.txt 2> %LOGPATH_TEST%\mxs40srom_func_86_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_87.tcl 1> %LOGPATH_TEST%\mxs40srom_func_87.txt 2> %LOGPATH_TEST%\mxs40srom_func_87_error.txt
