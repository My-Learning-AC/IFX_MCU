set OPEN_OCD="..\bin\openocd.exe"
REM set PI="C:\Perl64\bin\perl.exe"
REM set BITFILE="BitFile_18042002"
REM set LOGPATH="..\Reports\%BITFILE%\Normal"
REM set TEST_SCRIPTS="..\PerlScripts"
REM if not exist "%LOGPATH%" mkdir "%LOGPATH%"
%OPEN_OCD% -f UpdateSROMDat.tcl > Log\UpdateSROM.txt
%OPEN_OCD% -f BasicTest.tcl > Log\1_BasicTest.txt
%OPEN_OCD% -f VirginToSort_ApplyTrimsFromSflash.tcl > Log\2_VirginToSort_ApplyTrimsFromSFlash.txt
%OPEN_OCD% -f BasicTest.tcl > Log\3_BasicTest.txt
%OPEN_OCD% -f SortToProvisioned.tcl > Log\4_SortToProvisioned.txt
%OPEN_OCD% -f BasicTest.tcl > Log\5_BasicTest.txt
%OPEN_OCD% -f UpdateTOC1.tcl > Log\6_UpdateTOC1.txt
%OPEN_OCD% -f UpdateNAR_NDAR.tcl > Log\7_UpdateNAR_NDAR.txt
%OPEN_OCD% -f Program_PKey_FB.tcl > Log\7A_Program_PKey_FB.txt
%OPEN_OCD% -f ProvisionedToNormalProvisioned.tcl > Log\8_ProvisionedToNormalProvisioned.txt
%OPEN_OCD% -f BasicTest.tcl > Log\9_BasicTest.txt
