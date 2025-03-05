set OPEN_OCD="..\bin\openocd.exe"
set Helper_Script="HelperScripts"
set FPGA_path="..\..\..\PSVP\xilinx\bin\windows_x86_64"
set script_path=%CD%
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_1.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_2.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%
%OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
call BatchFiles\Test_CFG_3.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%
%OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
call BatchFiles\Test_CFG_4.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_5.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_6.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_7.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_8.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_9.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%
%OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
call BatchFiles\Test_CFG_10.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%
%OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
call BatchFiles\Test_CFG_11.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_12.bat
cd %FPGA_path%
profpga_run.exe system.cfg -u
cd %script_path%
%OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
call BatchFiles\Test_CFG_13.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_14.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_15.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_16.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_17.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_18.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_19.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_20.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_20A.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_21.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_22.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_22A.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_23.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_26.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_27.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_28.bat
@rem cd %FPGA_path%
@rem profpga_run.exe system.cfg -u
@rem cd %script_path%
@rem %OPEN_OCD% -f %Helper_Script%\Program_OTP_address.tcl
@rem call BatchFiles\Test_CFG_29.bat