set OPEN_OCD="..\bin\openocd.exe"
set SILICON_NUMBER="309\Normal\Regression_001"
 
set LOGPATH="..\Reports\%SILICON_NUMBER%"
set TEST_SCRIPTS="CQ_SCRIPTS"
if not exist "%LOGPATH%" mkdir "%LOGPATH%"


%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_20_n.tcl   1> %LOGPATH%\mxs40srom_func_20_n.txt  2> %LOGPATH%\mxs40srom_func_20_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_21_n.tcl   1> %LOGPATH%\mxs40srom_func_21_n.txt  2> %LOGPATH%\mxs40srom_func_21_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_27_n.tcl   1> %LOGPATH%\mxs40srom_func_27_n.txt  2> %LOGPATH%\mxs40srom_func_27_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_28_ns.tcl  1> %LOGPATH%\mxs40srom_func_28_n.txt 2> %LOGPATH%\mxs40srom_func_28_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ProgramHexDirecExFlash.tcl   1> %LOGPATH%\ProgramHexDirecExFlash.txt  2> %LOGPATH%\ProgramHexDirecExFlash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_38_n.tcl  1> %LOGPATH%\mxs40srom_func_38_n.txt 2> %LOGPATH%\mxs40srom_func_38_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_43_ns.tcl  1> %LOGPATH%\mxs40srom_func_43_n.txt 2> %LOGPATH%\mxs40srom_func_43_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_146.tcl    1> %LOGPATH%\mxs40srom_func_146.txt   2> %LOGPATH%\mxs40srom_func_146_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_147.tcl    1> %LOGPATH%\mxs40srom_func_147.txt   2> %LOGPATH%\mxs40srom_func_147_error.txt
REM %OPEN_OCD% -f %TEST_SCRIPTS%\UpdateAppProt.tcl          1> %LOGPATH%\UpdateAppProt.txt       2> %LOGPATH%\UpdateAppProt_error.txt
REM %OPEN_OCD% -f %TEST_SCRIPTS%\CheckWriteRowProgramRowEraseSectorOnProtectedFlash.tcl  1> %LOGPATH%\CheckWriteRowProgramRowEraseSectorOnProtectedFlash.txt 2> %LOGPATH%\CheckWriteRowProgramRowEraseSectorOnProtectedFlash_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\ReadDevSecretKeyFuses.tcl  1> %LOGPATH%\ReadDevSecretKeyFuses.txt 2> %LOGPATH%\ReadDevSecretKeyFuses_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_85_vn.tcl   1> %LOGPATH%\mxs40srom_func_85_n.txt  2> %LOGPATH%\mxs40srom_func_85_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_86_vn.tcl   1> %LOGPATH%\mxs40srom_func_86_n.txt  2> %LOGPATH%\mxs40srom_func_86_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_87_vn.tcl   1> %LOGPATH%\mxs40srom_func_87_n.txt  2> %LOGPATH%\mxs40srom_func_87_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_94_n.tcl  1> %LOGPATH%\mxs40srom_func_94_n.txt 2> %LOGPATH%\mxs40srom_func_94_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_95_ns.tcl  1> %LOGPATH%\mxs40srom_func_95_n.txt 2> %LOGPATH%\mxs40srom_func_95_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_96_ns.tcl  1> %LOGPATH%\mxs40srom_func_96_n.txt 2> %LOGPATH%\mxs40srom_func_96_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_98_vn.tcl  1> %LOGPATH%\mxs40srom_func_98_n.txt 2> %LOGPATH%\mxs40srom_func_98_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_99_v.tcl  1> %LOGPATH%\mxs40srom_func_99_n.txt 2> %LOGPATH%\mxs40srom_func_99_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_100_vn.tcl  1> %LOGPATH%\mxs40srom_func_100_n.txt 2> %LOGPATH%\mxs40srom_func_100_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_108_vn.tcl  1> %LOGPATH%\mxs40srom_func_108_n.txt 2> %LOGPATH%\mxs40srom_func_108_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_111_n.tcl  1> %LOGPATH%\mxs40srom_func_111_n.txt 2> %LOGPATH%\mxs40srom_func_111_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_113_s.tcl  1> %LOGPATH%\mxs40srom_func_113_s.txt 2> %LOGPATH%\mxs40srom_func_113_s_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_115_ns.tcl  1> %LOGPATH%\mxs40srom_func_115_n.txt 2> %LOGPATH%\mxs40srom_func_115_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_140_vnsd.tcl  1> %LOGPATH%\mxs40srom_func_140_n.txt 2> %LOGPATH%\mxs40srom_func_140_n_error.txt
%OPEN_OCD% -f %TEST_SCRIPTS%\mxs40srom_func_143_vnsd.tcl  1> %LOGPATH%\mxs40srom_func_143_n.txt 2> %LOGPATH%\mxs40srom_func_143_n_error.txt

 
goto :END


:END