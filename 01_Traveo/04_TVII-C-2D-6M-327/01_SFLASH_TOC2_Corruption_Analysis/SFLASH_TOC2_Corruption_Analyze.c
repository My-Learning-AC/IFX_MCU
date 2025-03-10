/***************************************************************************//**
* \file main_cm0plus.c
*
* \version 1.0
*
* \brief Main example file for CM0+
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

#if (CY_USE_PSVP == 1)
    #define USER_LED1_PORT           CY_LED0_PORT
    #define USER_LED1_PIN            CY_LED0_PIN
    #define USER_LED1_PIN_MUX        CY_LED0_PIN_MUX
    
    #define USER_LED2_PORT           CY_LED1_PORT
    #define USER_LED2_PIN            CY_LED1_PIN
    #define USER_LED2_PIN_MUX        CY_LED1_PIN_MUX

    #define USER_LED3_PORT           CY_LED2_PORT
    #define USER_LED3_PIN            CY_LED2_PIN
    #define USER_LED3_PIN_MUX        CY_LED2_PIN_MUX
#else
    #define USER_LED1_PORT           CY_USER_LED1_PORT
    #define USER_LED1_PIN            CY_USER_LED1_PIN
    #define USER_LED1_PIN_MUX        CY_USER_LED1_PIN_MUX
    
    #define USER_LED2_PORT           CY_USER_LED2_PORT
    #define USER_LED2_PIN            CY_USER_LED2_PIN
    #define USER_LED2_PIN_MUX        CY_USER_LED2_PIN_MUX

    #define USER_LED3_PORT           CY_USER_LED3_PORT
    #define USER_LED3_PIN            CY_USER_LED3_PIN
    #define USER_LED3_PIN_MUX        CY_USER_LED3_PIN_MUX
#endif



/*------------------------------------------------------------*/

#define TOC2_BASE       (uint32_t *) 0x17007C00
#define TOC2_END        (uint32_t *)  0x17007DFF

uint32_t TOC2_ROW[130] = {0};

/*------------------------------------------------------------*/



cy_stc_gpio_pin_config_t user_led_port_pin_cfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF,
    .hsiom     = USER_LED1_PIN_MUX,
    .intEdge   = 0ul,
    .intMask   = 0ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

int main(void)
{
    SystemInit();
  
    __enable_irq();

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    user_led_port_pin_cfg.hsiom = USER_LED1_PIN_MUX;
    Cy_GPIO_Pin_Init(USER_LED1_PORT, USER_LED1_PIN, &user_led_port_pin_cfg);

    user_led_port_pin_cfg.hsiom = USER_LED2_PIN_MUX;
    Cy_GPIO_Pin_Init(USER_LED2_PORT, USER_LED2_PIN, &user_led_port_pin_cfg);

    user_led_port_pin_cfg.hsiom = USER_LED3_PIN_MUX;
    Cy_GPIO_Pin_Init(USER_LED3_PORT, USER_LED3_PIN, &user_led_port_pin_cfg);
    
    
    /*------------------------------------------------------------*/
    
    
    volatile uint32_t *TOC2_ptr = TOC2_BASE;
    volatile uint8_t i = 0;
    
    
     while(TOC2_ptr < TOC2_END)
    {
      TOC2_ROW[i++] = *TOC2_ptr;
      TOC2_ptr++;
    }

    
    /*------------------------------------------------------------*/

    

    for(;;)
    {
        // Wait 0.05 [s]
        Cy_SysTick_DelayInUs(50000ul);

        Cy_GPIO_Inv(USER_LED1_PORT, USER_LED1_PIN);
        Cy_GPIO_Inv(USER_LED2_PORT, USER_LED2_PIN);
        Cy_GPIO_Inv(USER_LED3_PORT, USER_LED3_PIN);
    }
}


/* [] END OF FILE */





/*
#include "cy_project.h"
#include "cy_device_headers.h"


#define TOC2_BASE       (uint32_t *) 0x17007C00
#define TOC2_END        (uint32_t *)  0x17007DFF

uint32_t TOC2_ROW[130] = {0};



int main(void)
{
    __enable_irq();
	
    SystemInit();
    
    volatile uint32_t *TOC2_ptr = TOC2_BASE;
    volatile uint8_t i = 0;
    
    
    while(TOC2_ptr < TOC2_END)
    {
      TOC2_ROW[i++] = *TOC2_ptr;
      TOC2_ptr++;
    }
    
    

    for(;;)
    {
      
    }
}
*/

