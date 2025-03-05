set OPEN_OCD="..\bin\openocd.exe"
REM set PI="C:\Perl64\bin\perl.exe"
REM set BITFILE="BitFile_18042002"
REM set LOGPATH="Log"
REM set TEST_SCRIPTS="..\PerlScripts"
REM if not exist "%LOGPATH%" mkdir "%LOGPATH%"
REM %OPEN_OCD% -f UpdateSROMDat.tcl > Log\UpdateSROM.txt
%OPEN_OCD% -f Program_PKey_FB.tcl > Log\1_Program_PKey_FB.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f Program_Toc2_Blinky.tcl > Log\2_Program_Toc2_Blinky.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f BasicTest.tcl > Log\3_BasicTest.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f VirginToSort_ApplyTrimsFromSflash.tcl > Log\4_VirginToSort_ApplyTrimsFromSFlash.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f BasicTest.tcl > Log\5_BasicTest.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f SortToProvisioned.tcl > Log\6_SortToProvisioned.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f BasicTest.tcl > Log\7_BasicTest.txt
%OPEN_OCD% -f reset.tcl
%OPEN_OCD% -f UpdateTOC1.tcl > Log\8_UpdateTOC1.txt
%OPEN_OCD% -f reset.tcl
REM %OPEN_OCD% -f UpdateTOC2.tcl > Log\8_UpdateTOC2.txt
REM %OPEN_OCD% -f UpdateUID.tcl > Log\7_UpdateUID.txt
REM %OPEN_OCD% -f Program_Toc2_Blinky_basic.tcl > Log\7A_Program_Toc2_Blinky_basic.txt
REM %OPEN_OCD% -f ProvisionedToNormalProvisioned.tcl > Log\9_ProvisionedToNormalProvisioned.txt
REM %OPEN_OCD% -f reset.tcl
REM %OPEN_OCD% -f BasicTest.tcl > Log\10_BasicTest.txt
REM %OPEN_OCD% -f reset.tcl
REM %OPEN_OCD% -f Program_Toc2_Blinky.tcl > Log\11_Program_Toc2_Blinky.txt
REM %OPEN_OCD% -f NormalProvisionedToSecure.tcl > Log\11_NormalProvisionedToSecure.txt
REM %OPEN_OCD% -f reset.tcl
REM %OPEN_OCD% -f BasicTest.tcl > Log\12_BasicTest.txt
REM %OPEN_OCD% -f reset.tcl
REM %OPEN_OCD% -f TransitionToRma.tcl > Log\13_TransitionToRma.txt