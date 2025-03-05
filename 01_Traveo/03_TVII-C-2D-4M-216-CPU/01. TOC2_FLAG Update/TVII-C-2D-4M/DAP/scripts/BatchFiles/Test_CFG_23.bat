set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\4M_A2\Regression_001\CFG_23\Test"
set LOGPATH_HELPER="Reports\4M_A2\Regression_001\CFG_23\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

@rem @rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FB_C2D_6M.tcl 1> %LOGPATH_HELPER%\Program_FB_C2D_6M.txt 2> %LOGPATH_HELPER%\Program_FB_C2D_6M_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_PKey.tcl 1> %LOGPATH_HELPER%\Program_PKey.txt 2> %LOGPATH_HELPER%\Program_PKey_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_OTP_address.tcl 1> %LOGPATH_HELPER%\Program_OTP_address.txt 2> %LOGPATH_HELPER%\Program_OTP_address_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_1.txt 2> %LOGPATH_HELPER%\BasicTest_1_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\VirginToSort_ApplyTrimsFromSflash.tcl 1> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash.txt 2> %LOGPATH_HELPER%\VirginToSort_ApplyTrimsFromSflash_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_2.txt 2> %LOGPATH_HELPER%\BasicTest_2_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\SortToProvisioned.tcl 1> %LOGPATH_HELPER%\SortToProvisioned.txt 2> %LOGPATH_HELPER%\SortToProvisioned_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_3.txt 2> %LOGPATH_HELPER%\BasicTest_3_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\Program_NAR_NDAR.tcl 1> %LOGPATH_HELPER%\Program_NAR_NDAR.txt 2> %LOGPATH_HELPER%\Program_NAR_NDAR_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\ProvisionedToNormalProvisioned.tcl 1> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned.txt 2> %LOGPATH_HELPER%\ProvisionedToNormalProvisioned_error.txt
@rem %OPEN_OCD% -f %HELPER_SCRIPTS%\BasicTest.tcl 1> %LOGPATH_HELPER%\BasicTest_4.txt 2> %LOGPATH_HELPER%\BasicTest_4_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_20.tcl 1> %LOGPATH_TEST%\mxs40srom_func_20.txt 2> %LOGPATH_TEST%\mxs40srom_func_20_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_22.tcl 1> %LOGPATH_TEST%\mxs40srom_func_22.txt 2> %LOGPATH_TEST%\mxs40srom_func_22_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_24.tcl 1> %LOGPATH_TEST%\mxs40srom_func_24.txt 2> %LOGPATH_TEST%\mxs40srom_func_24_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_28.tcl 1> %LOGPATH_TEST%\mxs40srom_func_28.txt 2> %LOGPATH_TEST%\mxs40srom_func_28_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_38.tcl 1> %LOGPATH_TEST%\mxs40srom_func_38.txt 2> %LOGPATH_TEST%\mxs40srom_func_38_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_43.tcl 1> %LOGPATH_TEST%\mxs40srom_func_43.txt 2> %LOGPATH_TEST%\mxs40srom_func_43_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_94.tcl 1> %LOGPATH_TEST%\mxs40srom_func_94.txt 2> %LOGPATH_TEST%\mxs40srom_func_94_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_95.tcl 1> %LOGPATH_TEST%\mxs40srom_func_95.txt 2> %LOGPATH_TEST%\mxs40srom_func_95_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_96.tcl 1> %LOGPATH_TEST%\mxs40srom_func_96.txt 2> %LOGPATH_TEST%\mxs40srom_func_96_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_112.tcl 1> %LOGPATH_TEST%\mxs40srom_func_112.txt 2> %LOGPATH_TEST%\mxs40srom_func_112_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_113.tcl 1> %LOGPATH_TEST%\mxs40srom_func_113.txt 2> %LOGPATH_TEST%\mxs40srom_func_113_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_115.tcl 1> %LOGPATH_TEST%\mxs40srom_func_115.txt 2> %LOGPATH_TEST%\mxs40srom_func_115_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_120.tcl 1> %LOGPATH_TEST%\mxs40srom_func_120.txt 2> %LOGPATH_TEST%\mxs40srom_func_120_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_146.tcl 1> %LOGPATH_TEST%\mxs40srom_func_146.txt 2> %LOGPATH_TEST%\mxs40srom_func_146_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_147.tcl 1> %LOGPATH_TEST%\mxs40srom_func_147.txt 2> %LOGPATH_TEST%\mxs40srom_func_147_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_160.tcl 1> %LOGPATH_TEST%\mxs40srom_func_160.txt 2> %LOGPATH_TEST%\mxs40srom_func_160_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_173.tcl 1> %LOGPATH_TEST%\mxs40srom_func_173.txt 2> %LOGPATH_TEST%\mxs40srom_func_173_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_177.tcl 1> %LOGPATH_TEST%\mxs40srom_func_177.txt 2> %LOGPATH_TEST%\mxs40srom_func_177_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_180.tcl 1> %LOGPATH_TEST%\mxs40srom_func_180.txt 2> %LOGPATH_TEST%\mxs40srom_func_180_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_182.tcl 1> %LOGPATH_TEST%\mxs40srom_func_182.txt 2> %LOGPATH_TEST%\mxs40srom_func_182_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_185.tcl 1> %LOGPATH_TEST%\mxs40srom_func_185.txt 2> %LOGPATH_TEST%\mxs40srom_func_185_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_186.tcl 1> %LOGPATH_TEST%\mxs40srom_func_186.txt 2> %LOGPATH_TEST%\mxs40srom_func_186_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_187.tcl 1> %LOGPATH_TEST%\mxs40srom_func_187.txt 2> %LOGPATH_TEST%\mxs40srom_func_187_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_188.tcl 1> %LOGPATH_TEST%\mxs40srom_func_188.txt 2> %LOGPATH_TEST%\mxs40srom_func_188_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_189.tcl 1> %LOGPATH_TEST%\mxs40srom_func_189.txt 2> %LOGPATH_TEST%\mxs40srom_func_189_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_192.tcl 1> %LOGPATH_TEST%\mxs40srom_func_192.txt 2> %LOGPATH_TEST%\mxs40srom_func_192_error.txt

