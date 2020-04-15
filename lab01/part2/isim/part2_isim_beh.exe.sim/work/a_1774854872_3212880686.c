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
static const char *ng0 = "D:/Code/Integrated circuit design/lab01/part2/main.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_43738421_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1774854872_3212880686_p_0(char *t0)
{
    char t17[16];
    char t24[16];
    char t38[16];
    char t46[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int t36;
    int t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 7185);
    t3 = (t0 + 4664);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t8 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 7112U);
    t1 = xsi_base_array_concat(t1, t17, t4, (char)97, t2, t5, (char)99, t8, (char)101);
    t6 = (t0 + 7198);
    t10 = xsi_mem_cmp(t6, t1, 3U);
    if (t10 == 1)
        goto LAB25;

LAB31:    t12 = (t0 + 7201);
    t11 = xsi_mem_cmp(t12, t1, 3U);
    if (t11 == 1)
        goto LAB26;

LAB32:    t15 = (t0 + 7204);
    t13 = xsi_mem_cmp(t15, t1, 3U);
    if (t13 == 1)
        goto LAB27;

LAB33:    t19 = (t0 + 7207);
    t16 = xsi_mem_cmp(t19, t1, 3U);
    if (t16 == 1)
        goto LAB28;

LAB34:    t21 = (t0 + 7210);
    t36 = xsi_mem_cmp(t21, t1, 3U);
    if (t36 == 1)
        goto LAB29;

LAB35:    t23 = (t0 + 7213);
    t37 = xsi_mem_cmp(t23, t1, 3U);
    if (t37 == 1)
        goto LAB29;

LAB36:
LAB30:    xsi_set_current_line(44, ng0);

LAB24:
LAB3:    t1 = (t0 + 4536);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 7190);
    t10 = xsi_mem_cmp(t1, t3, 2U);
    if (t10 == 1)
        goto LAB6;

LAB11:    t5 = (t0 + 7192);
    t11 = xsi_mem_cmp(t5, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t7 = (t0 + 7194);
    t13 = xsi_mem_cmp(t7, t3, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 7196);
    t16 = xsi_mem_cmp(t14, t3, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(30, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(23, ng0);
    t18 = (t0 + 1352U);
    t19 = *((char **)t18);
    t18 = (t0 + 7080U);
    t20 = (t0 + 1512U);
    t21 = *((char **)t20);
    t20 = (t0 + 7096U);
    t22 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t17, t19, t18, t21, t20);
    t25 = ((IEEE_P_2592010699) + 4024);
    t23 = xsi_base_array_concat(t23, t24, t25, (char)99, (unsigned char)2, (char)97, t22, t17, (char)101);
    t26 = (t17 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (1U * t27);
    t29 = (1U + t28);
    t30 = (5U != t29);
    if (t30 == 1)
        goto LAB16;

LAB17:    t31 = (t0 + 4664);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t23, 5U);
    xsi_driver_first_trans_fast(t31);
    goto LAB5;

LAB7:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7080U);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 7096U);
    t5 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t17, t2, t1, t4, t3);
    t7 = ((IEEE_P_2592010699) + 4024);
    t6 = xsi_base_array_concat(t6, t24, t7, (char)99, (unsigned char)2, (char)97, t5, t17, (char)101);
    t12 = (t17 + 12U);
    t27 = *((unsigned int *)t12);
    t28 = (1U * t27);
    t29 = (1U + t28);
    t8 = (5U != t29);
    if (t8 == 1)
        goto LAB18;

LAB19:    t14 = (t0 + 4664);
    t15 = (t14 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 5U);
    xsi_driver_first_trans_fast(t14);
    goto LAB5;

LAB8:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7080U);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 7096U);
    t5 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t17, t2, t1, t4, t3);
    t7 = ((IEEE_P_2592010699) + 4024);
    t6 = xsi_base_array_concat(t6, t24, t7, (char)99, (unsigned char)2, (char)97, t5, t17, (char)101);
    t12 = (t17 + 12U);
    t27 = *((unsigned int *)t12);
    t28 = (1U * t27);
    t29 = (1U + t28);
    t8 = (5U != t29);
    if (t8 == 1)
        goto LAB20;

LAB21:    t14 = (t0 + 4664);
    t15 = (t14 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 5U);
    xsi_driver_first_trans_fast(t14);
    goto LAB5;

LAB9:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7080U);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 7096U);
    t5 = ieee_p_2592010699_sub_43738421_503743352(IEEE_P_2592010699, t17, t2, t1, t4, t3);
    t7 = ((IEEE_P_2592010699) + 4024);
    t6 = xsi_base_array_concat(t6, t24, t7, (char)99, (unsigned char)2, (char)97, t5, t17, (char)101);
    t12 = (t17 + 12U);
    t27 = *((unsigned int *)t12);
    t28 = (1U * t27);
    t29 = (1U + t28);
    t8 = (5U != t29);
    if (t8 == 1)
        goto LAB22;

LAB23:    t14 = (t0 + 4664);
    t15 = (t14 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 5U);
    xsi_driver_first_trans_fast(t14);
    goto LAB5;

LAB15:;
LAB16:    xsi_size_not_matching(5U, t29, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(5U, t29, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(5U, t29, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(5U, t29, 0);
    goto LAB23;

LAB25:    xsi_set_current_line(35, ng0);
    t26 = (t0 + 1352U);
    t31 = *((char **)t26);
    t32 = ((IEEE_P_2592010699) + 4024);
    t33 = (t0 + 7080U);
    t26 = xsi_base_array_concat(t26, t38, t32, (char)99, (unsigned char)2, (char)97, t31, t33, (char)101);
    t34 = (t0 + 1512U);
    t35 = *((char **)t34);
    t34 = (t0 + 7096U);
    t39 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t24, t26, t38, t35, t34);
    t40 = (t24 + 12U);
    t27 = *((unsigned int *)t40);
    t28 = (1U * t27);
    t9 = (5U != t28);
    if (t9 == 1)
        goto LAB38;

LAB39:    t41 = (t0 + 4664);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 5U);
    xsi_driver_first_trans_fast(t41);
    goto LAB24;

LAB26:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7080U);
    t1 = xsi_base_array_concat(t1, t38, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 7096U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t24, t1, t38, t6, t5);
    t12 = (t0 + 1032U);
    t14 = *((char **)t12);
    t8 = *((unsigned char *)t14);
    t12 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t17, t7, t24, t8);
    t15 = (t17 + 12U);
    t27 = *((unsigned int *)t15);
    t28 = (1U * t27);
    t9 = (5U != t28);
    if (t9 == 1)
        goto LAB40;

LAB41:    t18 = (t0 + 4664);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 5U);
    xsi_driver_first_trans_fast(t18);
    goto LAB24;

LAB27:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7080U);
    t1 = xsi_base_array_concat(t1, t24, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 7096U);
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t38, t6, t5);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t1, t24, t7, t38);
    t14 = (t17 + 12U);
    t27 = *((unsigned int *)t14);
    t28 = (1U * t27);
    t8 = (5U != t28);
    if (t8 == 1)
        goto LAB42;

LAB43:    t15 = (t0 + 4664);
    t18 = (t15 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 5U);
    xsi_driver_first_trans_fast(t15);
    goto LAB24;

LAB28:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7080U);
    t1 = xsi_base_array_concat(t1, t38, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 7096U);
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t46, t6, t5);
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t24, t1, t38, t7, t46);
    t14 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t12, t24, 1);
    t15 = (t17 + 12U);
    t27 = *((unsigned int *)t15);
    t28 = (1U * t27);
    t8 = (5U != t28);
    if (t8 == 1)
        goto LAB44;

LAB45:    t18 = (t0 + 4664);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 5U);
    xsi_driver_first_trans_fast(t18);
    goto LAB24;

LAB29:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7080U);
    t1 = xsi_base_array_concat(t1, t24, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t1, t24, 1);
    t6 = (t17 + 12U);
    t27 = *((unsigned int *)t6);
    t28 = (1U * t27);
    t8 = (5U != t28);
    if (t8 == 1)
        goto LAB46;

LAB47:    t7 = (t0 + 4664);
    t12 = (t7 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t18 = *((char **)t15);
    memcpy(t18, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB24;

LAB37:;
LAB38:    xsi_size_not_matching(5U, t28, 0);
    goto LAB39;

LAB40:    xsi_size_not_matching(5U, t28, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(5U, t28, 0);
    goto LAB43;

LAB44:    xsi_size_not_matching(5U, t28, 0);
    goto LAB45;

LAB46:    xsi_size_not_matching(5U, t28, 0);
    goto LAB47;

}

static void work_a_1774854872_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4728);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4552);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1774854872_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4792);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4568);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1774854872_3212880686_p_3(char *t0)
{
    char t6[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
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

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 7216);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 3;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (3 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:
LAB5:    t21 = (t0 + 4856);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 4584);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 4856);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1774854872_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1774854872_3212880686_p_0,(void *)work_a_1774854872_3212880686_p_1,(void *)work_a_1774854872_3212880686_p_2,(void *)work_a_1774854872_3212880686_p_3};
	xsi_register_didat("work_a_1774854872_3212880686", "isim/part2_isim_beh.exe.sim/work/a_1774854872_3212880686.didat");
	xsi_register_executes(pe);
}
