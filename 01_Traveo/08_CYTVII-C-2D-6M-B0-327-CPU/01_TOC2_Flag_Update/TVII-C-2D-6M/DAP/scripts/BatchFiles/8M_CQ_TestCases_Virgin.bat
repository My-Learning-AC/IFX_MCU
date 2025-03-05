set OPEN_OCD="..\bin\openocd.exe"
set BIT_FILE_REV="C-2D-4M\dev_all_20191027r00\Regression_001"
 
set LOGPATH="Reports\%BIT_FILE_REV%"
set TEST_SCRIPTS="CQ_SCRIPTS\SORT_VIRGIN"
if not exist "%LOGPATH%" mkdir "%LOGPATH%"

REM %OPEN_OCD% -f %TEST_SCRIPTS%\BasicTest.tcl  1> %LOGPATH%\BasicTest.txt 2> %LOGPATH%\BasicTest_err.txt



REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_1.tcl    1> %LOGPATH%\mxs40srom_func_1.txt   2> %LOGPATH%\mxs40srom_func_1_error.txt
REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_2.tcl    1> %LOGPATH%\mxs40srom_func_2.txt   2> %LOGPATH%\mxs40srom_func_2_error.txt  
REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_4.tcl    1> %LOGPATH%\mxs40srom_func_4.txt   2> %LOGPATH%\mxs40srom_func_4_error.txt  
REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_5.tcl    1> %LOGPATH%\mxs40srom_func_5.txt   2> %LOGPATH%\mxs40srom_func_5_error.txt  
REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_6.tcl    1> %LOGPATH%\mxs40srom_func_6.txt   2> %LOGPATH%\mxs40srom_func_6_error.txt  
REM %OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_7.tcl    1> %LOGPATH%\mxs40srom_func_7.txt   2> %LOGPATH%\mxs40srom_func_7_error.txt
 
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_8.tcl    1> %LOGPATH%\mxs40srom_func_8.txt   2> %LOGPATH%\mxs40srom_func_8_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_9.tcl    1> %LOGPATH%\mxs40srom_func_9.txt   2> %LOGPATH%\mxs40srom_func_9_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_10.tcl   1> %LOGPATH%\mxs40srom_func_10.txt  2> %LOGPATH%\mxs40srom_func_10_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_11.tcl   1> %LOGPATH%\mxs40srom_func_11.txt  2> %LOGPATH%\mxs40srom_func_11_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_12.tcl   1> %LOGPATH%\mxs40srom_func_12.txt  2> %LOGPATH%\mxs40srom_func_12_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_13.tcl   1> %LOGPATH%\mxs40srom_func_13.txt  2> %LOGPATH%\mxs40srom_func_13_error.txt 
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_14.tcl   1> %LOGPATH%\mxs40srom_func_14.txt  2> %LOGPATH%\mxs40srom_func_14_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_15.tcl   1> %LOGPATH%\mxs40srom_func_15.txt  2> %LOGPATH%\mxs40srom_func_15_error.txt 
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_16.tcl   1> %LOGPATH%\mxs40srom_func_16.txt  2> %LOGPATH%\mxs40srom_func_16_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_17.tcl   1> %LOGPATH%\mxs40srom_func_17.txt  2> %LOGPATH%\mxs40srom_func_17_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_18.tcl   1> %LOGPATH%\mxs40srom_func_18.txt  2> %LOGPATH%\mxs40srom_func_18_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_19.tcl   1> %LOGPATH%\mxs40srom_func_19.txt  2> %LOGPATH%\mxs40srom_func_19_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_23.tcl   1> %LOGPATH%\mxs40srom_func_23.txt  2> %LOGPATH%\mxs40srom_func_23_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_25.tcl   1> %LOGPATH%\mxs40srom_func_25.txt  2> %LOGPATH%\mxs40srom_func_25_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_26.tcl   1> %LOGPATH%\mxs40srom_func_26.txt  2> %LOGPATH%\mxs40srom_func_26_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_29.tcl   1> %LOGPATH%\mxs40srom_func_29.txt  2> %LOGPATH%\mxs40srom_func_29_error.txt REM takes too long
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_30.tcl   1> %LOGPATH%\mxs40srom_func_30.txt  2> %LOGPATH%\mxs40srom_func_30_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_31.tcl   1> %LOGPATH%\mxs40srom_func_31.txt  2> %LOGPATH%\mxs40srom_func_31_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_33.tcl   1> %LOGPATH%\mxs40srom_func_33.txt  2> %LOGPATH%\mxs40srom_func_33_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ProgramHexDirecExSRAM.tcl   1> %LOGPATH%\ProgramHexDirecExSRAM.txt  2> %LOGPATH%\ProgramHexDirecExSRAM_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_34_vn.tcl   1> %LOGPATH%\mxs40srom_func_34_v.txt  2> %LOGPATH%\mxs40srom_func_34_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ProgramHexDirecExFlash.tcl   1> %LOGPATH%\ProgramHexDirecExFlash.txt  2> %LOGPATH%\ProgramHexDirecExFlash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_35_vn.tcl   1> %LOGPATH%\mxs40srom_func_35_v.txt  2> %LOGPATH%\mxs40srom_func_35_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ProgramHexDirecExSRAM.tcl   1> %LOGPATH%\ProgramHexDirecExSRAM.txt  2> %LOGPATH%\ProgramHexDirecExSRAM_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_36_vn.tcl   1> %LOGPATH%\mxs40srom_func_36_v.txt  2> %LOGPATH%\mxs40srom_func_36_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ProgramHexDirecExFlash.tcl   1> %LOGPATH%\ProgramHexDirecExFlash.txt  2> %LOGPATH%\ProgramHexDirecExFlash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_37_vn.tcl   1> %LOGPATH%\mxs40srom_func_37_v.txt  2> %LOGPATH%\mxs40srom_func_37_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_39.tcl   1> %LOGPATH%\mxs40srom_func_39.txt  2> %LOGPATH%\mxs40srom_func_39_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_42.tcl   1> %LOGPATH%\mxs40srom_func_42.txt  2> %LOGPATH%\mxs40srom_func_42_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_44.tcl   1> %LOGPATH%\mxs40srom_func_44.txt  2> %LOGPATH%\mxs40srom_func_44_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_48.tcl   1> %LOGPATH%\mxs40srom_func_48.txt  2> %LOGPATH%\mxs40srom_func_48_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_49.tcl   1> %LOGPATH%\mxs40srom_func_49.txt  2> %LOGPATH%\mxs40srom_func_49_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_50.tcl   1> %LOGPATH%\mxs40srom_func_50.txt  2> %LOGPATH%\mxs40srom_func_50_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_51.tcl   1> %LOGPATH%\mxs40srom_func_51.txt  2> %LOGPATH%\mxs40srom_func_51_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_54.tcl   1> %LOGPATH%\mxs40srom_func_54.txt  2> %LOGPATH%\mxs40srom_func_54_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_66.tcl   1> %LOGPATH%\mxs40srom_func_66.txt  2> %LOGPATH%\mxs40srom_func_66_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_67.tcl   1> %LOGPATH%\mxs40srom_func_67.txt  2> %LOGPATH%\mxs40srom_func_67_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_78.tcl   1> %LOGPATH%\mxs40srom_func_78.txt  2> %LOGPATH%\mxs40srom_func_78_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_79.tcl   1> %LOGPATH%\mxs40srom_func_79.txt  2> %LOGPATH%\mxs40srom_func_79_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_80.tcl   1> %LOGPATH%\mxs40srom_func_80.txt  2> %LOGPATH%\mxs40srom_func_80_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_81.tcl   1> %LOGPATH%\mxs40srom_func_81.txt  2> %LOGPATH%\mxs40srom_func_81_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_89.tcl   1> %LOGPATH%\mxs40srom_func_89.txt  2> %LOGPATH%\mxs40srom_func_89_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_90.tcl   1> %LOGPATH%\mxs40srom_func_90.txt  2> %LOGPATH%\mxs40srom_func_90_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_93.tcl   1> %LOGPATH%\mxs40srom_func_93.txt  2> %LOGPATH%\mxs40srom_func_93_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_98_vn.tcl  1> %LOGPATH%\mxs40srom_func_98_v.txt 2> %LOGPATH%\mxs40srom_func_98_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_99_v.tcl  1> %LOGPATH%\mxs40srom_func_99_v.txt 2> %LOGPATH%\mxs40srom_func_99_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_100_vn.tcl  1> %LOGPATH%\mxs40srom_func_100_v.txt 2> %LOGPATH%\mxs40srom_func_100_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_131.tcl  1> %LOGPATH%\mxs40srom_func_131.txt 2> %LOGPATH%\mxs40srom_func_131_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_134.tcl  1> %LOGPATH%\mxs40srom_func_134.txt 2> %LOGPATH%\mxs40srom_func_134_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_138.tcl  1> %LOGPATH%\mxs40srom_func_138.txt 2> %LOGPATH%\mxs40srom_func_138_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_141.tcl  1> %LOGPATH%\mxs40srom_func_141.txt 2> %LOGPATH%\mxs40srom_func_141_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_140_vnsd.tcl  1> %LOGPATH%\mxs40srom_func_140_v.txt 2> %LOGPATH%\mxs40srom_func_140_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_143_vnsd.tcl  1> %LOGPATH%\mxs40srom_func_143_v.txt 2> %LOGPATH%\mxs40srom_func_143_v_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_167_vnsd.tcl  1> %LOGPATH%\mxs40srom_func_167_v.txt 2> %LOGPATH%\mxs40srom_func_167_v_error.txt

%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_29.tcl   1> %LOGPATH%\mxs40srom_func_29.txt  2> %LOGPATH%\mxs40srom_func_29_error.txt 
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_158.tcl  1> %LOGPATH%\mxs40srom_func_158.txt 2> %LOGPATH%\mxs40srom_func_158_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_169.tcl  1> %LOGPATH%\mxs40srom_func_169.txt 2> %LOGPATH%\mxs40srom_func_169_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_170.tcl  1> %LOGPATH%\mxs40srom_func_170.txt 2> %LOGPATH%\mxs40srom_func_170_error.txt
goto :END
:END