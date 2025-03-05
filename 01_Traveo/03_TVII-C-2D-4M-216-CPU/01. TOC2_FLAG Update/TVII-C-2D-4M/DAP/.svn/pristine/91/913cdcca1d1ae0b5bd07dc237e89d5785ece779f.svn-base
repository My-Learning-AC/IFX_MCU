set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG23\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG23\Helper"
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
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_NORMAL_CONTROL_1.tcl 1> %LOGPATH_HELPER%\Program_NORMAL_CONTROL_1.txt 2> %LOGPATH_HELPER%\Program_NORMAL_CONTROL_1_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ProvisionedToNormalProvisioned.tcl 1> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned.txt 2> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_4.txt 2> %LOGPATH_HELPER%\BasicTest_4_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_20.tcl 1> %LOGPATH_TEST%\mxs40srom_func_20.txt 2> %LOGPATH_TEST%\mxs40srom_func_20_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_22.tcl 1> %LOGPATH_TEST%\mxs40srom_func_22.txt 2> %LOGPATH_TEST%\mxs40srom_func_22_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_24.tcl 1> %LOGPATH_TEST%\mxs40srom_func_24.txt 2> %LOGPATH_TEST%\mxs40srom_func_24_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_28.tcl 1> %LOGPATH_TEST%\mxs40srom_func_28.txt 2> %LOGPATH_TEST%\mxs40srom_func_28_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_38.tcl 1> %LOGPATH_TEST%\mxs40srom_func_38.txt 2> %LOGPATH_TEST%\mxs40srom_func_38_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_43.tcl 1> %LOGPATH_TEST%\mxs40srom_func_43.txt 2> %LOGPATH_TEST%\mxs40srom_func_43_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_94.tcl 1> %LOGPATH_TEST%\mxs40srom_func_94.txt 2> %LOGPATH_TEST%\mxs40srom_func_94_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_95.tcl 1> %LOGPATH_TEST%\mxs40srom_func_95.txt 2> %LOGPATH_TEST%\mxs40srom_func_95_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_96.tcl 1> %LOGPATH_TEST%\mxs40srom_func_96.txt 2> %LOGPATH_TEST%\mxs40srom_func_96_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_110.tcl 1> %LOGPATH_TEST%\mxs40srom_func_110.txt 2> %LOGPATH_TEST%\mxs40srom_func_110_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_111.tcl 1> %LOGPATH_TEST%\mxs40srom_func_111.txt 2> %LOGPATH_TEST%\mxs40srom_func_111_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_112.tcl 1> %LOGPATH_TEST%\mxs40srom_func_112.txt 2> %LOGPATH_TEST%\mxs40srom_func_112_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_113.tcl 1> %LOGPATH_TEST%\mxs40srom_func_113.txt 2> %LOGPATH_TEST%\mxs40srom_func_113_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_115.tcl 1> %LOGPATH_TEST%\mxs40srom_func_115.txt 2> %LOGPATH_TEST%\mxs40srom_func_115_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_118.tcl 1> %LOGPATH_TEST%\mxs40srom_func_118.txt 2> %LOGPATH_TEST%\mxs40srom_func_118_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_120.tcl 1> %LOGPATH_TEST%\mxs40srom_func_120.txt 2> %LOGPATH_TEST%\mxs40srom_func_120_error.txt
@rem %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_146.tcl 1> %LOGPATH_TEST%\mxs40srom_func_146.txt 2> %LOGPATH_TEST%\mxs40srom_func_146_error.txt
@rem %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_147.tcl 1> %LOGPATH_TEST%\mxs40srom_func_147.txt 2> %LOGPATH_TEST%\mxs40srom_func_147_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_157.tcl 1> %LOGPATH_TEST%\mxs40srom_func_157.txt 2> %LOGPATH_TEST%\mxs40srom_func_157_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_160.tcl 1> %LOGPATH_TEST%\mxs40srom_func_160.txt 2> %LOGPATH_TEST%\mxs40srom_func_160_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_173.tcl 1> %LOGPATH_TEST%\mxs40srom_func_173.txt 2> %LOGPATH_TEST%\mxs40srom_func_173_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_179.tcl 1> %LOGPATH_TEST%\mxs40srom_func_179.txt 2> %LOGPATH_TEST%\mxs40srom_func_179_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_192.tcl 1> %LOGPATH_TEST%\mxs40srom_func_192.txt 2> %LOGPATH_TEST%\mxs40srom_func_192_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_193.tcl 1> %LOGPATH_TEST%\mxs40srom_func_193.txt 2> %LOGPATH_TEST%\mxs40srom_func_193_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_194.tcl 1> %LOGPATH_TEST%\mxs40srom_func_194.txt 2> %LOGPATH_TEST%\mxs40srom_func_194_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_195.tcl 1> %LOGPATH_TEST%\mxs40srom_func_195.txt 2> %LOGPATH_TEST%\mxs40srom_func_195_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_196.tcl 1> %LOGPATH_TEST%\mxs40srom_func_196.txt 2> %LOGPATH_TEST%\mxs40srom_func_196_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_197.tcl 1> %LOGPATH_TEST%\mxs40srom_func_197.txt 2> %LOGPATH_TEST%\mxs40srom_func_197_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_198.tcl 1> %LOGPATH_TEST%\mxs40srom_func_198.txt 2> %LOGPATH_TEST%\mxs40srom_func_198_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_199.tcl 1> %LOGPATH_TEST%\mxs40srom_func_199.txt 2> %LOGPATH_TEST%\mxs40srom_func_199_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_200.tcl 1> %LOGPATH_TEST%\mxs40srom_func_200.txt 2> %LOGPATH_TEST%\mxs40srom_func_200_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_201.tcl 1> %LOGPATH_TEST%\mxs40srom_func_201.txt 2> %LOGPATH_TEST%\mxs40srom_func_201_error.txt
