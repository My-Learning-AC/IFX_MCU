set OPEN_OCD="..\bin\openocd.exe"
set LOGPATH_TEST="Reports\Regression_001\CFG22\Test"
set LOGPATH_HELPER="Reports\Regression_001\CFG22\Helper"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
set HELPER_SCRIPTS="HelperScripts"
if not exist "%LOGPATH_TEST%" mkdir "%LOGPATH_TEST%"

if not exist "%LOGPATH_HELPER%" mkdir "%LOGPATH_HELPER%"

%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\Program_FB_8M_B0_Si.tcl 1> %LOGPATH_HELPER%\Program_FB_8M_B0_Si.txt 2> %LOGPATH_HELPER%\Program_FB_8M_B0_Si_error.txt
%OPEN_OCD% -f %HELPER_SCRIPTS%\ReadSflash.tcl 1> %LOGPATH_HELPER%\ReadSflash.txt 2> %LOGPATH_HELPER%\ReadSflash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_8.tcl 1> %LOGPATH_TEST%\mxs40srom_func_8.txt 2> %LOGPATH_TEST%\mxs40srom_func_8_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_9.tcl 1> %LOGPATH_TEST%\mxs40srom_func_9.txt 2> %LOGPATH_TEST%\mxs40srom_func_9_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_10.tcl 1> %LOGPATH_TEST%\mxs40srom_func_10.txt 2> %LOGPATH_TEST%\mxs40srom_func_10_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_11.tcl 1> %LOGPATH_TEST%\mxs40srom_func_11.txt 2> %LOGPATH_TEST%\mxs40srom_func_11_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_12.tcl 1> %LOGPATH_TEST%\mxs40srom_func_12.txt 2> %LOGPATH_TEST%\mxs40srom_func_12_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_13.tcl 1> %LOGPATH_TEST%\mxs40srom_func_13.txt 2> %LOGPATH_TEST%\mxs40srom_func_13_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_14.tcl 1> %LOGPATH_TEST%\mxs40srom_func_14.txt 2> %LOGPATH_TEST%\mxs40srom_func_14_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_15.tcl 1> %LOGPATH_TEST%\mxs40srom_func_15.txt 2> %LOGPATH_TEST%\mxs40srom_func_15_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_16.tcl 1> %LOGPATH_TEST%\mxs40srom_func_16.txt 2> %LOGPATH_TEST%\mxs40srom_func_16_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_17.tcl 1> %LOGPATH_TEST%\mxs40srom_func_17.txt 2> %LOGPATH_TEST%\mxs40srom_func_17_error.txt
@rem %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_18.tcl 1> %LOGPATH_TEST%\mxs40srom_func_18.txt 2> %LOGPATH_TEST%\mxs40srom_func_18_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_19.tcl 1> %LOGPATH_TEST%\mxs40srom_func_19.txt 2> %LOGPATH_TEST%\mxs40srom_func_19_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_23.tcl 1> %LOGPATH_TEST%\mxs40srom_func_23.txt 2> %LOGPATH_TEST%\mxs40srom_func_23_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_25.tcl 1> %LOGPATH_TEST%\mxs40srom_func_25.txt 2> %LOGPATH_TEST%\mxs40srom_func_25_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_26.tcl 1> %LOGPATH_TEST%\mxs40srom_func_26.txt 2> %LOGPATH_TEST%\mxs40srom_func_26_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_27.tcl 1> %LOGPATH_TEST%\mxs40srom_func_27.txt 2> %LOGPATH_TEST%\mxs40srom_func_27_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_29.tcl 1> %LOGPATH_TEST%\mxs40srom_func_29.txt 2> %LOGPATH_TEST%\mxs40srom_func_29_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_30.tcl 1> %LOGPATH_TEST%\mxs40srom_func_30.txt 2> %LOGPATH_TEST%\mxs40srom_func_30_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_31.tcl 1> %LOGPATH_TEST%\mxs40srom_func_31.txt 2> %LOGPATH_TEST%\mxs40srom_func_31_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_33.tcl 1> %LOGPATH_TEST%\mxs40srom_func_33.txt 2> %LOGPATH_TEST%\mxs40srom_func_33_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_39.tcl 1> %LOGPATH_TEST%\mxs40srom_func_39.txt 2> %LOGPATH_TEST%\mxs40srom_func_39_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_40.tcl 1> %LOGPATH_TEST%\mxs40srom_func_40.txt 2> %LOGPATH_TEST%\mxs40srom_func_40_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_41.tcl 1> %LOGPATH_TEST%\mxs40srom_func_41.txt 2> %LOGPATH_TEST%\mxs40srom_func_41_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_42.tcl 1> %LOGPATH_TEST%\mxs40srom_func_42.txt 2> %LOGPATH_TEST%\mxs40srom_func_42_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_44.tcl 1> %LOGPATH_TEST%\mxs40srom_func_44.txt 2> %LOGPATH_TEST%\mxs40srom_func_44_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_45.tcl 1> %LOGPATH_TEST%\mxs40srom_func_45.txt 2> %LOGPATH_TEST%\mxs40srom_func_45_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_46.tcl 1> %LOGPATH_TEST%\mxs40srom_func_46.txt 2> %LOGPATH_TEST%\mxs40srom_func_46_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_47.tcl 1> %LOGPATH_TEST%\mxs40srom_func_47.txt 2> %LOGPATH_TEST%\mxs40srom_func_47_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_48.tcl 1> %LOGPATH_TEST%\mxs40srom_func_48.txt 2> %LOGPATH_TEST%\mxs40srom_func_48_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_49.tcl 1> %LOGPATH_TEST%\mxs40srom_func_49.txt 2> %LOGPATH_TEST%\mxs40srom_func_49_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_50.tcl 1> %LOGPATH_TEST%\mxs40srom_func_50.txt 2> %LOGPATH_TEST%\mxs40srom_func_50_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_51.tcl 1> %LOGPATH_TEST%\mxs40srom_func_51.txt 2> %LOGPATH_TEST%\mxs40srom_func_51_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_54.tcl 1> %LOGPATH_TEST%\mxs40srom_func_54.txt 2> %LOGPATH_TEST%\mxs40srom_func_54_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_78.tcl 1> %LOGPATH_TEST%\mxs40srom_func_78.txt 2> %LOGPATH_TEST%\mxs40srom_func_78_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_79.tcl 1> %LOGPATH_TEST%\mxs40srom_func_79.txt 2> %LOGPATH_TEST%\mxs40srom_func_79_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_80.tcl 1> %LOGPATH_TEST%\mxs40srom_func_80.txt 2> %LOGPATH_TEST%\mxs40srom_func_80_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_81.tcl 1> %LOGPATH_TEST%\mxs40srom_func_81.txt 2> %LOGPATH_TEST%\mxs40srom_func_81_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_89.tcl 1> %LOGPATH_TEST%\mxs40srom_func_89.txt 2> %LOGPATH_TEST%\mxs40srom_func_89_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_90.tcl 1> %LOGPATH_TEST%\mxs40srom_func_90.txt 2> %LOGPATH_TEST%\mxs40srom_func_90_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_93.tcl 1> %LOGPATH_TEST%\mxs40srom_func_93.txt 2> %LOGPATH_TEST%\mxs40srom_func_93_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_98.tcl 1> %LOGPATH_TEST%\mxs40srom_func_98.txt 2> %LOGPATH_TEST%\mxs40srom_func_98_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_99.tcl 1> %LOGPATH_TEST%\mxs40srom_func_99.txt 2> %LOGPATH_TEST%\mxs40srom_func_99_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_100.tcl 1> %LOGPATH_TEST%\mxs40srom_func_100.txt 2> %LOGPATH_TEST%\mxs40srom_func_100_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_102.tcl 1> %LOGPATH_TEST%\mxs40srom_func_102.txt 2> %LOGPATH_TEST%\mxs40srom_func_102_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_103.tcl 1> %LOGPATH_TEST%\mxs40srom_func_103.txt 2> %LOGPATH_TEST%\mxs40srom_func_103_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_104.tcl 1> %LOGPATH_TEST%\mxs40srom_func_104.txt 2> %LOGPATH_TEST%\mxs40srom_func_104_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_105.tcl 1> %LOGPATH_TEST%\mxs40srom_func_105.txt 2> %LOGPATH_TEST%\mxs40srom_func_105_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_106.tcl 1> %LOGPATH_TEST%\mxs40srom_func_106.txt 2> %LOGPATH_TEST%\mxs40srom_func_106_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_107.tcl 1> %LOGPATH_TEST%\mxs40srom_func_107.txt 2> %LOGPATH_TEST%\mxs40srom_func_107_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_108.tcl 1> %LOGPATH_TEST%\mxs40srom_func_108.txt 2> %LOGPATH_TEST%\mxs40srom_func_108_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_114.tcl 1> %LOGPATH_TEST%\mxs40srom_func_114.txt 2> %LOGPATH_TEST%\mxs40srom_func_114_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_121.tcl 1> %LOGPATH_TEST%\mxs40srom_func_121.txt 2> %LOGPATH_TEST%\mxs40srom_func_121_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_127.tcl 1> %LOGPATH_TEST%\mxs40srom_func_127.txt 2> %LOGPATH_TEST%\mxs40srom_func_127_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_131.tcl 1> %LOGPATH_TEST%\mxs40srom_func_131.txt 2> %LOGPATH_TEST%\mxs40srom_func_131_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_132.tcl 1> %LOGPATH_TEST%\mxs40srom_func_132.txt 2> %LOGPATH_TEST%\mxs40srom_func_132_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_133.tcl 1> %LOGPATH_TEST%\mxs40srom_func_133.txt 2> %LOGPATH_TEST%\mxs40srom_func_133_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_134.tcl 1> %LOGPATH_TEST%\mxs40srom_func_134.txt 2> %LOGPATH_TEST%\mxs40srom_func_134_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_135.tcl 1> %LOGPATH_TEST%\mxs40srom_func_135.txt 2> %LOGPATH_TEST%\mxs40srom_func_135_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_136.tcl 1> %LOGPATH_TEST%\mxs40srom_func_136.txt 2> %LOGPATH_TEST%\mxs40srom_func_136_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_138.tcl 1> %LOGPATH_TEST%\mxs40srom_func_138.txt 2> %LOGPATH_TEST%\mxs40srom_func_138_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_139.tcl 1> %LOGPATH_TEST%\mxs40srom_func_139.txt 2> %LOGPATH_TEST%\mxs40srom_func_139_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_140.tcl 1> %LOGPATH_TEST%\mxs40srom_func_140.txt 2> %LOGPATH_TEST%\mxs40srom_func_140_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_141.tcl 1> %LOGPATH_TEST%\mxs40srom_func_141.txt 2> %LOGPATH_TEST%\mxs40srom_func_141_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_143.tcl 1> %LOGPATH_TEST%\mxs40srom_func_143.txt 2> %LOGPATH_TEST%\mxs40srom_func_143_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_144.tcl 1> %LOGPATH_TEST%\mxs40srom_func_144.txt 2> %LOGPATH_TEST%\mxs40srom_func_144_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_148.tcl 1> %LOGPATH_TEST%\mxs40srom_func_148.txt 2> %LOGPATH_TEST%\mxs40srom_func_148_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_149.tcl 1> %LOGPATH_TEST%\mxs40srom_func_149.txt 2> %LOGPATH_TEST%\mxs40srom_func_149_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_154.tcl 1> %LOGPATH_TEST%\mxs40srom_func_154.txt 2> %LOGPATH_TEST%\mxs40srom_func_154_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_157.tcl 1> %LOGPATH_TEST%\mxs40srom_func_157.txt 2> %LOGPATH_TEST%\mxs40srom_func_157_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_158.tcl 1> %LOGPATH_TEST%\mxs40srom_func_158.txt 2> %LOGPATH_TEST%\mxs40srom_func_158_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_159.tcl 1> %LOGPATH_TEST%\mxs40srom_func_159.txt 2> %LOGPATH_TEST%\mxs40srom_func_159_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_162.tcl 1> %LOGPATH_TEST%\mxs40srom_func_162.txt 2> %LOGPATH_TEST%\mxs40srom_func_162_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_166.tcl 1> %LOGPATH_TEST%\mxs40srom_func_166.txt 2> %LOGPATH_TEST%\mxs40srom_func_166_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_168.tcl 1> %LOGPATH_TEST%\mxs40srom_func_168.txt 2> %LOGPATH_TEST%\mxs40srom_func_168_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_176.tcl 1> %LOGPATH_TEST%\mxs40srom_func_176.txt 2> %LOGPATH_TEST%\mxs40srom_func_176_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_178.tcl 1> %LOGPATH_TEST%\mxs40srom_func_178.txt 2> %LOGPATH_TEST%\mxs40srom_func_178_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_179.tcl 1> %LOGPATH_TEST%\mxs40srom_func_179.txt 2> %LOGPATH_TEST%\mxs40srom_func_179_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_182.tcl 1> %LOGPATH_TEST%\mxs40srom_func_182.txt 2> %LOGPATH_TEST%\mxs40srom_func_182_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_191.tcl 1> %LOGPATH_TEST%\mxs40srom_func_191.txt 2> %LOGPATH_TEST%\mxs40srom_func_191_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_193.tcl 1> %LOGPATH_TEST%\mxs40srom_func_193.txt 2> %LOGPATH_TEST%\mxs40srom_func_193_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_194.tcl 1> %LOGPATH_TEST%\mxs40srom_func_194.txt 2> %LOGPATH_TEST%\mxs40srom_func_194_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_195.tcl 1> %LOGPATH_TEST%\mxs40srom_func_195.txt 2> %LOGPATH_TEST%\mxs40srom_func_195_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_196.tcl 1> %LOGPATH_TEST%\mxs40srom_func_196.txt 2> %LOGPATH_TEST%\mxs40srom_func_196_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_197.tcl 1> %LOGPATH_TEST%\mxs40srom_func_197.txt 2> %LOGPATH_TEST%\mxs40srom_func_197_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_198.tcl 1> %LOGPATH_TEST%\mxs40srom_func_198.txt 2> %LOGPATH_TEST%\mxs40srom_func_198_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_199.tcl 1> %LOGPATH_TEST%\mxs40srom_func_199.txt 2> %LOGPATH_TEST%\mxs40srom_func_199_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_200.tcl 1> %LOGPATH_TEST%\mxs40srom_func_200.txt 2> %LOGPATH_TEST%\mxs40srom_func_200_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_201.tcl 1> %LOGPATH_TEST%\mxs40srom_func_201.txt 2> %LOGPATH_TEST%\mxs40srom_func_201_error.txt
