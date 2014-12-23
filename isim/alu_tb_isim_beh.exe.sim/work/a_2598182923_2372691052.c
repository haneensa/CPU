/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/aisha/CPU1/alu_tb.vhd";



static void work_a_2598182923_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2598182923_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4128);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 6524);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 6556);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6588);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6591);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6623);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6655);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6658);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6690);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6722);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6725);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6757);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6789);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6792);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6824);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6856);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2448U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 6859);
    t5 = (t0 + 4192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 6891);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6923);
    t5 = (t0 + 4320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(102, ng0);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    goto LAB2;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

}


extern void work_a_2598182923_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2598182923_2372691052_p_0,(void *)work_a_2598182923_2372691052_p_1};
	xsi_register_didat("work_a_2598182923_2372691052", "isim/alu_tb_isim_beh.exe.sim/work/a_2598182923_2372691052.didat");
	xsi_register_executes(pe);
}
