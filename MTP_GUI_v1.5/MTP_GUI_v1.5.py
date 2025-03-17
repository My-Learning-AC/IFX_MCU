"""
File Description:
    This code is for a interactive GUI interface used for testing the various automotive families mcu's from Infineon.

Date:
    21-02-2025

Version:
    1.5

"""

#-----------------------------------------------------------------------------------------------------------------------------------#

# Importing the Required Python Packages and Libraries 
import os
import sys
import serial
import tkinter
import threading
import subprocess
import serial.tools.list_ports
from fpdf import FPDF
from datetime import date
from PIL import ImageTk, Image
from tkinter import messagebox
from time import strftime, localtime
from configparser import ConfigParser, ExtendedInterpolation

#-----------------------------------------------------------------------------------------------------------------------------------#

# Declaration of Global Variables
Mcu_Device_Family = ''
Mcu_Chip_Config_File = ''

Firmware1_Path = ''
Firmware2_Path = ''
Firmware3_Path = ''

Test_Case_Index = 0
Test_Case_List = []

Instructions_List = ''
StoryBoard_Images_Path = ''
StoryBoard_Lable_Object = None

Old_MTP_Py_Config_File = False
Test_Report_Saved_Flag = False

Test_Report_PDF = None

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function to automatically detect the COM port
def Auto_Detect_Com_Port():

    com_port = None 

    # Listing all available COM ports
    ports = list(serial.tools.list_ports.comports())  

    # Iterating through the available ports
    for port in ports:  

        # Converting port to string
        port = str(port)  

        # Checking if the port contains keywords related to USB Serial, KitProg3, or Infineon DAS
        if (port.find('USB Serial') != -1) or (port.find('KitProg3') != -1) or (port.find('Infineon DAS') != -1):
           
            # Setting com_port to the found port
            com_port = port.split('-')[0]  

            # Printing the auto connection message
            print(" Auto Connect to ", com_port, " Done")  

    # Returning the detected COM port
    return com_port  

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function to get the MCU device name (Traveo or Aurix or PSoC)
def Get_Mcu_Device_Name():

    # Iterating through the Board_Family list
    for mcu in Board_Family:  

        # Iterating through EachFamily in mcu
        for EachFamily in mcu[1:]:  

            # Iterating through EachBoard in EachFamily
            for EachBoard in EachFamily[1:]:  

                # Checking if EachBoard matches the value of var
                if EachBoard == var.get():  

                    # Returning the MCU name
                    return mcu[0]  
                
    # Returning an empty string if no match is found
    return ''  

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for updating the Storyboard Images
def UpdateStoryBoard(Test_Case_Index):

    # Loading the image based on Test_Case_Index and also handling the error
    try:
        img = Image.open(StoryBoard_Images_Path + str(Test_Case_Index) + ".png")
    except:
        img = Image.open(StoryBoard_Images_Path + str(0) + ".png")

    # Resizing the image
    img = img.resize((530, 430), Image.LANCZOS)  

    # Converting the image to PhotoImage
    img = ImageTk.PhotoImage(img)  

    # Creating a label with the image
    DevicePrompt = tkinter.Label(Main_Application, image = img)  

    # Keeping a reference to the image
    DevicePrompt.image = img  

    # Placing the label on the window
    DevicePrompt.place(x = 580, y = 175)  

    # Update the Current test name
    DevicePrompt1 = tkinter.Label(Main_Application, bg = 'plum2', font = ("Arial", 12, "bold"), relief = tkinter.FLAT, text = "Current Test :  " + str(Test_Case_List[Test_Case_Index]) + "                    ")

    # Placing the label on the window
    DevicePrompt1.place(x = 580, y = 150) 

    # Clearing the message box
    Message_Box2.delete(1.0, tkinter.END)  

    # Inserting instructions in the message box
    Message_Box2.insert(tkinter.END, Instructions_List[Test_Case_Index] + '\n')  
    
    # Ensuring the end of the message box is visible
    Message_Box2.see("end")  

    # Returning the created labels
    return [DevicePrompt, DevicePrompt1]  

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for Flashing the Firmware1 to the MCU device 
def Flash_Firmware1():

    # Global Variables and List
    Program_Command = []  
    global Test_Case_Index  
    global StoryBoard_Lable_Object  

    # For flashing the code to Traveo or PSoC family MCUs
    if Mcu_Device_Family == 'Traveo' or Mcu_Device_Family == 'PSoC' or Old_MTP_Py_Config_File == True:

        # Changing the current working directory to Traveo_FlashTool_Path
        os.chdir(AutoFlashUtility_Tool_Path)

        # Printing a message for programming the device
        print("Programming Device...")

        # Getting the list of files from the Firmware1_Path directory
        Srec_Files = os.listdir(Firmware1_Path)  

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):  

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Traveo or PSoC Devices
            Program_Command.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/' + Mcu_Chip_Config_File + ' -c "program ' + Firmware1_Path + Srec_Files[FileCount] + ' verify; exit"'))

    # For flashing the code to Aurix family MCUs
    elif Mcu_Device_Family == 'Aurix':

        # Changing the current working directory to Aurix_Flasher_Tool_Path
        os.chdir(Aurix_Flasher_Tool_Path)

        # Printing a message for programming the device
        print("Programming Device...")

        # Getting the list of files from the Firmware1_Path directory
        Srec_Files = os.listdir(Firmware1_Path)

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Aurix devices
            Program_Command.append(os.system(r'.\AURIXFlasher.exe -hex ' + Firmware1_Path + Srec_Files[FileCount] + ' -ucb on'))

    # Iterating through the Program_Command list
    for Each_Core_Result in Program_Command:
        
        # Updating Program_Command based on Each_Core_Result
        Program_Command = not(Each_Core_Result) and 1  

    # Printing the Firmware1 Programming Results in the Message Box
    if Program_Command == 1: 

        # Inserting a success message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Successfully\n\n")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    else:

        # Inserting a failure message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Failed")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    # Resetting Test_Case_Index to 0
    Test_Case_Index = 0  

    # Updating StoryBoard_Lable_Object based on Test_Case_Index
    StoryBoard_Lable_Object = UpdateStoryBoard(Test_Case_Index)  

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for Flashing the Firmware2 to the MCU device 
def Flash_Firmware2():

    # Global Variables and List
    Program_Command = []
    global StoryBoard_Lable_Object

    # For flashing the code to Traveo or PSoC family MCUs
    if Mcu_Device_Family == 'Traveo' or Mcu_Device_Family == 'PSoC' or Old_MTP_Py_Config_File == True:

        # Changing the current working directory to AutoFlashUtility_Tool_Path
        os.chdir(AutoFlashUtility_Tool_Path)  

        # Printing a message for programming the device
        print("Programming Device...")  

        # Getting the list of files in the Firmware2_Path directory
        Srec_Files = os.listdir(Firmware2_Path)  

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):  

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Traveo or PSoC Devices
            Program_Command.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/' + Mcu_Chip_Config_File + ' -c "program ' + Firmware2_Path + Srec_Files[FileCount] + ' verify; exit"'))

    # For flashing the code to Aurix family MCUs
    elif Mcu_Device_Family == 'Aurix':

        # Changing the current working directory to Aurix_Flasher_Tool_Path
        os.chdir(Aurix_Flasher_Tool_Path)  

        # Printing a message for programming the device
        print("Programming Device...")  

        # Getting the list of files in the Firmware2_Path directory
        Srec_Files = os.listdir(Firmware2_Path)  

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):  

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Aurix Devices
            Program_Command.append(os.system(r'.\AURIXFlasher.exe -hex ' + Firmware2_Path + Srec_Files[FileCount]))

    # Iterating through the Program_Command list
    for Each_Core_Result in Program_Command:  

        # Updating Program_Command based on Each_Core_Result
        Program_Command = not(Each_Core_Result) and 1  

    # Printing the Firmware2 Programming Results in the Message Box
    if Program_Command == 1: 

        # Inserting a success message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Successfully\n\n")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    else:

        # Inserting a failure message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Failed")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    # Updating StoryBoard_Lable_Object with "jtag"
    StoryBoard_Lable_Object = UpdateStoryBoard("jtag")  

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for Flashing the Firmware3 to the MCU device 
def Flash_Firmware3():

    # Global Variables and List
    Program_Command = []
    global StoryBoard_Lable_Object

    # For flashing the code to Traveo MCU or PSoC MCU
    if Mcu_Device_Family == 'Traveo' or Mcu_Device_Family == 'PSoC' or Old_MTP_Py_Config_File == True:

        # Changing the current working directory to AutoFlashUtility_Tool_Path
        os.chdir(AutoFlashUtility_Tool_Path)  

        # Printing a message for programming the device
        print("Programming Device...")  

        # Getting the list of files in the Firmware3_Path directory
        Srec_Files = os.listdir(Firmware3_Path)  

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):  

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Traveo or PSoC Devices
            Program_Command.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/' + Mcu_Chip_Config_File + ' -c "program ' + Firmware3_Path + Srec_Files[FileCount] + ' verify; exit"'))

    # For flashing the code to Aurix MCU
    elif Mcu_Device_Family == 'Aurix':

        # Changing the current working directory to Aurix_Flasher_Tool_Path
        os.chdir(Aurix_Flasher_Tool_Path)  

        # Printing a message for programming the device
        print("Programming Device...")  

        # Getting the list of files in the Firmware3_Path directory
        Srec_Files = os.listdir(Firmware3_Path)  

        # Iterating through the SREC files in reverse order
        for FileCount in range(len(Srec_Files) - 1, -1, -1):  

            # Appending the Programming Command for flashing the firmware to variable Program_Command for Aurix Devices
            Program_Command.append(os.system(r'.\AURIXFlasher.exe -hex ' + Firmware3_Path + Srec_Files[FileCount]))

    # Iterating through the Program_Command list
    for Each_Core_Result in Program_Command:  

        # Updating Program_Command based on Each_Core_Result
        Program_Command = (not(Each_Core_Result) and 1)  

    # Printing the Firmware3 Programming Results in the Message Box
    if Program_Command == 1:

        # Inserting a success message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Successfully\n\n")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    else:

        # Inserting a failure message in the message box
        Message_Box.insert(tkinter.END, "\n Device Flashed Failed")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    # Updating StoryBoard_Lable_Object with "shipping"
    StoryBoard_Lable_Object = UpdateStoryBoard("shipping")  

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Erase button
def Erase_Button_Func():
    
    # For erasing the Traveo or PSoC MCU
    if Mcu_Device_Family == 'Traveo' or Mcu_Device_Family == 'PSoC' or Old_MTP_Py_Config_File == True:

        # Changing the current working directory to AutoFlashUtility_Tool_Path
        os.chdir(AutoFlashUtility_Tool_Path)  

        # Printing a message for erasing the device
        print("Erasing Device...")  

        # Erasing the Traveo or PSoC MCU
        Erase_Status = os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/' + Mcu_Chip_Config_File + ' -c "init; reset init; flash erase_sector 0 0 last; shutdown"')
    
    # For erasing the Aurix MCU
    elif Mcu_Device_Family == 'Aurix':

        # Changing the current working directory to Aurix_Flasher_Tool_Path
        os.chdir(Aurix_Flasher_Tool_Path)  

         # Printing a message for erasing the device
        print("Erasing Device...") 

        # Erasing the Aurix MCU
        Erase_Status = os.system(r'AURIXFlasher.exe -erase all')
    
    # Printing the MCU Flash Erasing status in the Message Box
    if Erase_Status == 0: 

        # Inserting a success message in the message box
        Message_Box.insert(tkinter.END, "\n Device Erased Successfully\n\n")  

        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

    else:

        # Inserting a failure message in the message box
        Message_Box.insert(tkinter.END, "\n Device Erased Failed\n\n")  
        
        # Ensuring the end of the message box is visible
        Message_Box.see("end")  

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Start button
def Start_Button_Func():

    # Global variable
    global Test_Report_Saved_Flag

    # Set the test report saved flag to false
    Test_Report_Saved_Flag = False

    # Write a carriage return to the serial object
    serial_object.write(bytes('\r', 'utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Forward button
def Forward_Button_Func():

    # Global variables
    global Test_Case_Index
    global StoryBoard_Lable_Object

    # Destroy existing objects in the storyboard
    for EachObject in StoryBoard_Lable_Object:
        if EachObject != None:
            EachObject.destroy()

    # Increment the test case index
    Test_Case_Index = Test_Case_Index + 1

    # If the test case index reaches the end of the list, then set Test_Case_Index to 0 
    if Test_Case_Index == len(Test_Case_List):
        Test_Case_Index = 0

    # Convert the test case index to a formatted string
    Test_Case_IndexStr = str((int)(Test_Case_Index/10)) + str(Test_Case_Index%10)

    # Construct the string to send
    StringToSend = 'Tc:' + str(Test_Case_IndexStr) + ';'    # Example: StringToSend = 'Tc:05;'

    # Write the string to the serial object
    serial_object.write(bytes(StringToSend, 'utf-8'))       # Prefix some str before Tc idx for security

    # Update the storyboard label object
    StoryBoard_Lable_Object = UpdateStoryBoard(Test_Case_Index)

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Backward button
def Backward_Button_Func():

    # Global variables
    global Test_Case_Index
    global StoryBoard_Lable_Object

    # Destroy existing objects in the storyboard
    for EachObject in StoryBoard_Lable_Object:
        if EachObject != None:
            EachObject.destroy()

    # Decrement the test case index
    Test_Case_Index = Test_Case_Index - 1
    if Test_Case_Index < 0:
        Test_Case_Index = len(Test_Case_List) - 1

    # Convert the test case index to a formatted string
    Test_Case_IndexStr = str((int)(Test_Case_Index/10)) + str(Test_Case_Index%10)

    # Construct the string to send
    StringToSend = 'Tc:' + str(Test_Case_IndexStr) + ';'    # Example: StringToSend = 'Tc:05;'

    # Write the string to the serial object
    serial_object.write(bytes(StringToSend, 'utf-8'))       # Prefix some str before Tc idx for security

    # Update the storyboard label object
    StoryBoard_Lable_Object = UpdateStoryBoard(Test_Case_Index)

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Skip button
def Skip_Button_Func():

    # Writing the '\x03' character to the screen 
    serial_object.write('\x03'.encode())

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Pass button
def Pass_Button_Func():

    # Writing the 'p' character to the screen 
    serial_object.write(bytes('p', 'utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Fail button
def Fail_Button_Func():

    # Writing the 'f' character to the screen 
    serial_object.write(bytes('f', 'utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

# This Function will be called, when user will press the Save and End button
def Save_and_End_Button_Func():

    # Global variables
    global Test_Report_Saved_Flag
    global Test_Report_PDF

    # Check if Technician Name and Board Serial number are not empty
    if len(Technician_Name.get()) != 0 and len(Board_Serial_Number.get()) != 0:

        # Get current date and time in the specified format
        MTP_GUI_Version = 'v1.5'
        CurrDate  = strftime(r"%d/%m/%Y", localtime())
        CurrTime  = strftime(r"%H:%M:%S", localtime())
        CurrTime1 = strftime(r"%d_%m_%Y", localtime())

        # Write information to the test report PDF
        Test_Report_PDF.write(5, '\n' + "Board Testing Date   : " + CurrDate + '\n')
        Test_Report_PDF.write(5, '\n' + "Board Testing Time   : " + CurrTime + '\n')
        Test_Report_PDF.write(5, '\n' + "Board Serial Number  : " + Board_Serial_Number.get() + '\n')
        Test_Report_PDF.write(5, '\n' + "Technician Name      : " + Technician_Name.get() + '\n')
        Test_Report_PDF.write(5, '\n' + "MTP Tool Version     : " + MTP_GUI_Version + '\n')
        Test_Report_PDF.output(Test_Report_Path + "Test_Report_" + Board_Serial_Number.get() + '_' + CurrTime1 + ".pdf")

        # Set the test report saved flag to true
        Test_Report_Saved_Flag = True
        Test_Report_PDF = None

        # Show success message
        messagebox.showinfo("Success", "Report Saved successfully")

        # Close the main application
        Main_Application.destroy()

    else:

        # Show a warning message if Technician Name and Board Serial number are empty
        messagebox.showinfo("Warning", "Please fill Board Serial Number and Technician Name")

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for Selecting the MCU Device and configuring the global variables
def Device_Select():

    # Global variables
    global Test_Case_List
    global TestCaseStatus
    global Firmware1_Path
    global Firmware2_Path
    global Firmware3_Path
    global Instructions_List
    global Mcu_Device_Family 
    global Mcu_Chip_Config_File
    global StoryBoard_Images_Path
    global StoryBoard_Lable_Object

    # Iterate through the Boards_List
    for EachBoard in Boards_List:

        # Check if the selected board matches the current iteration board
        if EachBoard[0] == var.get():  
           
            # Store the MCU device name into Mcu_Device_Family variable
            Mcu_Device_Family = Get_Mcu_Device_Name()  
            
            # Set the MCU chip configuration file
            Mcu_Chip_Config_File = EachBoard[2]  
            
            # Initialize test case status list
            TestCaseStatus = [0] * len(EachBoard[3])  
            
            # Set the path for Storyboard images
            StoryBoard_Images_Path = EachBoard[1] + r"/StoryBoardPictures/"  
            
            # Set the list of test cases
            Test_Case_List = EachBoard[-1]  
            
            # Set the path for Firmware 1, Firmware 2 and Firmware 3
            Firmware1_Path = EachBoard[1] + '/Test_FW/'  
            Firmware2_Path = EachBoard[1] + '/JTAG_Test_FW/'  
            Firmware3_Path = EachBoard[1] + '/Shipping_FW/'  
            
            # Set the path for instructions
            InstructionPath = EachBoard[1] + '/Logs/'  
            
            # Open the 'instruction.txt' file and read the lines of instructions
            fp = open(InstructionPath + 'Instructions.txt', 'r')  
            Instructions_List = fp.readlines()  
     
            # Prompt for device selection
            StringPrompt = ("\n\n Device Selected    -  " + EachBoard[0] + "\n\n")  
                            
            # Insert the device selection prompt in the message box and ensure the end of the message box is visible
            Message_Box.insert(tkinter.END, StringPrompt)  
            Message_Box.see("end")  

            # Update the storyboard label object
            StoryBoard_Lable_Object = UpdateStoryBoard(Test_Case_Index)

#-----------------------------------------------------------------------------------------------------------------------------------#

# Function for handling data received over UART
def UARTRxHandler(dummy):

    # Print a message to indicate the UART receive thread has started
    print("UART_Rx Thread Started...")  

    # Global variables
    UARTString = "" 
    LogFlag = False
    StartFlag = False
    global Test_Case_Index  
    
    # Start an infinite loop for continuous UART data receive handling
    while True:  

        try:

            # Read UART character and decode it from utf-8 encoding
            UARTChar = serial_object.read().decode("utf-8")  

            # Concatenate the decoded UART character to the UARTString
            UARTString += UARTChar  

            # Check if the UART character is a new line or carriage return
            if UARTChar == "\n" or UARTChar == "\r":  

                # Check if the UARTString contains 'log:'
                if UARTString.find('log:') != -1:  
                    LogFlag = True  

                # Check if the UARTString contains 'ins:'
                elif UARTString.find('ins:') != -1:  
                    LogFlag = False

                # Check if the UARTString contains 'cmd:start'
                elif UARTString.find('cmd:start') != -1:  
                    LogFlag = False  
                    StartFlag = True  
                    
                # Split the UARTString by ':' and take the last part
                UARTString = UARTString.split(':')[-1]  

                # Check if StartFlag is True
                if StartFlag == True:  

                    # Set Test_Case_Index to 0 and StartFlag as False
                    Test_Case_Index = 0  
                    StartFlag = False

                else:

                    # Print the UARTString
                    print(UARTString)  

                    # Insert the UARTString into the Message_Box
                    Message_Box.insert(tkinter.END, UARTString + '\n')  

                    # Strip any leading/trailing whitespaces from the UARTString
                    UARTString = UARTString.strip()  

                # Check if the length of UARTString is greater than 2
                if len(UARTString) > 2:  

                    # Split the UARTString by space
                    StrParts = UARTString.split(' ')  

                    # Check if the last part of StrParts is "Test"
                    if StrParts[-1] == "Test":  

                        # Set fill color for Test Report PDF
                        Test_Report_PDF.set_fill_color(255, 255, 204)  

                        # Add a cell to Test Report PDF
                        Test_Report_PDF.cell(0, 4, UARTString, border = 0, ln = 0, align = 'C', fill = True)  

                        # Write to Test Report PDF
                        Test_Report_PDF.write(3, '\n\n')  

                    # Check if the last part of StrParts is "Passed"
                    elif StrParts[-1] == "Passed": 

                        # Check if the second last part of StrParts is not "Not"
                        if StrParts[-2] != "Not":  

                            # Set fill color for Test Report PDF
                            Test_Report_PDF.set_fill_color(47, 255, 82)  

                        else:

                            # Set fill color for Test Report PDF
                            Test_Report_PDF.set_fill_color(255, 55, 57)  

                        # Add a cell to Test Report PDF
                        Test_Report_PDF.cell(100, 4, UARTString, border = 1, ln = 0, align = 'L', fill = True)

                        # Write to Test Report PDF
                        Test_Report_PDF.write(3, ' \n\n')  

                    # Check if the last part of StrParts is "PERFORMED"
                    elif StrParts[-1] == "PERFORMED":  

                        # Check if the second last part of StrParts is "Not"
                        if StrParts[-2] == "Not":  

                            # Set fill color for Test Report PDF
                            Test_Report_PDF.set_fill_color(255, 255, 180)  

                        # Add a cell to Test Report PDF
                        Test_Report_PDF.cell(100, 4, UARTString, border = 1, ln = 0, align = 'L', fill = True)  

                        # Write to Test Report PDF
                        Test_Report_PDF.write(3, '\n\n')  

                    else:

                        # Check if LogFlag is True
                        if LogFlag == True:  

                            # Write to Test Report PDF
                            Test_Report_PDF.write(3, UARTString + '\n\n')  

                # Reset the UARTString
                UARTString = ""  

                # Scroll the Message_Box to the end
                Message_Box.see("end")  

        # Handle UnicodeDecodeError
        except UnicodeDecodeError:  

            # Print an error message
            print("Error came")  

            # Continue to the next iteration
            continue  

#------------------------------------------------------------------------------------------------------------------------------#

# Function for Closing the GUI window
def Window_Closure():

    # Check if Technician Name and Board ID are not empty and Test Report is saved
    if len(Technician_Name.get()) != 0 and len(Board_Serial_Number.get()) != 0 and Test_Report_Saved_Flag == True:
        
        # Ask for confirmation to quit and if response is okay then close the application
        if messagebox.askokcancel("Quit", "Do you want to quit?"):  
            Main_Application.destroy()  

    # If Test Report is not saved
    elif Test_Report_Saved_Flag == False:

        # Ask for user response
        response = messagebox.askyesnocancel("Quit", "Do you want to save the Report")  

        # If user wants to save the report and response is True then call the function to save and end, else close the application
        if response is True:  
            Save_and_End_Button_Func()  
        elif response is False:  
            Main_Application.destroy()  

#------------------------------------------------------------------------------------------------------------------------------#

# Function for Creating a PDF file for the Test Report
def InitPDF():

    # Global variable
    global Test_Report_PDF  

    # Initialize a new PDF object and add a new page to the PDF
    Test_Report_PDF = FPDF()  
    Test_Report_PDF.add_page()  
    
    # Set the font and text color to black for the PDF
    Test_Report_PDF.set_font("arial", size = 13)  
    Test_Report_PDF.set_text_color(0, 0, 0)  
    
    # Set the font for the PDF
    Test_Report_PDF.set_font("courier", size = 10)  
    
    # Write multiple new lines to the PDF
    Test_Report_PDF.write(3, '\n\n\n\n\n\n')  
    
    # Add an image to the PDF
    Test_Report_PDF.image('Infineon_logo.png', x = 90, y = 5, w = 30, h = 15)  
    
    # Return the Test_Report_PDF object
    return Test_Report_PDF  

#------------------------------------------------------------------------------------------------------------------------------#

# Import the os module
import os  

# Get the current working directory and store it in mypath
mypath = os.getcwd()  

# Change the working directory to mypath
os.chdir(mypath)  

# Initialize the Test_Report_PDF using the InitPDF function
Test_Report_PDF = InitPDF()  

# Create a ConfigParser object with ExtendedInterpolation
DUT_Configuration = ConfigParser(interpolation = ExtendedInterpolation())  

# Read the configuration from the "MTP_Py_Config.txt" file
DUT_Configuration.read("MTP_Py_Config.txt")  

# For the New MTP_Py_Config.txt file (Traveo + Aurix + PSoC)
try:    

    # Get the Boards_List from the configuration
    Boards_List = eval(DUT_Configuration.get('Board_Specifics', 'BoardsList'), {}, {})  

    # Get the Board_Family from the configuration
    Board_Family = eval(DUT_Configuration.get('Board_Specifics', 'BoardFamily'), {}, {})  

    # Get the Test_Report_Path from the configuration
    Test_Report_Path = DUT_Configuration.get('Board_Specifics', 'PathForReport')  

    # Get the AutoFlashUtility_Tool_Path from the configuration
    AutoFlashUtility_Tool_Path = DUT_Configuration.get('Board_Specifics', 'AutoFlashUtilityToolPath')  

    # Get the Aurix_Flasher_Tool_Path from the configuration
    Aurix_Flasher_Tool_Path = DUT_Configuration.get('Board_Specifics', 'AurixFlasherToolPath')    

# For the Old MTP_Py_Config.txt file (Traveo only)
except:     

    # Get the Boards_List from the configuration
    Boards_List = eval(DUT_Configuration.get('Board Specifics', 'BoardsList'), {}, {})  

    # Get the Board_Family from the configuration
    Board_Family = eval(DUT_Configuration.get('Board Specifics', 'BoardFamily'), {}, {})  

    # Get the Test_Report_Path from the configuration
    Test_Report_Path = DUT_Configuration.get('Board Specifics', 'PathForReport')  

    # Get the AutoFlashUtility_Tool_Path from the configuration
    AutoFlashUtility_Tool_Path = DUT_Configuration.get('Board Specifics', 'FlashToolPath')  

    # Assign 'ONLY_TRAVEO' to the Aurix_Flasher_Tool_Path directly
    Aurix_Flasher_Tool_Path = 'ONLY_TRAVEO'
    
    # Make the Old_MTP_Py_Config_File flag as True to indicate that the MTP_Py_Config.txt file is old one and only support Traveo devices
    Old_MTP_Py_Config_File = True

#------------------------------------------------------------------------------------------------------------------------------#

# Import the tkinter module
import tkinter  

# Create a new instance of a Tkinter application
Main_Application = tkinter.Tk()  

# Set the title of the application to 'Resizable'
Main_Application.title('Resizable')  

# Set the title of the application to 'ATV MC MTP Tool'
Main_Application.title("ATV MC MTP Tool")  

# Set the initial size of the application window to 1000x800
Main_Application.geometry("1000x800")  

# Disable the ability to resize the application window
Main_Application.resizable(0, 0)  

# Load the image for forward button
fwdimg = tkinter.PhotoImage(file = r"button_forward.png")  

# Load the image for start button
startimg = tkinter.PhotoImage(file = r"button_start.png")  

# Load the image for backward button
bwdimg = tkinter.PhotoImage(file = r"button_backward.png")  

# Create a label for device prompt
DevicePrompt = tkinter.Label(Main_Application, bg = 'plum2', font = ("Arial", 12, "bold"), relief = tkinter.FLAT, text = "ATV MC Manufacturing Test Tool v1.5")  

# Place the device prompt label at position (2, 10)
DevicePrompt.place(x = 2, y = 10)  

# Create a text box for messages
Message_Box = tkinter.Text(Main_Application, font = ("Arial", 12), insertofftime = 0, height = 10, width = 60)  

# Create a scrollbar for the message box
scrollbar = tkinter.Scrollbar(Main_Application, command = Message_Box.yview)  

# Configure the message box to use the scrollbar
Message_Box.config(yscrollcommand = scrollbar.set)  

# Pack the scrollbar to the right of the message box
scrollbar.pack(side = tkinter.RIGHT, fill = tkinter.Y)  

# Place the message box at position (10, 435)
Message_Box.place(x = 10, y = 435)  

#------------------------------------------------------------------------------------------------------------------------------#

# Automatically detect the COM port
Com_Port = Auto_Detect_Com_Port()  

# Check if the COM port is detected or not, if not then exit the program with an error message
if Com_Port is None:  

    # Insert a message indicating a serial port error and then exit
    Message_Box.insert(tkinter.END, " Serial Port Error.....Check Cable.\n\n")  
    sys.exit("Serial Port Error.....")  
    
# Create a serial object with the detected COM port
serial_object = serial.Serial(Com_Port, baudrate = 115200, timeout = 1)  
                
# Insert the device selection prompt in the message box and ensure the end of the message box is visible
Message_Box.insert(tkinter.END, "\n")  
Message_Box.see("end")  

# Get the current index of the message box
st = Message_Box.index(tkinter.CURRENT)  

# Insert a message indicating the connected COM port
Message_Box.insert(tkinter.END, " COM port connected -  " + Com_Port)  

# Get the updated current index of the message box
end = Message_Box.index(tkinter.CURRENT)  

# Insert a new line
Message_Box.insert(tkinter.END, "\n")  

# Add a tag for the COM port message
Message_Box.tag_add("com", st, end)  

# Configure the tag
Message_Box.tag_config("com", background = "green2", foreground = "black", font = ("Arial", 11, "bold"))  

# Scroll the message box to the end
Message_Box.see("end")  

# Create a second message box
Message_Box2 = tkinter.Text(Main_Application, font = ("Arial", 12), insertofftime = 0, height = 10, width = 60)  

# Create a scrollbar for the second message box
scrollbar2 = tkinter.Scrollbar(Main_Application, command = Message_Box2.yview)  

# Configure the second message box to use the scrollbar
Message_Box2.config(yscrollcommand = scrollbar2.set)  

# Pack the scrollbar to the right of the second message box
scrollbar2.pack(side = tkinter.RIGHT, fill = tkinter.Y)  

# Place the second message box
Message_Box2.place(x = 10, y = 230)  

# Create a thread for UART Rx handling
UART_Rx_Process = threading.Thread(target = UARTRxHandler, args = (None,))  

# Set the thread as a daemon
UART_Rx_Process.daemon = True  

# Start the UART Rx handling thread
UART_Rx_Process.start()  

# Create a tkinter string variable
var = tkinter.StringVar()  

# Create a label for the message log
left = tkinter.Label(Main_Application, font = ('Arial', 10, 'bold'), text = "Message Log")  

# Place the message log label
left.place(x = 10, y = 415)  

# Create a label for instructions
Instruct = tkinter.Label(Main_Application, font = ('Arial', 10, 'bold'), text = "Instructions")  

# Place the instructions label
Instruct.place(x = 10, y = 200)  

# Create a menu bar
MenuBar = tkinter.Menu(Main_Application, tearoff = 0)  

# Create a menu for device family
DeviceMenu = tkinter.Menu(MenuBar, font = ("Arial", 12), tearoff = 0)  

# Add the device family menu to the menu bar
MenuBar.add_cascade(label = "Device Family", menu = DeviceMenu)  

# Check if Old_MTP_Py_Config_File is True then it is old MTP_Py_Config.txt file and only supports for Traveo devices
if Old_MTP_Py_Config_File == True:

    # Loop through each family in Board_Family
    for EachFamily in Board_Family:

        # Create a submenu for devices
        DeviceSubMenu = tkinter.Menu(DeviceMenu, font = ("Arial", 12), tearoff = 0)

        # Loop through the range of BoardCount
        for BoardCount in range(0, len(EachFamily) - 1):

            # Add a radiobutton for each device in the submenu
            DeviceSubMenu.add_radiobutton(label = EachFamily[BoardCount + 1], variable = var, value = EachFamily[BoardCount + 1], command = Device_Select)

        # Add the submenu to the main DeviceMenu
        DeviceMenu.add_cascade(label = EachFamily[0], menu = DeviceSubMenu)

# If Old_MTP_Py_Config_File is False then it is new MTP_Py_Config.txt file and supports Traveo, Aurix and PSoC devices
else:

    # Loop through each MCU in Board_Family
    for mcu in Board_Family:

        # Create a menu for devices
        DevicesMenu = tkinter.Menu(DeviceMenu, font = ("Arial", 12), tearoff = 0)

        # Add a cascade menu for each MCU
        DeviceMenu.add_cascade(label = mcu[0], menu = DevicesMenu)

        # Loop through each family in the MCU
        for EachFamily in mcu[1:]:

            # Create a submenu for devices
            DeviceSubMenu = tkinter.Menu(DevicesMenu, font = ("Arial", 12), tearoff = 0)

            # Add a cascade menu for each family of devices
            DevicesMenu.add_cascade(label = EachFamily[0], menu = DeviceSubMenu)

            # Loop through the range of BoardCount
            for BoardCount in range(0, len(EachFamily) - 1):

                # Add a radiobutton for each device in the submenu
                DeviceSubMenu.add_radiobutton(label = EachFamily[BoardCount + 1], variable = var, value = EachFamily[BoardCount + 1], command = Device_Select)

#------------------------------------------------------------------------------------------------------------------------------#

# Create buttons with specified attributes and commands
Firmware1_Button = tkinter.Button(Main_Application, text = "Firmware_1", command = Flash_Firmware1, font = ('Arial', 9, 'bold'), height = 2, width = 20)
Firmware2_Button = tkinter.Button(Main_Application, text = "Firmware_2", command = Flash_Firmware2, font = ('Arial', 9, 'bold'), height = 2, width = 20)
Firmware3_Button = tkinter.Button(Main_Application, text = "Firmware_3", command = Flash_Firmware3, font = ('Arial', 9, 'bold'), height = 2, width = 20)
Skip_Button = tkinter.Button(Main_Application, text = "Skip", command = Skip_Button_Func, font = ('Arial', 9, 'bold'), height = 2, width = 20)
Erase_Button = tkinter.Button(Main_Application, text = "Code Erase", command = Erase_Button_Func, font = ('Arial', 9, 'bold'), height = 2, width = 20)
Start_Button = tkinter.Button(Main_Application, text = "", image = startimg, border = "0", bg = "gray", command = Start_Button_Func, font = ('Arial', 10, 'bold'), height = 50, width = 50)
Forward_Button = tkinter.Button(Main_Application, text = "", image = fwdimg, border = "0", bg = "gray", command = Forward_Button_Func, font = ('Arial', 10, 'bold'), height = 50, width = 50)
Backward_Button = tkinter.Button(Main_Application, text = "", image = bwdimg, border = "0", bg = "gray", command = Backward_Button_Func, font = ('Arial', 10, 'bold'), height = 50, width = 50)
Pass_Button = tkinter.Button(Main_Application, text = "Pass", command = Pass_Button_Func, font = ('Arial', 9, 'bold'), height = 2, width = 10)
Fail_Button = tkinter.Button(Main_Application, text = "Fail", command = Fail_Button_Func, font = ('Arial', 9, 'bold'), height = 2, width = 10)
Save_and_End_Button = tkinter.Button(Main_Application, text = "Save and End", command = Save_and_End_Button_Func, font = ('Arial', 9, 'bold'), height = 2, width = 15)

# Place the buttons at specific coordinates on the Main_Application window
Firmware1_Button.place(x = 10, y = 50)
Firmware2_Button.place(x = 10, y = 100)
Firmware3_Button.place(x = 10, y = 150)
Skip_Button.place(x = 180, y = 100)
Erase_Button.place(x = 180, y = 150)
Start_Button.place(x = 730, y = 60)
Forward_Button.place(x = 810, y = 60)
Backward_Button.place(x = 650, y = 60)
Pass_Button.place(x = 350, y = 100)
Fail_Button.place(x = 450, y = 100)
Save_and_End_Button.place(x = 350, y = 150)

# Create label and entry field for Board ID
Label_1 = tkinter.Label(Main_Application, font = ('Arial', 10, 'bold'), text = " Board ID ")
Label_1.place(x = 180, y = 60)
Board_Serial_Number = tkinter.StringVar()
BoardID = tkinter.Entry(Main_Application, bd = 5, textvariable = Board_Serial_Number)
BoardID.place(x = 250, y = 60)

# Create label and entry field for Technician Name
Label_2 = tkinter.Label(Main_Application, font = ('Arial', 10, 'bold'), text = "  Technician Name")
Label_2.place(x = 380, y = 60)
Technician_Name = tkinter.StringVar()
TechName = tkinter.Entry(Main_Application, bd = 5, textvariable = Technician_Name)
TechName.place(x = 510, y = 60)

# Configure the menu bar  
Main_Application.config(menu = MenuBar)

# set the window to be resizable
Main_Application.resizable(True, True)

# Define the protocol for window closure
Main_Application.protocol("WM_DELETE_WINDOW", Window_Closure)

# Start the main loop
Main_Application.mainloop()

#------------------------------------------------------------------------------------------------------------------------------#
