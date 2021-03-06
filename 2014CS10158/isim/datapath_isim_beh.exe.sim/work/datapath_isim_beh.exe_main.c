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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0123541133_3212880686_init();
    work_a_3261551314_3212880686_init();
    work_a_0465554350_3212880686_init();
    work_a_2830191128_3212880686_init();
    work_a_1111616105_3212880686_init();
    work_a_1424453967_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2252756781_3212880686_init();
    work_a_0942519395_3212880686_init();
    work_a_2586706575_3212880686_init();
    work_a_2577971649_3212880686_init();
    work_a_1633651022_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_2717587577_3212880686_init();
    work_a_3985617041_3212880686_init();
    work_a_1599823820_3212880686_init();
    work_a_0591034903_3212880686_init();
    work_a_1352617883_3212880686_init();
    work_a_3027548060_3212880686_init();


    xsi_register_tops("work_a_3027548060_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
