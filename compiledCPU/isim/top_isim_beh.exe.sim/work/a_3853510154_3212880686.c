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
static const char *ng0 = "C:/Users/aisha/CPU1/control_unit.vhd";



static void work_a_3853510154_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    static char *nl0[] = {&&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16, &&LAB17, &&LAB18, &&LAB19, &&LAB20, &&LAB21, &&LAB22, &&LAB23};

LAB0:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 11472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5032U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (char *)((nl0) + t1);
    goto **((char **)t2);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 11872);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);

LAB9:    goto LAB3;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(79, ng0);
    t5 = (t0 + 11872);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t5);
    goto LAB11;

LAB13:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB14:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 16896);
    t3 = 1;
    if (3U == 3U)
        goto LAB31;

LAB32:    t3 = 0;

LAB33:    if (t3 == 1)
        goto LAB28;

LAB29:    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t12 = (t0 + 16899);
    t6 = 1;
    if (3U == 3U)
        goto LAB37;

LAB38:    t6 = 0;

LAB39:    t1 = t6;

LAB30:    if (t1 != 0)
        goto LAB25;

LAB27:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 16902);
    t3 = 1;
    if (3U == 3U)
        goto LAB48;

LAB49:    t3 = 0;

LAB50:    if (t3 == 1)
        goto LAB45;

LAB46:    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t12 = (t0 + 16905);
    t6 = 1;
    if (3U == 3U)
        goto LAB54;

LAB55:    t6 = 0;

LAB56:    t1 = t6;

LAB47:    if (t1 != 0)
        goto LAB43;

LAB44:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 16908);
    t1 = 1;
    if (3U == 3U)
        goto LAB62;

LAB63:    t1 = 0;

LAB64:    if (t1 != 0)
        goto LAB60;

LAB61:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 16911);
    t1 = 1;
    if (3U == 3U)
        goto LAB70;

LAB71:    t1 = 0;

LAB72:    if (t1 != 0)
        goto LAB68;

LAB69:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 16914);
    t1 = 1;
    if (3U == 3U)
        goto LAB78;

LAB79:    t1 = 0;

LAB80:    if (t1 != 0)
        goto LAB76;

LAB77:
LAB26:    goto LAB11;

LAB15:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB16:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB17:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)6;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB18:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB19:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)8;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB20:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB21:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)9;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB22:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB87;

LAB88:    t2 = (t0 + 3112U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t9 = (t7 == (unsigned char)3);
    t1 = t9;

LAB89:    if (t1 != 0)
        goto LAB84;

LAB86:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB85:    goto LAB11;

LAB23:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB24:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 11872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)9;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB25:    xsi_set_current_line(82, ng0);
    t19 = (t0 + 11872);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)7;
    xsi_driver_first_trans_fast(t19);
    goto LAB26;

LAB28:    t1 = (unsigned char)1;
    goto LAB30;

LAB31:    t15 = 0;

LAB34:    if (t15 < 3U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t8 = (t4 + t15);
    t11 = (t2 + t15);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB32;

LAB36:    t15 = (t15 + 1);
    goto LAB34;

LAB37:    t16 = 0;

LAB40:    if (t16 < 3U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t17 = (t13 + t16);
    t18 = (t12 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB38;

LAB42:    t16 = (t16 + 1);
    goto LAB40;

LAB43:    xsi_set_current_line(83, ng0);
    t19 = (t0 + 11872);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)10;
    xsi_driver_first_trans_fast(t19);
    goto LAB26;

LAB45:    t1 = (unsigned char)1;
    goto LAB47;

LAB48:    t15 = 0;

LAB51:    if (t15 < 3U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t8 = (t4 + t15);
    t11 = (t2 + t15);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB49;

LAB53:    t15 = (t15 + 1);
    goto LAB51;

LAB54:    t16 = 0;

LAB57:    if (t16 < 3U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t17 = (t13 + t16);
    t18 = (t12 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB55;

LAB59:    t16 = (t16 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(84, ng0);
    t12 = (t0 + 11872);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t12);
    goto LAB26;

LAB62:    t15 = 0;

LAB65:    if (t15 < 3U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t8 = (t4 + t15);
    t11 = (t2 + t15);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB63;

LAB67:    t15 = (t15 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(85, ng0);
    t12 = (t0 + 11872);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)5;
    xsi_driver_first_trans_fast(t12);
    goto LAB26;

LAB70:    t15 = 0;

LAB73:    if (t15 < 3U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t8 = (t4 + t15);
    t11 = (t2 + t15);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB71;

LAB75:    t15 = (t15 + 1);
    goto LAB73;

LAB76:    xsi_set_current_line(86, ng0);
    t12 = (t0 + 11872);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)9;
    xsi_driver_first_trans_fast(t12);
    goto LAB26;

LAB78:    t15 = 0;

LAB81:    if (t15 < 3U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t8 = (t4 + t15);
    t11 = (t2 + t15);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB79;

LAB83:    t15 = (t15 + 1);
    goto LAB81;

LAB84:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 11872);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)11;
    xsi_driver_first_trans_fast(t2);
    goto LAB85;

LAB87:    t1 = (unsigned char)1;
    goto LAB89;

}

static void work_a_3853510154_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)11);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 11936);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11488);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 11936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12000);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11504);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12000);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 16917);
    t4 = 1;
    if (3U == 3U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t13 = (t0 + 12064);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 11520);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 12064);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 3U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)4);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t17 = (t0 + 12128);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 11536);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 12128);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t2 = (t0 + 16920);
    t8 = 1;
    if (3U == 3U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    t1 = t8;
    goto LAB7;

LAB8:    t9 = 0;

LAB11:    if (t9 < 3U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t10 = (t6 + t9);
    t11 = (t2 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12192);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11552);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12192);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12256);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11568);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12256);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_7(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(125, ng0);
    t9 = (t0 + 5032U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB26;

LAB27:    t9 = (t0 + 5032U);
    t13 = *((char **)t9);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t8 = t15;

LAB28:    if (t8 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 5032U);
    t16 = *((char **)t9);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)4);
    t7 = t18;

LAB25:    if (t7 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 5032U);
    t19 = *((char **)t9);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)5);
    t6 = t21;

LAB22:    if (t6 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 5032U);
    t22 = *((char **)t9);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)6);
    t5 = t24;

LAB19:    if (t5 == 1)
        goto LAB14;

LAB15:    t9 = (t0 + 5032U);
    t25 = *((char **)t9);
    t26 = *((unsigned char *)t25);
    t27 = (t26 == (unsigned char)7);
    t4 = t27;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t9 = (t0 + 5032U);
    t28 = *((char **)t9);
    t29 = *((unsigned char *)t28);
    t30 = (t29 == (unsigned char)8);
    t3 = t30;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t9 = (t0 + 5032U);
    t31 = *((char **)t9);
    t32 = *((unsigned char *)t31);
    t33 = (t32 == (unsigned char)10);
    t2 = t33;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5032U);
    t34 = *((char **)t9);
    t35 = *((unsigned char *)t34);
    t36 = (t35 == (unsigned char)11);
    t1 = t36;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB29:    t41 = (t0 + 12320);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    *((unsigned char *)t45) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t41);

LAB2:    t46 = (t0 + 11584);
    *((int *)t46) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 12320);
    t37 = (t9 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB17:    t5 = (unsigned char)1;
    goto LAB19;

LAB20:    t6 = (unsigned char)1;
    goto LAB22;

LAB23:    t7 = (unsigned char)1;
    goto LAB25;

LAB26:    t8 = (unsigned char)1;
    goto LAB28;

LAB30:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_8(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)4);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 5032U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)8);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 12384);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 11600);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 12384);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)7);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12448);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11616);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12448);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_10(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)7);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 5032U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)8);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 12512);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 11632);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 12512);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_11(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12576);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11648);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12576);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_12(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(138, ng0);
    t6 = (t0 + 5032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 5032U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)7);
    t5 = t12;

LAB19:    if (t5 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 5032U);
    t13 = *((char **)t6);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)5);
    t4 = t15;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t6 = (t0 + 5032U);
    t16 = *((char **)t6);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)8);
    t3 = t18;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t6 = (t0 + 5032U);
    t19 = *((char **)t6);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)10);
    t2 = t21;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 5032U);
    t22 = *((char **)t6);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)11);
    t1 = t24;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t29 = (t0 + 12640);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 11664);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 12640);
    t25 = (t6 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB17:    t5 = (unsigned char)1;
    goto LAB19;

LAB21:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_13(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(141, ng0);
    t5 = (t0 + 5032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 5032U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)4);
    t4 = t11;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t5 = (t0 + 5032U);
    t12 = *((char **)t5);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t3 = t14;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t5 = (t0 + 5032U);
    t15 = *((char **)t5);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)5);
    t2 = t17;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t5 = (t0 + 5032U);
    t18 = *((char **)t5);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)6);
    t1 = t20;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t25 = (t0 + 12704);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 11680);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t5 = (t0 + 12704);
    t21 = (t5 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_14(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)5);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 5032U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 12768);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 11696);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 12768);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_15(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(146, ng0);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB11;

LAB12:    t4 = (t0 + 5032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)4);
    t3 = t10;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 5032U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)5);
    t2 = t13;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 5032U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)6);
    t1 = t16;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t21 = (t0 + 12832);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 11712);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 12832);
    t17 = (t4 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_16(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)5);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 12896);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11728);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12896);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_17(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)4);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 5032U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)6);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 12960);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 11744);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 12960);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_18(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)6);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 13024);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11760);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 13024);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_19(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 13088);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11776);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 13088);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_20(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)7);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 13152);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 11792);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 13152);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_3853510154_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3853510154_3212880686_p_0,(void *)work_a_3853510154_3212880686_p_1,(void *)work_a_3853510154_3212880686_p_2,(void *)work_a_3853510154_3212880686_p_3,(void *)work_a_3853510154_3212880686_p_4,(void *)work_a_3853510154_3212880686_p_5,(void *)work_a_3853510154_3212880686_p_6,(void *)work_a_3853510154_3212880686_p_7,(void *)work_a_3853510154_3212880686_p_8,(void *)work_a_3853510154_3212880686_p_9,(void *)work_a_3853510154_3212880686_p_10,(void *)work_a_3853510154_3212880686_p_11,(void *)work_a_3853510154_3212880686_p_12,(void *)work_a_3853510154_3212880686_p_13,(void *)work_a_3853510154_3212880686_p_14,(void *)work_a_3853510154_3212880686_p_15,(void *)work_a_3853510154_3212880686_p_16,(void *)work_a_3853510154_3212880686_p_17,(void *)work_a_3853510154_3212880686_p_18,(void *)work_a_3853510154_3212880686_p_19,(void *)work_a_3853510154_3212880686_p_20};
	xsi_register_didat("work_a_3853510154_3212880686", "isim/top_isim_beh.exe.sim/work/a_3853510154_3212880686.didat");
	xsi_register_executes(pe);
}
