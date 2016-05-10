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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/4th Semester/col216/assn3/2014CS10158/pcadder.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_2717587577_3212880686_p_0(char *t0)
{
    char t8[16];
    char t9[16];
    char t16[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 1724);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 684U);
    t10 = *((char **)t4);
    t4 = (t0 + 2972U);
    t11 = (t0 + 776U);
    t12 = *((char **)t11);
    t11 = (t0 + 2988U);
    t13 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t9, t10, t4, t12, t11);
    t14 = (t0 + 3043);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 6;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (6 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t8, t13, t9, t14, t16);
    t21 = (t8 + 12U);
    t20 = *((unsigned int *)t21);
    t22 = (1U * t20);
    t23 = (7U != t22);
    if (t23 == 1)
        goto LAB8;

LAB9:    t24 = (t0 + 1768);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 7U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(7U, t22, 0);
    goto LAB9;

}


extern void work_a_2717587577_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2717587577_3212880686_p_0};
	xsi_register_didat("work_a_2717587577_3212880686", "isim/datapath_isim_beh.exe.sim/work/a_2717587577_3212880686.didat");
	xsi_register_executes(pe);
}
