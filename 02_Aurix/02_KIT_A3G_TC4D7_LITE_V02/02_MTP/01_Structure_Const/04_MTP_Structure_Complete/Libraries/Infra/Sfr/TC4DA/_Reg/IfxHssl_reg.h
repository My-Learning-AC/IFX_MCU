/**
 * \file IfxHssl_reg.h
 * \brief
 * \copyright Copyright (c) 2024 Infineon Technologies AG. All rights reserved.
 *
 *
 * Version: MC_ACE_A3G_HSI_HSSL/V0.2.1.1.4
 * Specification: latest @ 2024-03-02 instance sheet @ MC_A3G_HWDDSOC_FUNCTIONAL_INSTANCE_SHEET/V13.2.1.1.0
 * MAY BE CHANGED BY USER [yes/no]: No
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Use of this file is subject to the terms of use agreed between (i) you or 
 * the company in which ordinary course of business you are acting and (ii) 
 * Infineon Technologies AG or its licensees. If and as long as no such 
 * terms of use are agreed, use of this file is subject to following:


 * Boost Software License - Version 1.0 - August 17th, 2003

 * Permission is hereby granted, free of charge, to any person or 
 * organization obtaining a copy of the software and accompanying 
 * documentation covered by this license (the "Software") to use, reproduce,
 * display, distribute, execute, and transmit the Software, and to prepare
 * derivative works of the Software, and to permit third-parties to whom the 
 * Software is furnished to do so, all subject to the following:

 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE 
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxSfr_Hssl_Registers_Cfg Hssl address
 * \ingroup IfxSfr_Hssl_Registers
 * 
 * \defgroup IfxSfr_Hssl_Registers_Cfg_BaseAddress Base address
 * \ingroup IfxSfr_Hssl_Registers_Cfg
 *
 * \defgroup IfxSfr_Hssl_Registers_Cfg_Hssl0 2-HSSL0
 * \ingroup IfxSfr_Hssl_Registers_Cfg
 *
 * \defgroup IfxSfr_Hssl_Registers_Cfg_Hssl1 2-HSSL1
 * \ingroup IfxSfr_Hssl_Registers_Cfg
 *
 *
 */
#ifndef IFXHSSL_REG_H
#define IFXHSSL_REG_H 1
/******************************************************************************/
#include "IfxHssl_regdef.h"
/******************************************************************************/

/******************************************************************************/

/******************************************************************************/

/** \addtogroup IfxSfr_Hssl_Registers_Cfg_BaseAddress
 * \{  */

/** \brief HSSL object */
#define MODULE_HSSL0 /*lint --e(923, 9078)*/ ((*(Ifx_HSSL*)0xF4480000u))
#define MODULE_HSSL1 /*lint --e(923, 9078)*/ ((*(Ifx_HSSL*)0xF44A0000u))
/** \}  */


/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Hssl_Registers_Cfg_Hssl0
 * \{  */
/** \brief 0, Clock Control Register */
#define HSSL0_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CLC*)0xF4480000u)

/** \brief 4, OCDS Control and Status Register */
#define HSSL0_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_OCS*)0xF4480004u)

/** \brief 8, Module Identification Register */
#define HSSL0_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ID*)0xF4480008u)

/** \brief C, Reset Control Register A */
#define HSSL0_RST_CTRLA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_CTRLA*)0xF448000Cu)

/** \brief 10, Reset Control Register B */
#define HSSL0_RST_CTRLB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_CTRLB*)0xF4480010u)

/** \brief 14, Reset Status Register */
#define HSSL0_RST_STAT /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_STAT*)0xF4480014u)

/** \brief 20, PROT Register Endinit */
#define HSSL0_PROTE /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_PROT*)0xF4480020u)

/** \brief 24, PROT Register Safe Endinit */
#define HSSL0_PROTSE /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_PROT*)0xF4480024u)

/** \brief 40, Write access enable register A */
#define HSSL0_ACCEN_WRA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_WRA*)0xF4480040u)

/** \brief 44, Write access enable register B */
#define HSSL0_ACCEN_WRB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_WRB_FPI*)0xF4480044u)

/** \brief 48, Read access enable register A */
#define HSSL0_ACCEN_RDA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_RDA*)0xF4480048u)

/** \brief 4C, Read access enable register B */
#define HSSL0_ACCEN_RDB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_RDB_FPI*)0xF448004Cu)

/** \brief 50, VM access enable register */
#define HSSL0_ACCEN_VM /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_VM*)0xF4480050u)

/** \brief 54, PRS access enable register */
#define HSSL0_ACCEN_PRS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_PRS*)0xF4480054u)

/** \brief 60, CRC Control Register */
#define HSSL0_CRC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CRC*)0xF4480060u)

/** \brief 64, Configuration Register */
#define HSSL0_CFG /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CFG*)0xF4480064u)

/** \brief 68, Request Flags Register */
#define HSSL0_QFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_QFLAGS*)0xF4480068u)

/** \brief 6C, Miscellaneous Flags Register */
#define HSSL0_MFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGS*)0xF448006Cu)

/** \brief 70, Miscellaneous Flags Set Register */
#define HSSL0_MFLAGSSET /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSSET*)0xF4480070u)

/** \brief 74, Miscellaneous Flags Clear Register */
#define HSSL0_MFLAGSCL /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSCL*)0xF4480074u)

/** \brief 78, Flags Enable Register */
#define HSSL0_MFLAGSEN /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSEN*)0xF4480078u)

/** \brief 7C, Stream FIFOs Status Flags Register */
#define HSSL0_SFSFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_SFSFLAGS*)0xF448007Cu)

/** \brief 80, Initiator Write Data Register 0 */
#define HSSL0_I0_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF4480080u)
/** Alias (User Manual Name) for HSSL0_I0_IWD */
#define HSSL0_IWD0 (HSSL0_I0_IWD)

/** \brief 84, Initiator Control Data Register 0 */
#define HSSL0_I0_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF4480084u)
/** Alias (User Manual Name) for HSSL0_I0_ICON */
#define HSSL0_ICON0 (HSSL0_I0_ICON)

/** \brief 88, Initiator Read Write Address Register 0 */
#define HSSL0_I0_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF4480088u)
/** Alias (User Manual Name) for HSSL0_I0_IRWA */
#define HSSL0_IRWA0 (HSSL0_I0_IRWA)

/** \brief 8C, Initiator Read Data Register 0 */
#define HSSL0_I0_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF448008Cu)
/** Alias (User Manual Name) for HSSL0_I0_IRD */
#define HSSL0_IRD0 (HSSL0_I0_IRD)

/** \brief 90, Initiator Write Data Register 1 */
#define HSSL0_I1_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF4480090u)
/** Alias (User Manual Name) for HSSL0_I1_IWD */
#define HSSL0_IWD1 (HSSL0_I1_IWD)

/** \brief 94, Initiator Control Data Register 1 */
#define HSSL0_I1_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF4480094u)
/** Alias (User Manual Name) for HSSL0_I1_ICON */
#define HSSL0_ICON1 (HSSL0_I1_ICON)

/** \brief 98, Initiator Read Write Address Register 1 */
#define HSSL0_I1_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF4480098u)
/** Alias (User Manual Name) for HSSL0_I1_IRWA */
#define HSSL0_IRWA1 (HSSL0_I1_IRWA)

/** \brief 9C, Initiator Read Data Register 1 */
#define HSSL0_I1_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF448009Cu)
/** Alias (User Manual Name) for HSSL0_I1_IRD */
#define HSSL0_IRD1 (HSSL0_I1_IRD)

/** \brief A0, Initiator Write Data Register 2 */
#define HSSL0_I2_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44800A0u)
/** Alias (User Manual Name) for HSSL0_I2_IWD */
#define HSSL0_IWD2 (HSSL0_I2_IWD)

/** \brief A4, Initiator Control Data Register 2 */
#define HSSL0_I2_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44800A4u)
/** Alias (User Manual Name) for HSSL0_I2_ICON */
#define HSSL0_ICON2 (HSSL0_I2_ICON)

/** \brief A8, Initiator Read Write Address Register 2 */
#define HSSL0_I2_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44800A8u)
/** Alias (User Manual Name) for HSSL0_I2_IRWA */
#define HSSL0_IRWA2 (HSSL0_I2_IRWA)

/** \brief AC, Initiator Read Data Register 2 */
#define HSSL0_I2_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44800ACu)
/** Alias (User Manual Name) for HSSL0_I2_IRD */
#define HSSL0_IRD2 (HSSL0_I2_IRD)

/** \brief B0, Initiator Write Data Register 3 */
#define HSSL0_I3_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44800B0u)
/** Alias (User Manual Name) for HSSL0_I3_IWD */
#define HSSL0_IWD3 (HSSL0_I3_IWD)

/** \brief B4, Initiator Control Data Register 3 */
#define HSSL0_I3_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44800B4u)
/** Alias (User Manual Name) for HSSL0_I3_ICON */
#define HSSL0_ICON3 (HSSL0_I3_ICON)

/** \brief B8, Initiator Read Write Address Register 3 */
#define HSSL0_I3_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44800B8u)
/** Alias (User Manual Name) for HSSL0_I3_IRWA */
#define HSSL0_IRWA3 (HSSL0_I3_IRWA)

/** \brief BC, Initiator Read Data Register 3 */
#define HSSL0_I3_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44800BCu)
/** Alias (User Manual Name) for HSSL0_I3_IRD */
#define HSSL0_IRD3 (HSSL0_I3_IRD)

/** \brief C0, Target Current Data Register 0 */
#define HSSL0_T0_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44800C0u)
/** Alias (User Manual Name) for HSSL0_T0_TCD */
#define HSSL0_TCD0 (HSSL0_T0_TCD)

/** \brief C4, Target Current Address Register 0 */
#define HSSL0_T0_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44800C4u)
/** Alias (User Manual Name) for HSSL0_T0_TCA */
#define HSSL0_TCA0 (HSSL0_T0_TCA)

/** \brief C8, Target Current Data Register 1 */
#define HSSL0_T1_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44800C8u)
/** Alias (User Manual Name) for HSSL0_T1_TCD */
#define HSSL0_TCD1 (HSSL0_T1_TCD)

/** \brief CC, Target Current Address Register 1 */
#define HSSL0_T1_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44800CCu)
/** Alias (User Manual Name) for HSSL0_T1_TCA */
#define HSSL0_TCA1 (HSSL0_T1_TCA)

/** \brief D0, Target Current Data Register 2 */
#define HSSL0_T2_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44800D0u)
/** Alias (User Manual Name) for HSSL0_T2_TCD */
#define HSSL0_TCD2 (HSSL0_T2_TCD)

/** \brief D4, Target Current Address Register 2 */
#define HSSL0_T2_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44800D4u)
/** Alias (User Manual Name) for HSSL0_T2_TCA */
#define HSSL0_TCA2 (HSSL0_T2_TCA)

/** \brief D8, Target Current Data Register 3 */
#define HSSL0_T3_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44800D8u)
/** Alias (User Manual Name) for HSSL0_T3_TCD */
#define HSSL0_TCD3 (HSSL0_T3_TCD)

/** \brief DC, Target Current Address Register 3 */
#define HSSL0_T3_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44800DCu)
/** Alias (User Manual Name) for HSSL0_T3_TCA */
#define HSSL0_TCA3 (HSSL0_T3_TCA)

/** \brief E0, Target Status Register */
#define HSSL0_TSTAT /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TSTAT*)0xF44800E0u)

/** \brief E4, Target ID Address Register */
#define HSSL0_TIDADD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TIDADD*)0xF44800E4u)

/** \brief E8, Security Control Register */
#define HSSL0_SEC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_SEC*)0xF44800E8u)

/** \brief EC, Multi Slave Control Register */
#define HSSL0_MSCR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MSCR*)0xF44800ECu)

/** \brief F0, Initiator Stream Start Address Register */
#define HSSL0_IS_SA0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_SA*)0xF44800F0u)
/** Alias (User Manual Name) for HSSL0_IS_SA0 */
#define HSSL0_ISSA0 (HSSL0_IS_SA0)

/** \brief F4, Initiator Stream Start Address Register */
#define HSSL0_IS_SA1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_SA*)0xF44800F4u)
/** Alias (User Manual Name) for HSSL0_IS_SA1 */
#define HSSL0_ISSA1 (HSSL0_IS_SA1)

/** \brief F8, Initiator Stream Current Address Register */
#define HSSL0_IS_CA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_CA*)0xF44800F8u)
/** Alias (User Manual Name) for HSSL0_IS_CA */
#define HSSL0_ISCA (HSSL0_IS_CA)

/** \brief FC, Initiator Stream Frame Count Register */
#define HSSL0_IS_FC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_FC*)0xF44800FCu)
/** Alias (User Manual Name) for HSSL0_IS_FC */
#define HSSL0_ISFC (HSSL0_IS_FC)

/** \brief 100, Target Stream Start Address Register 0 */
#define HSSL0_TS_SA0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_SA*)0xF4480100u)
/** Alias (User Manual Name) for HSSL0_TS_SA0 */
#define HSSL0_TSSA0 (HSSL0_TS_SA0)

/** \brief 104, Target Stream Start Address Register 1 */
#define HSSL0_TS_SA1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_SA*)0xF4480104u)
/** Alias (User Manual Name) for HSSL0_TS_SA1 */
#define HSSL0_TSSA1 (HSSL0_TS_SA1)

/** \brief 108, Target Stream Current Address Register */
#define HSSL0_TS_CA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_CA*)0xF4480108u)
/** Alias (User Manual Name) for HSSL0_TS_CA */
#define HSSL0_TSCA (HSSL0_TS_CA)

/** \brief 10C, Target Stream Frame Count Register */
#define HSSL0_TS_FC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_FC*)0xF448010Cu)
/** Alias (User Manual Name) for HSSL0_TS_FC */
#define HSSL0_TSFC (HSSL0_TS_FC)

/** \brief 110, Access Window Start Register 0 */
#define HSSL0_AW0_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF4480110u)
/** Alias (User Manual Name) for HSSL0_AW0_AWSTART */
#define HSSL0_AWSTART0 (HSSL0_AW0_AWSTART)

/** \brief 114, Access Window End Register 0 */
#define HSSL0_AW0_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF4480114u)
/** Alias (User Manual Name) for HSSL0_AW0_AWEND */
#define HSSL0_AWEND0 (HSSL0_AW0_AWEND)

/** \brief 118, Access Window Start Register 1 */
#define HSSL0_AW1_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF4480118u)
/** Alias (User Manual Name) for HSSL0_AW1_AWSTART */
#define HSSL0_AWSTART1 (HSSL0_AW1_AWSTART)

/** \brief 11C, Access Window End Register 1 */
#define HSSL0_AW1_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF448011Cu)
/** Alias (User Manual Name) for HSSL0_AW1_AWEND */
#define HSSL0_AWEND1 (HSSL0_AW1_AWEND)

/** \brief 120, Access Window Start Register 2 */
#define HSSL0_AW2_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF4480120u)
/** Alias (User Manual Name) for HSSL0_AW2_AWSTART */
#define HSSL0_AWSTART2 (HSSL0_AW2_AWSTART)

/** \brief 124, Access Window End Register 2 */
#define HSSL0_AW2_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF4480124u)
/** Alias (User Manual Name) for HSSL0_AW2_AWEND */
#define HSSL0_AWEND2 (HSSL0_AW2_AWEND)

/** \brief 128, Access Window Start Register 3 */
#define HSSL0_AW3_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF4480128u)
/** Alias (User Manual Name) for HSSL0_AW3_AWSTART */
#define HSSL0_AWSTART3 (HSSL0_AW3_AWSTART)

/** \brief 12C, Access Window End Register 3 */
#define HSSL0_AW3_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF448012Cu)
/** Alias (User Manual Name) for HSSL0_AW3_AWEND */
#define HSSL0_AWEND3 (HSSL0_AW3_AWEND)

/** \brief 130, Access Rules Register */
#define HSSL0_AR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AR*)0xF4480130u)

/******************************************************************************/
/******************************************************************************/
/** \addtogroup IfxSfr_Hssl_Registers_Cfg_Hssl1
 * \{  */
/** \brief 0, Clock Control Register */
#define HSSL1_CLC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CLC*)0xF44A0000u)

/** \brief 4, OCDS Control and Status Register */
#define HSSL1_OCS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_OCS*)0xF44A0004u)

/** \brief 8, Module Identification Register */
#define HSSL1_ID /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ID*)0xF44A0008u)

/** \brief C, Reset Control Register A */
#define HSSL1_RST_CTRLA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_CTRLA*)0xF44A000Cu)

/** \brief 10, Reset Control Register B */
#define HSSL1_RST_CTRLB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_CTRLB*)0xF44A0010u)

/** \brief 14, Reset Status Register */
#define HSSL1_RST_STAT /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_RST_STAT*)0xF44A0014u)

/** \brief 20, PROT Register Endinit */
#define HSSL1_PROTE /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_PROT*)0xF44A0020u)

/** \brief 24, PROT Register Safe Endinit */
#define HSSL1_PROTSE /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_PROT*)0xF44A0024u)

/** \brief 40, Write access enable register A */
#define HSSL1_ACCEN_WRA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_WRA*)0xF44A0040u)

/** \brief 44, Write access enable register B */
#define HSSL1_ACCEN_WRB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_WRB_FPI*)0xF44A0044u)

/** \brief 48, Read access enable register A */
#define HSSL1_ACCEN_RDA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_RDA*)0xF44A0048u)

/** \brief 4C, Read access enable register B */
#define HSSL1_ACCEN_RDB /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_RDB_FPI*)0xF44A004Cu)

/** \brief 50, VM access enable register */
#define HSSL1_ACCEN_VM /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_VM*)0xF44A0050u)

/** \brief 54, PRS access enable register */
#define HSSL1_ACCEN_PRS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_ACCEN_PRS*)0xF44A0054u)

/** \brief 60, CRC Control Register */
#define HSSL1_CRC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CRC*)0xF44A0060u)

/** \brief 64, Configuration Register */
#define HSSL1_CFG /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_CFG*)0xF44A0064u)

/** \brief 68, Request Flags Register */
#define HSSL1_QFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_QFLAGS*)0xF44A0068u)

/** \brief 6C, Miscellaneous Flags Register */
#define HSSL1_MFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGS*)0xF44A006Cu)

/** \brief 70, Miscellaneous Flags Set Register */
#define HSSL1_MFLAGSSET /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSSET*)0xF44A0070u)

/** \brief 74, Miscellaneous Flags Clear Register */
#define HSSL1_MFLAGSCL /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSCL*)0xF44A0074u)

/** \brief 78, Flags Enable Register */
#define HSSL1_MFLAGSEN /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MFLAGSEN*)0xF44A0078u)

/** \brief 7C, Stream FIFOs Status Flags Register */
#define HSSL1_SFSFLAGS /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_SFSFLAGS*)0xF44A007Cu)

/** \brief 80, Initiator Write Data Register 0 */
#define HSSL1_I0_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44A0080u)
/** Alias (User Manual Name) for HSSL1_I0_IWD */
#define HSSL1_IWD0 (HSSL1_I0_IWD)

/** \brief 84, Initiator Control Data Register 0 */
#define HSSL1_I0_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44A0084u)
/** Alias (User Manual Name) for HSSL1_I0_ICON */
#define HSSL1_ICON0 (HSSL1_I0_ICON)

/** \brief 88, Initiator Read Write Address Register 0 */
#define HSSL1_I0_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44A0088u)
/** Alias (User Manual Name) for HSSL1_I0_IRWA */
#define HSSL1_IRWA0 (HSSL1_I0_IRWA)

/** \brief 8C, Initiator Read Data Register 0 */
#define HSSL1_I0_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44A008Cu)
/** Alias (User Manual Name) for HSSL1_I0_IRD */
#define HSSL1_IRD0 (HSSL1_I0_IRD)

/** \brief 90, Initiator Write Data Register 1 */
#define HSSL1_I1_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44A0090u)
/** Alias (User Manual Name) for HSSL1_I1_IWD */
#define HSSL1_IWD1 (HSSL1_I1_IWD)

/** \brief 94, Initiator Control Data Register 1 */
#define HSSL1_I1_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44A0094u)
/** Alias (User Manual Name) for HSSL1_I1_ICON */
#define HSSL1_ICON1 (HSSL1_I1_ICON)

/** \brief 98, Initiator Read Write Address Register 1 */
#define HSSL1_I1_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44A0098u)
/** Alias (User Manual Name) for HSSL1_I1_IRWA */
#define HSSL1_IRWA1 (HSSL1_I1_IRWA)

/** \brief 9C, Initiator Read Data Register 1 */
#define HSSL1_I1_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44A009Cu)
/** Alias (User Manual Name) for HSSL1_I1_IRD */
#define HSSL1_IRD1 (HSSL1_I1_IRD)

/** \brief A0, Initiator Write Data Register 2 */
#define HSSL1_I2_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44A00A0u)
/** Alias (User Manual Name) for HSSL1_I2_IWD */
#define HSSL1_IWD2 (HSSL1_I2_IWD)

/** \brief A4, Initiator Control Data Register 2 */
#define HSSL1_I2_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44A00A4u)
/** Alias (User Manual Name) for HSSL1_I2_ICON */
#define HSSL1_ICON2 (HSSL1_I2_ICON)

/** \brief A8, Initiator Read Write Address Register 2 */
#define HSSL1_I2_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44A00A8u)
/** Alias (User Manual Name) for HSSL1_I2_IRWA */
#define HSSL1_IRWA2 (HSSL1_I2_IRWA)

/** \brief AC, Initiator Read Data Register 2 */
#define HSSL1_I2_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44A00ACu)
/** Alias (User Manual Name) for HSSL1_I2_IRD */
#define HSSL1_IRD2 (HSSL1_I2_IRD)

/** \brief B0, Initiator Write Data Register 3 */
#define HSSL1_I3_IWD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IWD*)0xF44A00B0u)
/** Alias (User Manual Name) for HSSL1_I3_IWD */
#define HSSL1_IWD3 (HSSL1_I3_IWD)

/** \brief B4, Initiator Control Data Register 3 */
#define HSSL1_I3_ICON /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_ICON*)0xF44A00B4u)
/** Alias (User Manual Name) for HSSL1_I3_ICON */
#define HSSL1_ICON3 (HSSL1_I3_ICON)

/** \brief B8, Initiator Read Write Address Register 3 */
#define HSSL1_I3_IRWA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRWA*)0xF44A00B8u)
/** Alias (User Manual Name) for HSSL1_I3_IRWA */
#define HSSL1_IRWA3 (HSSL1_I3_IRWA)

/** \brief BC, Initiator Read Data Register 3 */
#define HSSL1_I3_IRD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_I_IRD*)0xF44A00BCu)
/** Alias (User Manual Name) for HSSL1_I3_IRD */
#define HSSL1_IRD3 (HSSL1_I3_IRD)

/** \brief C0, Target Current Data Register 0 */
#define HSSL1_T0_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44A00C0u)
/** Alias (User Manual Name) for HSSL1_T0_TCD */
#define HSSL1_TCD0 (HSSL1_T0_TCD)

/** \brief C4, Target Current Address Register 0 */
#define HSSL1_T0_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44A00C4u)
/** Alias (User Manual Name) for HSSL1_T0_TCA */
#define HSSL1_TCA0 (HSSL1_T0_TCA)

/** \brief C8, Target Current Data Register 1 */
#define HSSL1_T1_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44A00C8u)
/** Alias (User Manual Name) for HSSL1_T1_TCD */
#define HSSL1_TCD1 (HSSL1_T1_TCD)

/** \brief CC, Target Current Address Register 1 */
#define HSSL1_T1_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44A00CCu)
/** Alias (User Manual Name) for HSSL1_T1_TCA */
#define HSSL1_TCA1 (HSSL1_T1_TCA)

/** \brief D0, Target Current Data Register 2 */
#define HSSL1_T2_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44A00D0u)
/** Alias (User Manual Name) for HSSL1_T2_TCD */
#define HSSL1_TCD2 (HSSL1_T2_TCD)

/** \brief D4, Target Current Address Register 2 */
#define HSSL1_T2_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44A00D4u)
/** Alias (User Manual Name) for HSSL1_T2_TCA */
#define HSSL1_TCA2 (HSSL1_T2_TCA)

/** \brief D8, Target Current Data Register 3 */
#define HSSL1_T3_TCD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCD*)0xF44A00D8u)
/** Alias (User Manual Name) for HSSL1_T3_TCD */
#define HSSL1_TCD3 (HSSL1_T3_TCD)

/** \brief DC, Target Current Address Register 3 */
#define HSSL1_T3_TCA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_T_TCA*)0xF44A00DCu)
/** Alias (User Manual Name) for HSSL1_T3_TCA */
#define HSSL1_TCA3 (HSSL1_T3_TCA)

/** \brief E0, Target Status Register */
#define HSSL1_TSTAT /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TSTAT*)0xF44A00E0u)

/** \brief E4, Target ID Address Register */
#define HSSL1_TIDADD /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TIDADD*)0xF44A00E4u)

/** \brief E8, Security Control Register */
#define HSSL1_SEC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_SEC*)0xF44A00E8u)

/** \brief EC, Multi Slave Control Register */
#define HSSL1_MSCR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_MSCR*)0xF44A00ECu)

/** \brief F0, Initiator Stream Start Address Register */
#define HSSL1_IS_SA0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_SA*)0xF44A00F0u)
/** Alias (User Manual Name) for HSSL1_IS_SA0 */
#define HSSL1_ISSA0 (HSSL1_IS_SA0)

/** \brief F4, Initiator Stream Start Address Register */
#define HSSL1_IS_SA1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_SA*)0xF44A00F4u)
/** Alias (User Manual Name) for HSSL1_IS_SA1 */
#define HSSL1_ISSA1 (HSSL1_IS_SA1)

/** \brief F8, Initiator Stream Current Address Register */
#define HSSL1_IS_CA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_CA*)0xF44A00F8u)
/** Alias (User Manual Name) for HSSL1_IS_CA */
#define HSSL1_ISCA (HSSL1_IS_CA)

/** \brief FC, Initiator Stream Frame Count Register */
#define HSSL1_IS_FC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_IS_FC*)0xF44A00FCu)
/** Alias (User Manual Name) for HSSL1_IS_FC */
#define HSSL1_ISFC (HSSL1_IS_FC)

/** \brief 100, Target Stream Start Address Register 0 */
#define HSSL1_TS_SA0 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_SA*)0xF44A0100u)
/** Alias (User Manual Name) for HSSL1_TS_SA0 */
#define HSSL1_TSSA0 (HSSL1_TS_SA0)

/** \brief 104, Target Stream Start Address Register 1 */
#define HSSL1_TS_SA1 /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_SA*)0xF44A0104u)
/** Alias (User Manual Name) for HSSL1_TS_SA1 */
#define HSSL1_TSSA1 (HSSL1_TS_SA1)

/** \brief 108, Target Stream Current Address Register */
#define HSSL1_TS_CA /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_CA*)0xF44A0108u)
/** Alias (User Manual Name) for HSSL1_TS_CA */
#define HSSL1_TSCA (HSSL1_TS_CA)

/** \brief 10C, Target Stream Frame Count Register */
#define HSSL1_TS_FC /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_TS_FC*)0xF44A010Cu)
/** Alias (User Manual Name) for HSSL1_TS_FC */
#define HSSL1_TSFC (HSSL1_TS_FC)

/** \brief 110, Access Window Start Register 0 */
#define HSSL1_AW0_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF44A0110u)
/** Alias (User Manual Name) for HSSL1_AW0_AWSTART */
#define HSSL1_AWSTART0 (HSSL1_AW0_AWSTART)

/** \brief 114, Access Window End Register 0 */
#define HSSL1_AW0_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF44A0114u)
/** Alias (User Manual Name) for HSSL1_AW0_AWEND */
#define HSSL1_AWEND0 (HSSL1_AW0_AWEND)

/** \brief 118, Access Window Start Register 1 */
#define HSSL1_AW1_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF44A0118u)
/** Alias (User Manual Name) for HSSL1_AW1_AWSTART */
#define HSSL1_AWSTART1 (HSSL1_AW1_AWSTART)

/** \brief 11C, Access Window End Register 1 */
#define HSSL1_AW1_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF44A011Cu)
/** Alias (User Manual Name) for HSSL1_AW1_AWEND */
#define HSSL1_AWEND1 (HSSL1_AW1_AWEND)

/** \brief 120, Access Window Start Register 2 */
#define HSSL1_AW2_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF44A0120u)
/** Alias (User Manual Name) for HSSL1_AW2_AWSTART */
#define HSSL1_AWSTART2 (HSSL1_AW2_AWSTART)

/** \brief 124, Access Window End Register 2 */
#define HSSL1_AW2_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF44A0124u)
/** Alias (User Manual Name) for HSSL1_AW2_AWEND */
#define HSSL1_AWEND2 (HSSL1_AW2_AWEND)

/** \brief 128, Access Window Start Register 3 */
#define HSSL1_AW3_AWSTART /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWSTART*)0xF44A0128u)
/** Alias (User Manual Name) for HSSL1_AW3_AWSTART */
#define HSSL1_AWSTART3 (HSSL1_AW3_AWSTART)

/** \brief 12C, Access Window End Register 3 */
#define HSSL1_AW3_AWEND /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AW_AWEND*)0xF44A012Cu)
/** Alias (User Manual Name) for HSSL1_AW3_AWEND */
#define HSSL1_AWEND3 (HSSL1_AW3_AWEND)

/** \brief 130, Access Rules Register */
#define HSSL1_AR /*lint --e(923, 9078)*/ (*(volatile Ifx_HSSL_AR*)0xF44A0130u)


/** \}  */

/******************************************************************************/

/******************************************************************************/

#endif /* IFXHSSL_REG_H */
