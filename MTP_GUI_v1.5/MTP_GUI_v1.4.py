#-----------------------------------------------------------------------------------------------------------------------------------#

import tkinter
from fpdf import FPDF
import os
import sys
import subprocess
from time import strftime, localtime
from datetime import date
import serial
import serial.tools.list_ports
import threading
from configparser import ConfigParser, ExtendedInterpolation
from PIL import ImageTk,Image
from tkinter import messagebox

#-----------------------------------------------------------------------------------------------------------------------------------#

ChipCfg = ''
TestSRECPath = ''
JTAGSRECPath = ''
ShipSRECPath = ''
TestCaseIndex = 0
TestCaseList = []
InstructionsList = ''
StoryBoardLableObject = None
StoryBoardPicturesPath = ''
ReportSavedFlag = False
ReportPDF = None

#-----------------------------------------------------------------------------------------------------------------------------------#

def auto_detect_com ():
    com_port = None
    ports = list(serial.tools.list_ports.comports())
    for port in ports:
        port = str(port)
        if (port.find('USB Serial') != -1) or (port.find('KitProg3') != -1):
            com_port = port.split('-')[0]
            print(" Auto Connect to ",com_port," Done")
    return com_port

#-----------------------------------------------------------------------------------------------------------------------------------#

def Code_Dump_Test ():
    global TestCaseIndex
    FlashResult = []
    #os.chdir('C:\Program Files (x86)\Cypress\CypressProgrammer2.1\openocd-2.1')
    os.chdir(FlashToolPath)
    print("Programming Device...")
    SRECFiles = os.listdir(TestSRECPath)
    for FileCount in range (len(SRECFiles)-1,-1,-1):
        FlashResult.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/'+ ChipCfg +' -c "program '+TestSRECPath + SRECFiles[FileCount] + ' verify; exit"'))

    for EachCoreResult in FlashResult:
        FlashResult = not(EachCoreResult) and 1

    if FlashResult == 1 :
        MessageBox.insert(tkinter.END, " \n Device Flashed Successfully\n\n")
        MessageBox.insert(tkinter.END, " \n Remove the MiniProg4 Connector\n\n")
        MessageBox.insert(tkinter.END, " \n Press Reset Button on the Board to Start the Test\n\n")
        MessageBox.see("end")
    else :
        MessageBox.insert(tkinter.END," \n Device Flashed Failed")
        MessageBox.see("end")
    TestCaseIndex = 0

#-----------------------------------------------------------------------------------------------------------------------------------#

def Code_Dump_JTAG ():
    FlashResult = []
    #os.chdir('C:\Program Files (x86)\Cypress\CypressProgrammer2.1\openocd-2.1')
    os.chdir(FlashToolPath)
    print("Programming Device...")
    SRECFiles = os.listdir(JTAGSRECPath)
    for FileCount in range (len(SRECFiles)-1,-1,-1):
        FlashResult.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/'+ ChipCfg +' -c "program '+JTAGSRECPath + SRECFiles[FileCount] + ' verify; exit"'))

    for EachCoreResult in FlashResult:
        FlashResult = not(EachCoreResult) and 1

    if FlashResult == 1 :
        MessageBox.insert(tkinter.END, " \n Device Flashed Successfully\n\n")
        MessageBox.insert(tkinter.END, " \n Press Reset Button on the Board to Start the Test\n\n")
        MessageBox.see("end")
    else :
        MessageBox.insert(tkinter.END," \n Device Flashed Failed")
        MessageBox.see("end")

#-----------------------------------------------------------------------------------------------------------------------------------#

def Code_Dump_Ship ():
    FlashResult = []
    #os.chdir('C:\Program Files (x86)\Cypress\CypressProgrammer2.1\openocd-2.1') 
    os.chdir(FlashToolPath)
    print("Programming Device...")
    SRECFiles = os.listdir(ShipSRECPath)
    for FileCount in range (len(SRECFiles)-1,-1,-1):
        FlashResult.append(os.system(r'openocd.exe -s ../scripts -f interface/kitprog3.cfg -f target/'+ ChipCfg +' -c "program '+ShipSRECPath + SRECFiles[FileCount] + ' verify; exit"'))

    for EachCoreResult in FlashResult:
        FlashResult = (not(EachCoreResult) and 1)

    if FlashResult == 1 :
        MessageBox.insert(tkinter.END, " \n Device Flashed Successfully\n\n")
        MessageBox.insert(tkinter.END, " \n Press Reset Button on the Board to Start the Test\n\n")
        MessageBox.see("end")
    else :
        MessageBox.insert(tkinter.END," \n Device Flashed Failed")
        MessageBox.see("end")

#-----------------------------------------------------------------------------------------------------------------------------------#

def Code_Erase ():
    os.chdir(FlashToolPath) 
    print("Erasing Device...")
    Erase_Status = os.system(r'bin\openocd.exe -s scripts -f interface/kitprog3.cfg -f target/'+ ChipCfg +' -c "kitprog3 acquire_config on 2 0 1" -c "init;reset init;erase_all;shutdown"')
    if Erase_Status == 0:
        MessageBox.insert(tkinter.END, " \n Device Erase Successfully\n\n")
        MessageBox.see("end")
    else:
        MessageBox.insert(tkinter.END, " \n Device Erase Failed\n\n")
        MessageBox.see("end")

#-----------------------------------------------------------------------------------------------------------------------------------#

def UpdateStoryBoard (TestCaseIndex):
    img = Image.open(StoryBoardPicturesPath + str(TestCaseIndex)+ ".png")
    img = img.resize((530, 430), Image.ANTIALIAS)  # Original working size 530,430
    img = ImageTk.PhotoImage(img)
    DevicePrompt = tkinter.Label(MainApp,image = img)
    DevicePrompt.image = img
    DevicePrompt.place(x=580,y=175)
    DevicePrompt1 = tkinter.Label(MainApp, bg ='plum2',font = ("Arial",12,"bold") ,relief = tkinter.FLAT,text = "Current Test :  "+ str(TestCaseList[TestCaseIndex]))
    DevicePrompt1.place(x=580,y=150)
    MessageBox2.delete(1.0,tkinter.END)
    MessageBox2.insert(tkinter.END,InstructionsList[TestCaseIndex] + '\n' )
    MessageBox2.see("end")
    #DevicePrompt2 = tkinter.Label(MainApp,font = ("Arial",12) ,relief = tkinter.FLAT,text = InstructionsList[TestCaseIndex])
    #DevicePrompt2.place(x=10,y=200)
    return [DevicePrompt,DevicePrompt1]   #return [DevicePrompt,DevicePrompt1,DevicePrompt2]

#-----------------------------------------------------------------------------------------------------------------------------------#

def SendCtrlC ():
    serial_object.write('\x03'.encode())

#-----------------------------------------------------------------------------------------------------------------------------------#

def ForwardCmd ():
    global TestCaseIndex
    global StoryBoardLableObject
    for EachObject in StoryBoardLableObject:
        if EachObject != None:
            EachObject.destroy()
    TestCaseIndex = TestCaseIndex + 1
    if TestCaseIndex == len(TestCaseList):
        TestCaseIndex = 0
    TestCaseIndexStr = str((int)(TestCaseIndex/10)) + str(TestCaseIndex%10) 
    StringToSend = 'Tc:' + str(TestCaseIndexStr) + ';'
    #StringToSend = "hello"
    serial_object.write(bytes(StringToSend,'utf-8'))   #-------------------- Prefix some str before Tc idx for security
    StoryBoardLableObject = UpdateStoryBoard(TestCaseIndex)

#-----------------------------------------------------------------------------------------------------------------------------------#

def StartCmd ():
    ReportSavedFlag = False
    serial_object.write(bytes('\r','utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

def PassCmd ():
    serial_object.write(bytes('p','utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

def FailCmd ():
    serial_object.write(bytes('f','utf-8'))

#-----------------------------------------------------------------------------------------------------------------------------------#

def BackwardCmd ():
    global TestCaseIndex
    global StoryBoardLableObject
    for EachObject in StoryBoardLableObject:
        if EachObject != None:
            EachObject.destroy()
    TestCaseIndex = TestCaseIndex - 1
    if TestCaseIndex < 0:
        TestCaseIndex = len(TestCaseList)-1
    TestCaseIndexStr = str((int)(TestCaseIndex/10)) + str(TestCaseIndex%10) 
    StringToSend = 'Tc:' + str(TestCaseIndexStr) + ';'
    #StringToSend = 'Tc:' + str(TestCaseIndex) + ';'
    serial_object.write(bytes(StringToSend,'utf-8'))   #-------------------- Prefix some str before Tc idx for security
    StoryBoardLableObject = UpdateStoryBoard(TestCaseIndex)

#-----------------------------------------------------------------------------------------------------------------------------------#

def FinishCmd ():
    global ReportSavedFlag
    global ReportPDF
    if len(TechName.get()) != 0  and len(BoardIDString.get()) != 0:
        CurrTime = strftime(r"%d/%m/%Y %H:%M:%S",localtime())
        CurrTime1 = strftime(r"%d_%m_%Y",localtime())
        TimeStampedString = "Board Tested on : " + CurrTime
        ReportPDF.write(5, '\n' + TimeStampedString + '\n')
        ReportPDF.write(5, '\n' + "Board ID : "+ BoardIDString.get() + '\n')
        ReportPDF.write(5, '\nTested By: '+TechName.get() + '\n')
        ReportPDF.output(ReportPath+"Test_Report_"+ BoardIDString.get()+'_'+CurrTime1+".pdf")
        ReportPDF.close()
        ReportSavedFlag = True
        ReportPDF = None
        #ReportPDF = InitPDF()
        messagebox.showinfo("Success","Report Saved successfully")
        
    else:
        messagebox.showinfo("Warning","Please fill BoardID and Technician Name")

#-----------------------------------------------------------------------------------------------------------------------------------#

def DeviceSelect ():
    global ChipCfg
    global TestSRECPath
    global JTAGSRECPath
    global ShipSRECPath
    global TestCaseList
    global StoryBoardLableObject
    global TestCaseStatus
    global StoryBoardPicturesPath
    global InstructionsList
    for EachBoard in BoardsList:
        if EachBoard[0] == var.get():
            ChipCfg = EachBoard[2]
            TestCaseStatus = [0]*len(EachBoard[3])
            StoryBoardPicturesPath = EachBoard[1]+r"/StoryBoardPictures/"
            TestCaseList = EachBoard[-1]
            TestSRECPath = EachBoard[1] + '/Test_FW/'
            JTAGSRECPath = EachBoard[1] + '/JTAG_Test_FW/'
            ShipSRECPath = EachBoard[1] + '/Shipping_FW/'
            InstructionPath = EachBoard[1] + '/Logs/'
            fp = open(InstructionPath+'Instructions.txt','r')
            InstructionsList = fp.readlines()
            StringPrompt = (" \n\n Device Set to ->" +  EachBoard[0] + "\n\n")
            MessageBox.insert(tkinter.END, StringPrompt)
            MessageBox.see("end")
            #ReportPDF.write(5, "\n\nCYTVII-B-E-1M-100-Pin-Test Report\n\n")
            StoryBoardLableObject = UpdateStoryBoard(TestCaseIndex)

#-----------------------------------------------------------------------------------------------------------------------------------#

def UARTRxHandler (dummy):
    print("UART_Rx Thread Started...")
    global TestCaseIndex
    UARTString = ""
    StartFlag = False
    LogFlag = False
    while(True):
        try:
            UARTChar = serial_object.read().decode("utf-8")

            #.decode("utf-8")
            UARTString += UARTChar
            if(UARTChar == "\n" or UARTChar == "\r" ):
                if(UARTString.find('log:') != -1):
                    LogFlag = True
                elif (UARTString.find('ins:') != -1):
                    LogFlag = False
                elif (UARTString.find('cmd:start') != -1):
                    LogFlag = False
                    StartFlag = True
                UARTString = UARTString.split(':')[-1]
                if StartFlag == True:
                    TestCaseIndex = 0
                    StartFlag = False
                else:
                    print(UARTString)
                    MessageBox.insert(tkinter.END,UARTString + '\n' )
                    UARTString = UARTString.strip()
                if (len(UARTString) > 2 ):
                    StrParts = UARTString.split(' ')
                    if StrParts[-1] == "Test":
                        ReportPDF.set_fill_color(255,255,204)
                        ReportPDF.cell(0,4,UARTString,border=0,ln=0,align='C',fill=True)
                        ReportPDF.write(3, ' \n\n')
                    elif StrParts[-1] == "Passed":
                        if StrParts[-2] != "Not":
                            ReportPDF.set_fill_color(47,255,82)
                        else:
                            ReportPDF.set_fill_color(255,55,57)
                        ReportPDF.cell(100,4,UARTString,border=1,ln=0,align='L',fill=True)
                        ReportPDF.write(3, ' \n\n')

                    elif  StrParts[-1] == "PERFORMED":
                        if StrParts[-2] == "Not":
                            ReportPDF.set_fill_color(255,255,180)
                        ReportPDF.cell(100,4,UARTString,border=1,ln=0,align='L',fill=True)
                        ReportPDF.write(3, ' \n\n')

                    else:
                        if LogFlag == True:
                            ReportPDF.write(3, UARTString+'\n\n')
                UARTString = ""
                MessageBox.see("end")

        except UnicodeDecodeError:
            print("Error came")
            continue

#------------------------------------------------------------------------------------------------------------------------------#

def on_closing():
    if len(TechName.get()) != 0  and len(BoardIDString.get()) != 0 and ReportSavedFlag == True:
        if messagebox.askokcancel("Quit", "Do you want to quit?"):
            MainApp.destroy()
    elif ReportSavedFlag == False:
        messagebox.askokcancel("Quit", "Please save the Report")
    #else:
    #    messagebox.askokcancel("Quit", "Please fill out BoardID and Technician Name")

#------------------------------------------------------------------------------------------------------------------------------#
def InitPDF ():
    global ReportPDF
    ReportPDF = FPDF()

    ReportPDF.add_page()
    ReportPDF.set_font("arial",size=13)

    ReportPDF.set_text_color(0,0,0)
    ReportPDF.set_font("courier",size=10)
    ReportPDF.write(3, '\n\n\n\n\n\n')
    ReportPDF.image('cyp.png', x = 90, y = 2, w=30 , h=30)
    return ReportPDF


mypath = os.path.dirname(__file__)
os.chdir(mypath)


#ReportPDF = FPDF()
#
#ReportPDF.add_page()
#ReportPDF.set_font("arial",size=13)
#
#ReportPDF.set_text_color(0,0,0)
#ReportPDF.set_font("courier",size=10)
#ReportPDF.write(3, '\n\n\n\n\n\n')
#ReportPDF.image('cyp.png', x = 90, y = 2, w=30 , h=30)

ReportPDF = InitPDF()

TVIICpuBrdConfig = ConfigParser(interpolation=ExtendedInterpolation())
TVIICpuBrdConfig.read("MTP_Py_Config.txt") 
BoardsList  = eval(TVIICpuBrdConfig.get('Board Specifics','BoardsList'),{},{})
BoardFamily = eval(TVIICpuBrdConfig.get('Board Specifics','BoardFamily'),{},{})
ReportPath = TVIICpuBrdConfig.get('Board Specifics','PathForReport')
FlashToolPath = TVIICpuBrdConfig.get('Board Specifics','FlashToolPath')

MainApp = tkinter.Tk()
#width, height = MainApp.winfo_screenwidth(), MainApp.winfo_screenheight()
#MainApp.geometry('%dx%d+0+0' % (width,height))
MainApp.title('Resizable')
MainApp.title("Traveo-2 MTP")
MainApp.geometry("1000x800")
MainApp.resizable(0,0)

fwdimg = tkinter.PhotoImage(file = r"fwd1.png") 
#fwdimg = img.subsample(3, 3)
startimg = tkinter.PhotoImage(file = r"start1.png") 
#startimg = img.subsample(3, 3)
bwdimg = tkinter.PhotoImage(file = r"bwd1.png") 
#bwdimg = img.subsample(3, 3)

DevicePrompt = tkinter.Label(MainApp, bg ='plum2',font = ("Arial",12,"bold") ,relief = tkinter.FLAT,text = "Manufacturing Test Process API v1.4")
DevicePrompt.place(x=2,y=10)

MessageBox = tkinter.Text(MainApp,font = ("Arial",12),insertofftime=0,height = 10,width = 60 )
scrollbar = tkinter.Scrollbar(MainApp, command = MessageBox.yview)
MessageBox.config(yscrollcommand=scrollbar.set)
scrollbar.pack( side = tkinter.RIGHT, fill = tkinter.Y )
MessageBox.place(x=10,y=435)

ComPort = auto_detect_com()
if ComPort == None:
    MessageBox.insert(tkinter.END, " Serial Port Error.....Check Cable.\n\n")
    sys.exit("Serial Port Error.....")

serial_object = serial.Serial(auto_detect_com(),baudrate=115200,timeout=1) 

st = MessageBox.index(tkinter.CURRENT)
MessageBox.insert(tkinter.END, " Automatically detected COM Port --- Connected to " +ComPort )
end = MessageBox.index(tkinter.CURRENT)
MessageBox.insert(tkinter.END,"\n" )
MessageBox.tag_add("com",st,end)
MessageBox.tag_config("com",background = "green2",foreground = "black",font=("Arial",14,"bold")) 
MessageBox.see("end")

MessageBox2 = tkinter.Text(MainApp,font = ("Arial",12),insertofftime=0,height = 10,width = 60 )
scrollbar2 = tkinter.Scrollbar(MainApp, command = MessageBox2.yview)
MessageBox2.config(yscrollcommand=scrollbar2.set)
scrollbar2.pack( side = tkinter.RIGHT, fill = tkinter.Y )
MessageBox2.place(x=10,y=230)

UARTRxProcess = threading.Thread(target = UARTRxHandler,args=(None,))  
UARTRxProcess.daemon = True
UARTRxProcess.start()

var = tkinter.StringVar()

left = tkinter.Label(MainApp, font = ('Arial',10,'bold'),text="Message Log")
left.place(x=10,y=415)

Instruct = tkinter.Label(MainApp, font = ('Arial',10,'bold'),text="Instructions")
Instruct.place(x=10,y=200)

MenuBar  = tkinter.Menu(MainApp,tearoff=0)

DeviceMenu  = tkinter.Menu(MenuBar , font=("Arial",12),tearoff = 0)

MenuBar.add_cascade(label="Device Family",menu=DeviceMenu)

for EachFamily in BoardFamily:
    DeviceSubMenu = tkinter.Menu(DeviceMenu ,font=("Arial",12) ,tearoff = 0)
    for BoardCount in range(0,len(EachFamily)-1):
        DeviceSubMenu.add_radiobutton(label = EachFamily[BoardCount+1],variable = var,value = EachFamily[BoardCount+1],command = DeviceSelect)
    DeviceMenu.add_cascade(label=EachFamily[0],menu = DeviceSubMenu)

TestFlashButton = tkinter.Button(MainApp  ,text = "Firmware_1" , command = Code_Dump_Test ,font = ('Arial',9,'bold'), height = 2, width = 20)
JTAGFlashButton = tkinter.Button(MainApp  ,text = "Firmware_2" , command = Code_Dump_JTAG ,font = ('Arial',9,'bold'), height = 2, width = 20)
ShipFlashButton = tkinter.Button(MainApp  ,text = "Firmware_3" , command = Code_Dump_Ship ,font = ('Arial',9,'bold'), height = 2, width = 20)

EraseButton = tkinter.Button(MainApp  ,text = "Code Erase" , command = Code_Erase,font = ('Arial',9,'bold'), height = 2, width = 20)
CtrlCButton = tkinter.Button(MainApp  ,text = "Skip" , command = SendCtrlC,font = ('Arial',9,'bold'), height = 2, width = 20)

ForwardButton = tkinter.Button(MainApp  ,text = "" ,image = fwdimg ,border = "0",bg = "gray", command = ForwardCmd, font = ('Arial',10,'bold'), height = 50, width = 50)
StartButton = tkinter.Button(MainApp  ,text = "" ,image = startimg ,border = "0",bg = "gray", command = StartCmd,font = ('Arial',10,'bold'), height = 50, width = 50)
BackwardButton = tkinter.Button(MainApp ,text = "" ,image = bwdimg ,border = "0",bg = "gray", command = BackwardCmd,font = ('Arial',10,'bold'), height = 50, width = 50)
PassButton = tkinter.Button(MainApp  ,text = "Pass"  , command = PassCmd,font = ('Arial',9,'bold'), height = 2, width = 10)
FailButton = tkinter.Button(MainApp  ,text = "Fail"  , command = FailCmd,font = ('Arial',9,'bold'), height = 2, width = 10)
FinishButton = tkinter.Button(MainApp  ,text = "Save and End"  , command = FinishCmd,font = ('Arial',9,'bold'), height = 2, width = 15)

TestFlashButton.place(x=10,y=50)
JTAGFlashButton.place(x=10,y=100)
ShipFlashButton.place(x=10,y=150)
EraseButton.place(x=180,y=150)
CtrlCButton.place(x=180,y=100)
BackwardButton.place(x=650,y=60)
StartButton.place(x=730,y=60)
ForwardButton.place(x=810,y=60)
FinishButton.place(x=350,y=150)
PassButton.place(x=350,y=100)
FailButton.place(x=450,y=100)

L1 = tkinter.Label(MainApp, font = ('Arial',10,'bold'),text="Board ID ")
L1.place(x = 180,y=60)
BoardIDString = tkinter.StringVar()
BoardID = tkinter.Entry(MainApp, bd =5,textvariable = BoardIDString)
BoardID.place(x = 250, y = 60)

# For Signer Text field
L1 = tkinter.Label(MainApp, font = ('Arial',10,'bold'),text="Technician Name")
L1.place(x = 380,y=60)
TechName = tkinter.StringVar()
Name = tkinter.Entry(MainApp, bd =5,textvariable = TechName)
Name.place(x = 510, y = 60)

MainApp.config(menu=MenuBar)
MainApp.resizable(True, True) 
MainApp.protocol("WM_DELETE_WINDOW", on_closing)#      -------------------------------------Uncomment to reveal quit option
MainApp.mainloop()

"""
CurrTime = strftime(r"%d/%m/%Y %H:%M:%S",localtime())
CurrTime1 = strftime(r"%d%m%Y",localtime())
TimeStampedString = "Board Tested on : " + CurrTime
ReportPDF.write(5, '\n' + TimeStampedString + '\n')
ReportPDF.write(5, '\n' + "Board ID : "+ BoardIDString.get() + '\n')
ReportPDF.write(5, '\nVerified By: '+TechName.get() + '\n')
ReportPDF.output(ReportPath+"Test_Report_"+ BoardIDString.get()+'_'+CurrTime1+".pdf")
ReportPDF.close()
"""
