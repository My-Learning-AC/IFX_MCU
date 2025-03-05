set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG12\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG12\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FB_8M_B0_Si.tcl 1> %LOGPATH_HELPER%\Program_FB_8M_B0_Si.txt 2> %LOGPATH_HELPER%\Program_FB_8M_B0_Si_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_1.txt 2> %LOGPATH_HELPER%\BasicTest_1_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\VirginToSort_ApplyTrimsFromSflash.tcl 1> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash.txt 2> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_2.txt 2> %LOGPATH_HELPER%\BasicTest_2_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\SortToProvisioned.tcl 1> %LOGPATH_HELPER%\SortToProvisioned.txt 2> %LOGPATH_HELPER%\SortToProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_3.txt 2> %LOGPATH_HELPER%\BasicTest_3_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\UpdateNAR_NDAR_For_ND_LifeCycle..tcl 1> %LOGPATH_HELPER%\UpdateNAR_NDAR_For_ND_LifeCycle..txt 2> %LOGPATH_HELPER%\UpdateNAR_NDAR_For_ND_LifeCycle._error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\UpdateHashOnTrims_CorruptIt.tcl 1> %LOGPATH_HELPER%\UpdateHashOnTrims_CorruptIt.txt 2> %LOGPATH_HELPER%\UpdateHashOnTrims_CorruptIt_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ProvisionedToNormalProvisioned.tcl 1> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned.txt 2> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_4.txt 2> %LOGPATH_HELPER%\BasicTest_4_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_77.tcl 1> %LOGPATH_TEST%\mxs40srom_func_77.txt 2> %LOGPATH_TEST%\mxs40srom_func_77_error.txt
