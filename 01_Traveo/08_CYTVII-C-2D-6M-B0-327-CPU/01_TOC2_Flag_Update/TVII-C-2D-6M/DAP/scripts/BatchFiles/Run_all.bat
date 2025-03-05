set OPEN_OCD="..\bin\openocd.exe"
set Helper_Script="HelperScripts"
set FPGA_path="..\..\..\Bitfile\xilinx\bin\windows_x86_64"
set script_path=%CD%
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_1.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_2.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_3.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_4.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_5.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_6.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_7.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_8.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_9.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_10.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_11.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_12.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_13.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_14.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_15.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_16.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_17.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_18.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_19.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_20.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_20A.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_21.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_22.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_22A.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_23.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_26.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_27.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_28.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\Test_CFG_29.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\VirginToRMA_2K.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\VirginToRMA_3K.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%

call BatchFiles\Run_all_prerequisites.bat
call BatchFiles\VirginToRMA_4K.bat