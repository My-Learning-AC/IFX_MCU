Steps for the updating of the TOC2_FLAG - 

1. Extract the TVII-C2D-6M zipped file
2. Copy the extracted file and paste it into Windows C:
3. See the all .tcl files on -   C:\TVII-C-2D-6M\DAP\scripts\HelperScripts\UpdateTOC2.tcl
4. If needed then make some changes in UpdateTOC2.tcl file	- (Ignore this, already updated)
5. Go to C:\TVII-C-2D-6M\DAP\scripts directory and open the command prompt
6. Connect the MiniProg4 to the DUT Board
7. Then copy the below command and run it into command prompt



..\bin\openocd.exe -f HelperScripts\UpdateTOC2.tcl   