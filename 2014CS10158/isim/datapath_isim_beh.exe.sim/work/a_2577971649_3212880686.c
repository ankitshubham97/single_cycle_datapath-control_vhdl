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
static const char *ng0 = "D:/4th Semester/col216/assn3/2014CS10158/rfmul.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_2577971649_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 3352U);
    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t4 = (t0 + 3368U);
    t6 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (64U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 2012);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 64U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 1960);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t9, 0);
    goto LAB6;

}

static void work_a_2577971649_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = (63 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2048);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 1968);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2577971649_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2577971649_3212880686_p_0,(void *)work_a_2577971649_3212880686_p_1};
	xsi_register_didat("work_a_2577971649_3212880686", "isim/datapath_isim_beh.exe.sim/work/a_2577971649_3212880686.didat");
	xsi_register_executes(pe);
}
