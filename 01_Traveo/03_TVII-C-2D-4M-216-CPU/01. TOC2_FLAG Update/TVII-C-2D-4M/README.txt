Steps for the updating of the TOC2_FLAG - 

1. Extract the TVII-C2D-4M zipped file
2. Copy the extracted file and paste it into Windows C:
3. See the all .tcl files on -   C:\TVII-C-2D-4M\DAP\scripts\HelperScripts\UpdateTOC2.tcl
4. If needed then make some changes in UpdateTOC2.tcl file				- (no need, already updated)	
5. Go to C:\TVII-C-2D-4M\DAP\scripts and open the command prompt
6. Connect the MiniProg4 to the DUT Board
7. Then copy the below command and run it into command prompt

..\bin\openocd.exe -f HelperScripts\UpdateTOC2.tcl




NOTE :-
If you want to run it for other devices then you have to change the device name inside the "SROM_Defines.tcl" file (set DUT $TVIIC2D6M_SILICON) and (set DUT_NAME "TVIIC2D6M_SILICON").

