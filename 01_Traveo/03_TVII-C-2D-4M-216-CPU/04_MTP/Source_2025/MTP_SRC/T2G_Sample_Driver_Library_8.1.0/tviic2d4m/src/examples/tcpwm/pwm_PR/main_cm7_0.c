/***************************************************************************//**
* \file main_cm7_0.c
*
* \version 1.0
*
* \brief Main example file for CM7
*
********************************************************************************
* \copyright
* Copyright 2016-2020, Cypress Semiconductor Corporation. All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "cy_project.h"
#include "cy_device_headers.h"

/*****************************************************************************/
/* Local pre-processor symbols/macros ('#define')                            */
/*****************************************************************************/
/*SR Mode Constants*/
#define PERIOD_BUFF                             0x3000    //Change these values as per 8-bit,12,16,24,32
#define PERIOD_VALUE                            0x591E    //Change these values as per 8-bit,12,16,24,32
#define INITIAL_COUNTER_VALUE                   0xACE1
#define CC0_VALUE                               0x4000    //0x40000000,0x00/*We should change these values to get constant high pulse, constant low, and toggling pulse*/
#define CC1_VALUE                               0x7FFFFF


/* PWM PR Mode Configuration def */

#define TCPWMx_GRPx_CNTx_PWM_PR                 TCPWM0_GRP0_CNT22
#define PCLK_TCPWMx_CLOCKSx_PWM_PR              PCLK_TCPWM0_CLOCKS22
#define TCPWMx_PERI_CLK_DIVIDER_NO_PWM_PR       0u

// LINEx: x = (256 * GrpNum) + (CntNum)
/* P6_0_TCPWM_LINE0 */
#define TCPWMx_LINEx_PORT                       GPIO_PRT9              // P9_18
#define TCPWMx_LINEx_PIN                        7u
#define TCPWMx_LINEx_MUX                        P9_7_TCPWM0_LINE22

/*****************************************************************************/
/* Global variable definitions (declared in header file with 'extern')       */
/*****************************************************************************/

/*****************************************************************************/
/* Local type definitions ('typedef')                                        */
/*****************************************************************************/

/*****************************************************************************/
/* Local function prototypes ('static')                                      */
/*****************************************************************************/


/*****************************************************************************/
/* Local variable definitions ('static')                                     */
/*****************************************************************************/
cy_stc_gpio_pin_config_t pwm_line_out_pin_cfg = 
{
    .outVal    = 0x01u,
    .driveMode = CY_GPIO_DM_STRONG,
    .hsiom     = TCPWMx_LINEx_MUX,
    .intEdge   = 0u,
    .intMask   = 0u,
    .vtrip     = 0u,
    .slewRate  = 0u,
    .driveSel  = 0u,
    .vregEn    = 0u,
    .ibufMode  = 0u,
    .vtripSel  = 0u,
    .vrefSel   = 0u,
    .vohSel    = 0u,
};

cy_stc_tcpwm_pwm_config_t const MyPWM_config =
{
    .pwmMode            = CY_TCPWM_PWM_MODE_PSEUDORANDOM,
    .clockPrescaler     = CY_TCPWM_PRESCALER_DIVBY_16,
    .debug_pause        = false,
    .cc0MatchMode       = CY_TCPWM_PWM_TR_CTRL2_CLEAR,
    .overflowMode       = CY_TCPWM_PWM_TR_CTRL2_SET,
    .underflowMode      = CY_TCPWM_PWM_TR_CTRL2_NO_CHANGE,
    .cc1MatchMode       = CY_TCPWM_PWM_TR_CTRL2_NO_CHANGE,
    .runMode            = CY_TCPWM_PWM_CONTINUOUS,
    .deadTime           = 0u,            /**< The number of dead time-clocks in PWM in PWM_DT mode (8-bit for Grp0 and Grp2, 16-bit for Grp1)*/
    .deadTimeComp       = 0u,            /**< The number of dead time-clocks in PWM_COMPL n PWM_DT mode (only for Grp1)*/
    .countDirection     = 0u,
    .period             = PERIOD_VALUE,
    .period_buff        = PERIOD_BUFF,
    .enablePeriodSwap   = false,
    .enableLineSelSwap  = 0u,
    .compare0           = CC0_VALUE,
    .compare0_buff      = 0uL,
    .enableCompare0Swap = false,
    .compare1           = CC1_VALUE,
    .compare1_buff      = 0uL,
    .enableCompare1Swap = false,
    .interruptSources   = CY_TCPWM_INT_ON_TC,
    .invertPWMOut       = 0uL,
    .invertPWMOutN      = 0uL,
    .killMode           = CY_TCPWM_PWM_STOP_ON_KILL,
    .switchInputMode    = CY_TCPWM_INPUT_LEVEL,
    .switchInput        = 0uL,
    .reloadInputMode    = CY_TCPWM_INPUT_LEVEL,
    .reloadInput        = 0uL,
    .startInputMode     = CY_TCPWM_INPUT_LEVEL,
    .startInput         = 0uL,
    .kill0InputMode     = CY_TCPWM_INPUT_LEVEL,
    .kill0Input         = 0uL,
    .kill1InputMode     = CY_TCPWM_INPUT_LEVEL,
    .kill1Input         = 0uL,
    .countInputMode     = CY_TCPWM_INPUT_LEVEL,
    .countInput         = 1uL,
};

/*****************************************************************************/
/* Function implementation - global ('extern') and local ('static')          */
/*****************************************************************************/
int main(void)
{
    SystemInit();

    __enable_irq(); /* Enable global interrupts. */
    
    Cy_SysClk_HfClkEnable(CY_SYSCLK_HFCLK_2); //CLK_HF2 enable

    /*--------------------------------*/
    /* Clock Configuration for TCPWMs */
    /*--------------------------------*/
    /* Assign a programmable divider  for TCPWM0_GRPx_CNTx_PWM_PR */
    Cy_SysClk_PeriphAssignDivider(PCLK_TCPWMx_CLOCKSx_PWM_PR, (cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, TCPWMx_PERI_CLK_DIVIDER_NO_PWM_PR);
    /* Sets the 16-bit divider */
  #if (CY_USE_PSVP == 1u)
    Cy_SysClk_PeriphSetDivider(Cy_SysClk_GetClockGroup(PCLK_TCPWMx_CLOCKSx_PWM_PR), (cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, TCPWMx_PERI_CLK_DIVIDER_NO_PWM_PR, 11u); // Divider 11 --> 24MHz / (11+1) = 2MHz
  #else
    Cy_SysClk_PeriphSetDivider(Cy_SysClk_GetClockGroup(PCLK_TCPWMx_CLOCKSx_PWM_PR), (cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, TCPWMx_PERI_CLK_DIVIDER_NO_PWM_PR, 39u); // Divider 39 --> 80MHz / (39+1) = 2MHz
  #endif
    Cy_SysClk_PeriphEnableDivider(Cy_SysClk_GetClockGroup(PCLK_TCPWMx_CLOCKSx_PWM_PR), (cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, TCPWMx_PERI_CLK_DIVIDER_NO_PWM_PR);

    /*------------------------------------------------*/
    /* Port Configuration for TCPWM PR, LEDs (GPIOs)  */
    /*------------------------------------------------*/
    Cy_GPIO_Pin_Init(TCPWMx_LINEx_PORT, TCPWMx_LINEx_PIN, &pwm_line_out_pin_cfg);

    /* Initialize TCPWM0_GRPx_CNTx_PWM_PR as PWM-PR Mode & Enable */
    Cy_Tcpwm_Pwm_Init(TCPWMx_GRPx_CNTx_PWM_PR, &MyPWM_config);
    Cy_Tcpwm_Pwm_Enable(TCPWMx_GRPx_CNTx_PWM_PR);
    Cy_Tcpwm_Pwm_SetCounter(TCPWMx_GRPx_CNTx_PWM_PR, INITIAL_COUNTER_VALUE);
    Cy_Tcpwm_TriggerStart(TCPWMx_GRPx_CNTx_PWM_PR);

    for(;;);
}

/* [] END OF FILE */
