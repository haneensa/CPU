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
static const char *ng0 = "C:/Users/aisha/CPU1/register_file.vhd";
extern char *IEEE_P_3499444699;



static void work_a_2615964831_0338507630_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t10 = xsi_signal_has_event(t1);
    if (t10 == 1)
        goto LAB17;

LAB18:    t4 = (unsigned char)0;

LAB19:    if (t4 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB12;

LAB13:
LAB3:    t1 = (t0 + 4608);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 7629);
    *((int *)t1) = 0;
    t5 = (t0 + 7633);
    *((int *)t5) = 7;
    t6 = 0;
    t7 = 7;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(31, ng0);
    t8 = (t0 + 7637);
    t10 = (32U != 32U);
    if (t10 == 1)
        goto LAB9;

LAB10:    t11 = (t0 + 7629);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (32U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4720);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 32U);
    xsi_driver_first_trans_delta(t17, t16, 32U, 0LL);

LAB7:    t1 = (t0 + 7629);
    t6 = *((int *)t1);
    t2 = (t0 + 7633);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB11:    t12 = (t6 + 1);
    t6 = t12;
    t5 = (t0 + 7629);
    *((int *)t5) = t6;
    goto LAB5;

LAB9:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB10;

LAB12:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2472U);
    t9 = *((char **)t2);
    t2 = (t0 + 2312U);
    t11 = *((char **)t2);
    t2 = (t0 + 7256U);
    t6 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t11, t2);
    t7 = (t6 - 0);
    t14 = (t7 * 1);
    t15 = (32U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 4720);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 32U);
    xsi_driver_first_trans_delta(t17, t16, 32U, 0LL);
    goto LAB3;

LAB14:    t2 = (t0 + 1352U);
    t8 = *((char **)t2);
    t24 = *((unsigned char *)t8);
    t25 = (t24 == (unsigned char)3);
    t3 = t25;
    goto LAB16;

LAB17:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t4 = t23;
    goto LAB19;

}

static void work_a_2615964831_0338507630_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t26 = (t0 + 7669);
    t28 = (t0 + 4784);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 32U);
    xsi_driver_first_trans_fast_port(t28);

LAB2:    t33 = (t0 + 4624);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 2632U);
    t13 = *((char **)t3);
    t3 = (t0 + 1672U);
    t14 = *((char **)t3);
    t3 = (t0 + 7192U);
    t15 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t14, t3);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t20 = (t13 + t19);
    t21 = (t0 + 4784);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB5:    t3 = (t0 + 1512U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t1 = t12;
    goto LAB7;

LAB8:    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_2615964831_0338507630_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t26 = (t0 + 7701);
    t28 = (t0 + 4848);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 32U);
    xsi_driver_first_trans_fast_port(t28);

LAB2:    t33 = (t0 + 4640);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 2632U);
    t13 = *((char **)t3);
    t3 = (t0 + 1832U);
    t14 = *((char **)t3);
    t3 = (t0 + 7208U);
    t15 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t14, t3);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t20 = (t13 + t19);
    t21 = (t0 + 4848);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB5:    t3 = (t0 + 1512U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t1 = t12;
    goto LAB7;

LAB8:    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_2615964831_0338507630_init()
{
	static char *pe[] = {(void *)work_a_2615964831_0338507630_p_0,(void *)work_a_2615964831_0338507630_p_1,(void *)work_a_2615964831_0338507630_p_2};
	xsi_register_didat("work_a_2615964831_0338507630", "isim/register_file_tb_isim_beh.exe.sim/work/a_2615964831_0338507630.didat");
	xsi_register_executes(pe);
}
