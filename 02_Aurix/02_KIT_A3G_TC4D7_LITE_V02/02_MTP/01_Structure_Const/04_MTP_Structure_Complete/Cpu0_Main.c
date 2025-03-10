/**********************************************************************************************************************
 * \file Cpu0_Main.c
 * \copyright Copyright (C) Infineon Technologies AG 2019
 * 
 * Use of this file is subject to the terms of use agreed between (i) you or the company in which ordinary course of 
 * business you are acting and (ii) Infineon Technologies AG or its licensees. If and as long as no such terms of use
 * are agreed, use of this file is subject to following:
 * 
 * Boost Software License - Version 1.0 - August 17th, 2003
 * 
 * Permission is hereby granted, free of charge, to any person or organization obtaining a copy of the software and 
 * accompanying documentation covered by this license (the "Software") to use, reproduce, display, distribute, execute,
 * and transmit the Software, and to prepare derivative works of the Software, and to permit third-parties to whom the
 * Software is furnished to do so, all subject to the following:
 * 
 * The copyright notices in the Software and this entire statement, including the above license grant, this restriction
 * and the following disclaimer, must be included in all copies of the Software, in whole or in part, and all 
 * derivative works of the Software, unless such copies or derivative works are solely in the form of 
 * machine-executable object code generated by a source language processor.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE 
 * COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN 
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
 * IN THE SOFTWARE.
 *********************************************************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "Ifx_Types.h"
#include "Ifx_Cfg.h"
#include "IfxCpu.h"
#include "IfxWtu.h"
#include "mtp\mtp_application.h"
#include "mtp\Blinky_LED.h"
#include "mtp\GPIO_LED_Button.h"
#include "mtp\Data_Flash.h"


#define TEST_TIME_LIMIT     (10u)


/* Test Cases for MTP is defined here (User modifiable) */
enum MTP_Test_Cases
{
  MTP_LED,
  MTP_USER_BUTTON,
};

/* Test elements/components, each of these components are tested and the results are stored individually */
enum MTP_Test_Components
{
    LED_E,
    BTN_E,
    MTP_TOTAL_TEST_COMPONENTS,
    MIPI_E,
};



/* Test elements strings to be printed as test name in serial terminal window */
char Test_Elements_str[MTP_TOTAL_TEST_COMPONENTS + 1][30]=
{
    "User LEDs",
    "User Buttons",
};

enum MTP_TestType
{
    MTP_AUTO,
    MTP_MANUAL
};


/* Global variables related to MTP test */
boolean new_test = 0;
boolean start_test = FALSE;
boolean skip_test = FALSE;
boolean test_passed = FALSE;
boolean test_failed = FALSE;
boolean Timeout = FALSE;

enum MTP_Test_Cases current_test;
enum MTP_Test_Components element;



void UART_Get_Char(uint8 character)
{
    static uint8 char_idx = 0;
    static char strings[16] = {0};

    strings[char_idx] = character;


            if (strings[char_idx] == ':')
            {
                char_idx = 0; // ignoring the bytes upto ':'. in the test case string "Tc:num;", we are only interested in the "num;" part
            }
            else if (strings[char_idx] == ';')
            {
                strings[char_idx] = '\0';
                char_idx = 0;
                current_test = atoi(strings);   // converting the received number in str format to integer format (atoi = ascii to integer)
                new_test = TRUE; // new test case is detected
            }
            else if (strings[0] == '\r')
            {
                char_idx = 0;

                if (new_test)
                    start_test = TRUE; // start the test only if new_test is detected.
                                       // If the start button in GUI is randomly pressed without going to a new test case, it will not trigger the test .
            }
            else if (strings[0] == '\x03')
            {
                char_idx = 0;

                if (new_test && !start_test) // skip the test, once a new test is detected and not started. Cant skip a test which has already started.
                    skip_test = TRUE;
            }
            else if (strings[0] == 'p')
            {
                char_idx = 0;

                if (new_test && start_test) // pass or fail a test only after it had started. Cant pass/fail a test before starting it
                    test_passed = TRUE;
            }
            else if (strings[0] == 'f')
            {
                char_idx = 0;

                if (new_test && start_test)
                    test_failed = TRUE;
            }
            else
            {
                char_idx++; // increment and receive the next byte
            }

}




/* Reads the stored individual test results*/
void ReadResult()
{
    uint8 num_test_passed = 0;
    boolean res = 0;
    printf("log:--- Test Results ---\n\r\r");

    for (uint8 i = 0; i < (MTP_TOTAL_TEST_COMPONENTS); i++)
    {
        res = readStatusFromFlash(i);
        if (res)
        {
            num_test_passed++;
            printf("log: %s Test Passed\n\r", Test_Elements_str[i]);
        }
        else if (!res)
        {
            printf("log: %s Test Not Passed\n\r", Test_Elements_str[i]);
        }
    }

    if (num_test_passed == (MTP_TOTAL_TEST_COMPONENTS))
    {
        printf("log: All Tests Passed\n");
    }
    else
    {
        printf("log: Not ready to ship, All Tests are Not Passed \n\r");
    }
}



/*
    This function implements the common procedure for the test.
    For each test,  1) waits for the start or skip input
                    2) Once started, sets the the timer and continuously calls the tester function of the particular peripheral
                    3) waits for pass/fail or timeout flag
                    4) stores the result in data-flash accordingly
                For manual tests, Once a test is started, the user cannot move to the other tests without givine pass or fail input

                test_func: - function pointer to a functions of type "bool fn()" which tests the particular peripheral,
                Test_element_str - pointer to a string containing the test element name
                Test_element     - test element enum
                Test_type        - enum of test type
                set_limit        - sets the timer if true

                If there are many test elements within one test case , for ex: User Led 1, User led2 elements within User LEd test case,
                all the elements should be tested each time this test case is chosen. Cannot skip to one particular test element and
                test that alone.
return  - false : if the user moved to another test case without starting / skipping the current test
          true  : if the test procedure is complete
*/
boolean MTP_Test_Procedure(enum MTP_Test_Cases test_case, enum MTP_Test_Components test_element, boolean (*test_func)(void), char *test_element_str, enum MTP_TestType test_type, boolean time_limit)
{
    boolean call_cont = TRUE; // flag to find if the tester fn should be called cont or not
    printf("ins:\n\t %s Test. Press Start\n", test_element_str);
    while (!start_test && !skip_test)
    {
        if (current_test != test_case)
        {
            // the user has moved to next test without starting/skipping  the current test.
            break;
        }
    }
    if (skip_test)
    { // if the test is skipped, the element test result is marked as failed
        printf("log:\n %s Test \n", test_element_str);
        printf("log: %s test skipped\n", test_element_str);
        writeStatusToFlash(test_element, FALSE); // This is required. If the user skips a test, that flash location will never be written and while reading from this location
                                                 // during ReadResults, it will go into Hard-fault error
        skip_test = FALSE;
    }
    else if (!start_test)
        return FALSE; // the user moved to another test case. Ignore this test case, exit this loop iteration and go to the new test case

    else
    { // start the test
        if (test_type == MTP_MANUAL)
        {
            printf("ins:Press pass button if %s is working. Otherwise press fail\n", test_element_str);
            // start_test = false;
            writeStatusToFlash(test_element, FALSE); // initially the test result is written as false
            while (!test_passed && !test_failed)
            { // waits until either pass or fail button is pressed by the user
                if (current_test != test_case)
                { // if the user moves to next test without pressing pass/fail, he is instructed to
                  // come back to this case and complete it
                    printf("ins: Please go back to %s test and press pass/fail for accordingly\n", test_element_str);
                    while (current_test != test_case)
                        ; // waits until this test case is chosen again
                }

                if (call_cont)               // continuously keeps calling the tester function, until the user gives pass / fail input
                    call_cont = test_func(); // if the tester fn return true. If it return false, it called once and then waits for user
                                             // pass or fail input
            }

            if (test_passed)
            {
                printf("log: %s Test \n", test_element_str);
                printf("log: %s working successfully\n", test_element_str);
                writeStatusToFlash(test_element, TRUE);
                // test_passed = false;
            }
            else if (test_failed)
            {
                printf("log: %s Test\n", test_element_str);
                printf("log: %s is not working \n", test_element_str);
                writeStatusToFlash(test_element, FALSE);
                // test_failed = false;
            }
        }
        else if (test_type == MTP_AUTO)
        {
            printf("ins: %s Test started.\n", test_element_str);
            if (time_limit)
            {
                // start_test = false;
                writeStatusToFlash(test_element, FALSE); // initially the test result is written as false

                Start_Timer(TEST_TIME_LIMIT); // set the time limit for the test
                while (!test_func() && !Timeout)
                    ;        // continuously call the test function until it passes, or the test time expires
                Stop_Timer(); // stop the timer
                if (Timeout)
                {
                    printf("log: %s Test\n", test_element_str);
                    printf("log: %s is not working  \n", test_element_str);
                    writeStatusToFlash(test_element, FALSE);
                }
                else
                {
                    printf("log: %s Test\n", test_element_str);
                    printf("log: %s is working successfully\n", test_element_str);
                    writeStatusToFlash(test_element, TRUE);
                }
            }
            else
            {
                // start_test = false;
                printf("log: %s Test\n", test_element_str);
                if (test_func())
                {
                    printf("log: %s is working successfully\n", test_element_str);
                    //SCB_DisableDCache();
                    //Cy_SysTick_DelayInUs(3000000);
                    writeStatusToFlash(test_element, TRUE);
                }
                else
                {
                    printf("log: %s is not working  \n", test_element_str);
                    //SCB_DisableDCache();
                    //Cy_SysTick_DelayInUs(3000000);
                    writeStatusToFlash(test_element, FALSE);
                }
            }
        }
    }
    start_test = FALSE; // resetting all flags
    test_passed = FALSE;
    test_failed = FALSE;
    skip_test = FALSE;
    return TRUE; // procedure complete
}





void MTP_Test()
{
    boolean led = FALSE, btn = FALSE;
    boolean test_completed = FALSE;
    boolean procedure_complete = TRUE;
    while (!test_completed)
    {
        if (new_test)
        {

            switch (current_test)
            {

            case MTP_LED:
                    //led_init();
                    initLED();
                    element = LED_E;
                    procedure_complete = MTP_Test_Procedure(current_test, element, blinkLED, Test_Elements_str[element], MTP_MANUAL, FALSE);
                    if (!procedure_complete)
                        continue; // the user moved to another test case. Ignore this test case, exit this loop iteration and go to the new test case
                    led = procedure_complete;
                    new_test = FALSE;
                break;

            case MTP_USER_BUTTON:
                    //button_init();
                    init_GPIOs();
                    element = BTN_E;
                    procedure_complete = MTP_Test_Procedure(current_test, element, control_LED, Test_Elements_str[element], MTP_MANUAL, FALSE);
                    if (!procedure_complete)
                        continue;
                    btn = procedure_complete;
                    new_test = FALSE;
                break;

            default:
                printf("ins:Unintended test case\n");
                break;
            }


            if(led && btn)
            {
            /*
                cy_stc_rtc_config_t Read_DateTime = {0};
                Cy_Rtc_GetDateAndTime(&Read_DateTime);

                if(Read_DateTime.sec != 0)
                {
                  writeStatusToFlash(WCO_E, true);
                }
                else
                {
                  writeStatusToFlash(WCO_E, false);
                }

                Term_Printf("log: Test Time - %d hr %d min %d sec\n\r", Read_DateTime.hour, Read_DateTime.min, Read_DateTime.sec);
                Cy_SysTick_DelayInUs(1000); */
                test_completed = TRUE;
            }
        }
    }
}




void core0_main(void)
{
    IfxCpu_enableInterrupts();
    
    /* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdogs and service them periodically if it is required
     */
    IfxWtu_disableCpuWatchdog(IfxWtu_getCpuWatchdogPassword());
    IfxWtu_disableSystemWatchdog(IfxWtu_getSystemWatchdogPassword());
    

    /* USB-UART initialization */
    SERIALIO_Init();

    /* Timer initialization */
    Init_Timer();

    /* WCO initialization */
    //wco_init();

    /* Printing on the terminal for MTP GUI to start */
    printf("cmd:start;\n\r\r");
    printf("\n\r");

    /* Printing on the serial terminal window */
    printf("log: TC4D7 Lite Kit Board Manufacturing Test\n");

    /* Printing the silicon details in the test report */
    //print_silicon_details();

    /* Reset the test */
    new_test = TRUE;

    /* Starting the tests by calling the MTP_Test() function */
    MTP_Test();

    ReadResult();


    while (1)
    {
    }
}
