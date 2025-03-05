set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG5\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG5\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

%OPEN_OCD% -f %HELPER_SCRIPTS%\ProgramLedToggleAllCores.tcl 1> %LOGPATH_HELPER%\ProgramLedToggleAllCores.txt 2> %LOGPATH_HELPER%\ProgramLedToggleAllCores_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_34.tcl 1> %LOGPATH_TEST%\mxs40srom_func_34.txt 2> %LOGPATH_TEST%\mxs40srom_func_34_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_35.tcl 1> %LOGPATH_TEST%\mxs40srom_func_35.txt 2> %LOGPATH_TEST%\mxs40srom_func_35_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_36.tcl 1> %LOGPATH_TEST%\mxs40srom_func_36.txt 2> %LOGPATH_TEST%\mxs40srom_func_36_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_37.tcl 1> %LOGPATH_TEST%\mxs40srom_func_37.txt 2> %LOGPATH_TEST%\mxs40srom_func_37_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_66.tcl 1> %LOGPATH_TEST%\mxs40srom_func_66.txt 2> %LOGPATH_TEST%\mxs40srom_func_66_error.txt
