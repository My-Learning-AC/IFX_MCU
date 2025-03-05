set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG3\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG3\Helper"
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
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FLL_CTL_0.tcl 1> %LOGPATH_HELPER%\Program_FLL_CTL_0.txt 2> %LOGPATH_HELPER%\Program_FLL_CTL_0_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ProvisionedToNormalProvisioned.tcl 1> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned.txt 2> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_4.txt 2> %LOGPATH_HELPER%\BasicTest_4_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\NormalProvisionedToSecure.tcl 1> %LOGPATH_HELPER%\NormalProvisionedToSecure.txt 2> %LOGPATH_HELPER%\NormalProvisionedToSecure_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_5.txt 2> %LOGPATH_HELPER%\BasicTest_5_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_59.tcl 1> %LOGPATH_TEST%\mxs40srom_func_59.txt 2> %LOGPATH_TEST%\mxs40srom_func_59_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_63.tcl 1> %LOGPATH_TEST%\mxs40srom_func_63.txt 2> %LOGPATH_TEST%\mxs40srom_func_63_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_145.tcl 1> %LOGPATH_TEST%\mxs40srom_func_145.txt 2> %LOGPATH_TEST%\mxs40srom_func_145_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_150.tcl 1> %LOGPATH_TEST%\mxs40srom_func_150.txt 2> %LOGPATH_TEST%\mxs40srom_func_150_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_151.tcl 1> %LOGPATH_TEST%\mxs40srom_func_151.txt 2> %LOGPATH_TEST%\mxs40srom_func_151_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_152.tcl 1> %LOGPATH_TEST%\mxs40srom_func_152.txt 2> %LOGPATH_TEST%\mxs40srom_func_152_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_163.tcl 1> %LOGPATH_TEST%\mxs40srom_func_163.txt 2> %LOGPATH_TEST%\mxs40srom_func_163_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_164.tcl 1> %LOGPATH_TEST%\mxs40srom_func_164.txt 2> %LOGPATH_TEST%\mxs40srom_func_164_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_165.tcl 1> %LOGPATH_TEST%\mxs40srom_func_165.txt 2> %LOGPATH_TEST%\mxs40srom_func_165_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_167.tcl 1> %LOGPATH_TEST%\mxs40srom_func_167.txt 2> %LOGPATH_TEST%\mxs40srom_func_167_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_169.tcl 1> %LOGPATH_TEST%\mxs40srom_func_169.txt 2> %LOGPATH_TEST%\mxs40srom_func_169_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_170.tcl 1> %LOGPATH_TEST%\mxs40srom_func_170.txt 2> %LOGPATH_TEST%\mxs40srom_func_170_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_172.tcl 1> %LOGPATH_TEST%\mxs40srom_func_172.txt 2> %LOGPATH_TEST%\mxs40srom_func_172_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_174.tcl 1> %LOGPATH_TEST%\mxs40srom_func_174.txt 2> %LOGPATH_TEST%\mxs40srom_func_174_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_175.tcl 1> %LOGPATH_TEST%\mxs40srom_func_175.txt 2> %LOGPATH_TEST%\mxs40srom_func_175_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_176A.tcl 1> %LOGPATH_TEST%\mxs40srom_func_176A.txt 2> %LOGPATH_TEST%\mxs40srom_func_176A_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_176B.tcl 1> %LOGPATH_TEST%\mxs40srom_func_176B.txt 2> %LOGPATH_TEST%\mxs40srom_func_176B_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_177.tcl 1> %LOGPATH_TEST%\mxs40srom_func_177.txt 2> %LOGPATH_TEST%\mxs40srom_func_177_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_180.tcl 1> %LOGPATH_TEST%\mxs40srom_func_180.txt 2> %LOGPATH_TEST%\mxs40srom_func_180_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_183.tcl 1> %LOGPATH_TEST%\mxs40srom_func_183.txt 2> %LOGPATH_TEST%\mxs40srom_func_183_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_184.tcl 1> %LOGPATH_TEST%\mxs40srom_func_184.txt 2> %LOGPATH_TEST%\mxs40srom_func_184_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_185.tcl 1> %LOGPATH_TEST%\mxs40srom_func_185.txt 2> %LOGPATH_TEST%\mxs40srom_func_185_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_186.tcl 1> %LOGPATH_TEST%\mxs40srom_func_186.txt 2> %LOGPATH_TEST%\mxs40srom_func_186_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_187.tcl 1> %LOGPATH_TEST%\mxs40srom_func_187.txt 2> %LOGPATH_TEST%\mxs40srom_func_187_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_188.tcl 1> %LOGPATH_TEST%\mxs40srom_func_188.txt 2> %LOGPATH_TEST%\mxs40srom_func_188_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_189.tcl 1> %LOGPATH_TEST%\mxs40srom_func_189.txt 2> %LOGPATH_TEST%\mxs40srom_func_189_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_190.tcl 1> %LOGPATH_TEST%\mxs40srom_func_190.txt 2> %LOGPATH_TEST%\mxs40srom_func_190_error.txt
