// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _Compult_mpc_pso_HH_
#define _Compult_mpc_pso_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Compult_pso.h"
#include "Compult_mul_32s_29ns_61_6.h"
#include "Compult_mul_22ns_30s_52_3.h"
#include "Compult_mul_36s_29ns_65_6.h"
#include "Compult_mpc_pso_Sx_0.h"
#include "Compult_mpc_pso_Sx_1.h"
#include "Compult_mpc_pso_g_V.h"
#include "Compult_mpc_pso_SxDx_V.h"
#include "Compult_mpc_pso_Ep_V.h"

namespace ap_rtl {

struct Compult_mpc_pso : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > dx1_in_V;
    sc_in< sc_lv<30> > dx2_in_V;
    sc_in< sc_lv<30> > y_in_V;
    sc_in< sc_lv<30> > u_in_V;
    sc_in< sc_lv<30> > ref_in_V;
    sc_out< sc_lv<27> > ap_return;


    // Module declarations
    Compult_mpc_pso(sc_module_name name);
    SC_HAS_PROCESS(Compult_mpc_pso);

    ~Compult_mpc_pso();

    sc_trace_file* mVcdFile;

    Compult_mpc_pso_Sx_0* Sx_0_U;
    Compult_mpc_pso_Sx_1* Sx_1_U;
    Compult_mpc_pso_g_V* g_V_U;
    Compult_mpc_pso_SxDx_V* SxDx_V_U;
    Compult_mpc_pso_Ep_V* Ep_V_U;
    Compult_pso* grp_Compult_pso_fu_346;
    Compult_mul_32s_29ns_61_6<1,6,32,29,61>* Compult_mul_32s_29ns_61_6_U46;
    Compult_mul_22ns_30s_52_3<1,3,22,30,52>* Compult_mul_22ns_30s_52_3_U47;
    Compult_mul_36s_29ns_65_6<1,6,36,29,65>* Compult_mul_36s_29ns_65_6_U48;
    sc_signal< sc_lv<33> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_51;
    sc_signal< sc_lv<5> > Sx_0_address0;
    sc_signal< sc_logic > Sx_0_ce0;
    sc_signal< sc_lv<29> > Sx_0_q0;
    sc_signal< sc_lv<5> > Sx_1_address0;
    sc_signal< sc_logic > Sx_1_ce0;
    sc_signal< sc_lv<22> > Sx_1_q0;
    sc_signal< sc_lv<6> > g_V_address0;
    sc_signal< sc_logic > g_V_ce0;
    sc_signal< sc_lv<29> > g_V_q0;
    sc_signal< sc_lv<31> > p_Val2_s_fu_366_p2;
    sc_signal< sc_lv<31> > p_Val2_s_reg_1147;
    sc_signal< sc_lv<31> > p_Val2_6_fu_372_p2;
    sc_signal< sc_lv<31> > p_Val2_6_reg_1153;
    sc_signal< sc_lv<61> > OP2_V_cast_fu_378_p1;
    sc_signal< sc_lv<61> > OP2_V_cast_reg_1159;
    sc_signal< sc_lv<52> > OP2_V_1_cast_fu_382_p1;
    sc_signal< sc_lv<52> > OP2_V_1_cast_reg_1164;
    sc_signal< sc_lv<32> > i_cast9_fu_386_p1;
    sc_signal< sc_lv<32> > i_cast9_reg_1169;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_105;
    sc_signal< sc_lv<5> > i_3_fu_397_p2;
    sc_signal< sc_lv<5> > i_3_reg_1178;
    sc_signal< sc_lv<1> > exitcond6_fu_391_p2;
    sc_signal< sc_lv<40> > tmp_7_cast_fu_403_p1;
    sc_signal< sc_lv<40> > tmp_7_cast_reg_1188;
    sc_signal< sc_lv<40> > tmp_12_cast_cast_fu_406_p1;
    sc_signal< sc_lv<40> > tmp_12_cast_cast_reg_1193;
    sc_signal< sc_lv<29> > Sx_0_load_reg_1198;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_127;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_136;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_145;
    sc_signal< sc_lv<22> > Sx_1_load_reg_1213;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_bdd_153;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_bdd_162;
    sc_signal< sc_lv<61> > grp_fu_412_p2;
    sc_signal< sc_lv<61> > p_Val2_7_reg_1223;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_bdd_171;
    sc_signal< sc_lv<52> > grp_fu_420_p2;
    sc_signal< sc_lv<52> > p_Val2_1_reg_1228;
    sc_signal< sc_lv<24> > tmp_reg_1233;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_bdd_182;
    sc_signal< sc_lv<1> > qbit_reg_1238;
    sc_signal< sc_lv<1> > r_fu_463_p2;
    sc_signal< sc_lv<1> > r_reg_1243;
    sc_signal< sc_lv<1> > tmp_26_reg_1248;
    sc_signal< sc_lv<1> > qb_assign_1_fu_481_p2;
    sc_signal< sc_lv<1> > qb_assign_1_reg_1253;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_bdd_197;
    sc_signal< sc_lv<32> > i_1_cast8_fu_503_p1;
    sc_signal< sc_lv<32> > i_1_cast8_reg_1258;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_bdd_206;
    sc_signal< sc_lv<5> > i_5_fu_514_p2;
    sc_signal< sc_lv<5> > i_5_reg_1266;
    sc_signal< sc_lv<1> > exitcond7_fu_508_p2;
    sc_signal< sc_lv<40> > p_Val2_10_fu_532_p2;
    sc_signal< sc_lv<40> > p_Val2_10_reg_1276;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_bdd_222;
    sc_signal< sc_lv<1> > signbit_reg_1281;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_bdd_231;
    sc_signal< sc_lv<29> > tmp_29_reg_1287;
    sc_signal< sc_lv<1> > qbit_1_reg_1292;
    sc_signal< sc_lv<1> > r_i_i1_fu_585_p2;
    sc_signal< sc_lv<1> > r_i_i1_reg_1297;
    sc_signal< sc_lv<1> > qb_assign_3_fu_591_p2;
    sc_signal< sc_lv<1> > qb_assign_3_reg_1302;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_bdd_246;
    sc_signal< sc_lv<36> > p_Val2_13_fu_601_p2;
    sc_signal< sc_lv<36> > p_Val2_13_reg_1307;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_bdd_255;
    sc_signal< sc_lv<1> > newsignbit_fu_607_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1312;
    sc_signal< sc_lv<1> > p_Result_1_not_fu_615_p2;
    sc_signal< sc_lv<1> > p_Result_1_not_reg_1317;
    sc_signal< sc_lv<1> > p_not_i_fu_631_p2;
    sc_signal< sc_lv<1> > p_not_i_reg_1322;
    sc_signal< sc_lv<2> > i_4_fu_660_p2;
    sc_signal< sc_lv<2> > i_4_reg_1330;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_bdd_270;
    sc_signal< sc_lv<7> > p_addr_fu_690_p2;
    sc_signal< sc_lv<7> > p_addr_reg_1335;
    sc_signal< sc_lv<1> > exitcond8_fu_654_p2;
    sc_signal< sc_lv<5> > j_1_fu_711_p2;
    sc_signal< sc_lv<5> > j_1_reg_1343;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_bdd_284;
    sc_signal< sc_lv<1> > exitcond_fu_705_p2;
    sc_signal< sc_lv<1> > overflow_3_fu_771_p2;
    sc_signal< sc_lv<1> > overflow_3_reg_1358;
    sc_signal< sc_lv<1> > underflow_fu_795_p2;
    sc_signal< sc_lv<1> > underflow_reg_1364;
    sc_signal< sc_lv<1> > tmp_37_fu_801_p1;
    sc_signal< sc_lv<1> > tmp_37_reg_1371;
    sc_signal< sc_lv<29> > g_V_load_reg_1377;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_bdd_307;
    sc_signal< sc_lv<36> > Ep_V_q0;
    sc_signal< sc_lv<36> > Ep_V_load_reg_1382;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_bdd_318;
    sc_signal< sc_lv<65> > grp_fu_811_p2;
    sc_signal< sc_lv<65> > p_Val2_15_reg_1397;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_26;
    sc_signal< bool > ap_sig_bdd_329;
    sc_signal< sc_lv<1> > qbit_2_reg_1402;
    sc_signal< sc_lv<21> > tmp_40_fu_825_p1;
    sc_signal< sc_lv<21> > tmp_40_reg_1407;
    sc_signal< sc_lv<1> > signbit_1_reg_1412;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_27;
    sc_signal< bool > ap_sig_bdd_342;
    sc_signal< sc_lv<36> > p_Val2_17_reg_1418;
    sc_signal< sc_lv<1> > tmp_41_reg_1423;
    sc_signal< sc_lv<1> > qb_assign_5_fu_891_p2;
    sc_signal< sc_lv<1> > qb_assign_5_reg_1428;
    sc_signal< sc_lv<1> > Range1_all_ones_1_fu_930_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_1_reg_1433;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_936_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_reg_1440;
    sc_signal< sc_lv<1> > p_41_i_i_fu_948_p2;
    sc_signal< sc_lv<1> > p_41_i_i_reg_1445;
    sc_signal< sc_lv<36> > p_Val2_18_fu_957_p2;
    sc_signal< sc_lv<36> > p_Val2_18_reg_1450;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_28;
    sc_signal< bool > ap_sig_bdd_363;
    sc_signal< sc_lv<1> > newsignbit_2_fu_962_p3;
    sc_signal< sc_lv<1> > newsignbit_2_reg_1456;
    sc_signal< sc_lv<1> > deleted_zeros_1_fu_981_p3;
    sc_signal< sc_lv<1> > deleted_zeros_1_reg_1462;
    sc_signal< sc_lv<1> > deleted_ones_fu_987_p3;
    sc_signal< sc_lv<1> > deleted_ones_reg_1467;
    sc_signal< sc_lv<1> > p_38_i_i_fu_993_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1472;
    sc_signal< sc_lv<1> > overflow_2_fu_1013_p2;
    sc_signal< sc_lv<1> > overflow_2_reg_1478;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_bdd_380;
    sc_signal< sc_lv<1> > underflow_2_fu_1034_p2;
    sc_signal< sc_lv<1> > underflow_2_reg_1483;
    sc_signal< sc_lv<1> > underflow_14_not_fu_1045_p2;
    sc_signal< sc_lv<1> > underflow_14_not_reg_1489;
    sc_signal< sc_lv<36> > sum_V_fu_1067_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st31_fsm_30;
    sc_signal< bool > ap_sig_bdd_393;
    sc_signal< sc_lv<28> > G_1_V_1_fu_1123_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st32_fsm_31;
    sc_signal< bool > ap_sig_bdd_402;
    sc_signal< sc_lv<28> > G_1_V_2_fu_1130_p3;
    sc_signal< sc_lv<5> > SxDx_V_address0;
    sc_signal< sc_logic > SxDx_V_ce0;
    sc_signal< sc_logic > SxDx_V_we0;
    sc_signal< sc_lv<26> > SxDx_V_d0;
    sc_signal< sc_lv<26> > SxDx_V_q0;
    sc_signal< sc_lv<5> > Ep_V_address0;
    sc_signal< sc_logic > Ep_V_ce0;
    sc_signal< sc_logic > Ep_V_we0;
    sc_signal< sc_lv<36> > Ep_V_d0;
    sc_signal< sc_logic > grp_Compult_pso_fu_346_ap_start;
    sc_signal< sc_logic > grp_Compult_pso_fu_346_ap_done;
    sc_signal< sc_logic > grp_Compult_pso_fu_346_ap_idle;
    sc_signal< sc_logic > grp_Compult_pso_fu_346_ap_ready;
    sc_signal< sc_lv<28> > grp_Compult_pso_fu_346_G_0_V_read;
    sc_signal< sc_lv<28> > grp_Compult_pso_fu_346_G_1_V_read;
    sc_signal< sc_lv<31> > grp_Compult_pso_fu_346_b_0_V_read;
    sc_signal< sc_lv<31> > grp_Compult_pso_fu_346_b_1_V_read;
    sc_signal< sc_lv<31> > grp_Compult_pso_fu_346_b_2_V_read;
    sc_signal< sc_lv<31> > grp_Compult_pso_fu_346_b_3_V_read;
    sc_signal< sc_lv<27> > grp_Compult_pso_fu_346_ap_return;
    sc_signal< sc_lv<5> > i_reg_264;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_bdd_446;
    sc_signal< sc_lv<5> > i_1_reg_275;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_bdd_455;
    sc_signal< sc_lv<28> > G_V_0_s_reg_286;
    sc_signal< sc_lv<28> > G_V_1_s_reg_298;
    sc_signal< sc_lv<2> > i_2_reg_310;
    sc_signal< sc_lv<36> > p_Val2_2_reg_322;
    sc_signal< sc_lv<5> > j_reg_334;
    sc_signal< sc_logic > grp_Compult_pso_fu_346_ap_start_ap_start_reg;
    sc_signal< sc_logic > ap_sig_cseq_ST_st33_fsm_32;
    sc_signal< bool > ap_sig_bdd_480;
    sc_signal< sc_lv<32> > p_addr1_cast_fu_722_p1;
    sc_signal< sc_lv<32> > j_cast6_fu_696_p1;
    sc_signal< sc_lv<31> > tmp_s_fu_362_p1;
    sc_signal< sc_lv<32> > grp_fu_412_p0;
    sc_signal< sc_lv<29> > grp_fu_412_p1;
    sc_signal< sc_lv<22> > grp_fu_420_p0;
    sc_signal< sc_lv<30> > grp_fu_420_p1;
    sc_signal< sc_lv<54> > tmp_5_fu_425_p3;
    sc_signal< sc_lv<61> > tmp_5_cast_fu_432_p1;
    sc_signal< sc_lv<61> > p_Val2_8_fu_436_p2;
    sc_signal< sc_lv<36> > tmp_25_fu_459_p1;
    sc_signal< sc_lv<1> > r_i_i_fu_477_p2;
    sc_signal< sc_lv<25> > p_Val2_9_cast_cast_fu_486_p1;
    sc_signal< sc_lv<25> > tmp_6_cast_cast_fu_489_p1;
    sc_signal< sc_lv<25> > p_Val2_9_fu_492_p2;
    sc_signal< sc_lv<37> > tmp_27_fu_520_p3;
    sc_signal< sc_lv<40> > tmp_10_cast_cast_fu_528_p1;
    sc_signal< sc_lv<40> > p_Val2_11_fu_537_p2;
    sc_signal< sc_lv<10> > tmp_31_fu_567_p1;
    sc_signal< sc_lv<1> > tmp_32_fu_577_p3;
    sc_signal< sc_lv<1> > r_1_fu_571_p2;
    sc_signal< sc_lv<36> > p_Val2_12_fu_595_p1;
    sc_signal< sc_lv<36> > tmp_3_fu_598_p1;
    sc_signal< sc_lv<1> > not_carry_fu_620_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_626_p2;
    sc_signal< sc_lv<1> > brmerge_i5_fu_637_p2;
    sc_signal< sc_lv<1> > overflow_fu_641_p2;
    sc_signal< sc_lv<6> > tmp_15_fu_666_p3;
    sc_signal< sc_lv<4> > tmp_16_fu_678_p3;
    sc_signal< sc_lv<7> > p_shl_cast_fu_674_p1;
    sc_signal< sc_lv<7> > p_shl1_cast_fu_686_p1;
    sc_signal< sc_lv<7> > j_cast6_cast_fu_701_p1;
    sc_signal< sc_lv<7> > p_addr1_fu_717_p2;
    sc_signal< sc_lv<9> > p_Result_7_fu_743_p4;
    sc_signal< sc_lv<1> > newsignbit_3_fu_735_p3;
    sc_signal< sc_lv<1> > p_not_i4_fu_753_p2;
    sc_signal< sc_lv<1> > isneg_fu_727_p3;
    sc_signal< sc_lv<1> > brmerge_i_fu_759_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_765_p2;
    sc_signal< sc_lv<1> > p_not38_i_fu_783_p2;
    sc_signal< sc_lv<1> > newsignbit_0_not_i_fu_777_p2;
    sc_signal< sc_lv<1> > brmerge39_i_fu_789_p2;
    sc_signal< sc_lv<36> > grp_fu_811_p0;
    sc_signal< sc_lv<29> > grp_fu_811_p1;
    sc_signal< sc_lv<58> > tmp_8_fu_829_p3;
    sc_signal< sc_lv<65> > tmp_21_cast_cast_fu_837_p1;
    sc_signal< sc_lv<65> > p_Val2_16_fu_841_p2;
    sc_signal< sc_lv<1> > tmp_42_fu_877_p3;
    sc_signal< sc_lv<1> > r_2_fu_864_p2;
    sc_signal< sc_lv<1> > r_i_i_i_fu_885_p2;
    sc_signal< sc_lv<6> > tmp_45_fu_904_p4;
    sc_signal< sc_lv<7> > tmp_46_fu_920_p4;
    sc_signal< sc_lv<1> > tmp_44_fu_896_p3;
    sc_signal< sc_lv<1> > Range2_all_ones_fu_914_p2;
    sc_signal< sc_lv<1> > tmp_13_fu_942_p2;
    sc_signal< sc_lv<36> > tmp_9_fu_954_p1;
    sc_signal< sc_lv<1> > tmp_10_fu_970_p2;
    sc_signal< sc_lv<1> > carry_fu_976_p2;
    sc_signal< sc_lv<1> > p_not_i_i_fu_998_p2;
    sc_signal< sc_lv<1> > brmerge_i_i4_fu_1003_p2;
    sc_signal< sc_lv<1> > tmp_14_fu_1008_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_i_fu_1019_p2;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_1023_p2;
    sc_signal< sc_lv<1> > tmp4_fu_1028_p2;
    sc_signal< sc_lv<1> > tmp5_fu_1039_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_1050_p2;
    sc_signal< sc_lv<36> > p_Val2_91_mux_fu_1054_p3;
    sc_signal< sc_lv<36> > p_Val2_2_39_fu_1061_p3;
    sc_signal< sc_lv<27> > tmp_35_fu_1074_p1;
    sc_signal< sc_lv<1> > underflow_15_not_fu_1090_p2;
    sc_signal< sc_lv<1> > brmerge_i_i3_fu_1086_p2;
    sc_signal< sc_lv<28> > p_Val2_14_fu_1078_p3;
    sc_signal< sc_lv<1> > brmerge3_fu_1095_p2;
    sc_signal< sc_lv<28> > p_Val2_87_mux_fu_1100_p3;
    sc_signal< sc_lv<28> > p_Val2_s_40_fu_1108_p3;
    sc_signal< sc_lv<28> > G_0_V_fu_1115_p3;
    sc_signal< sc_logic > grp_fu_412_ce;
    sc_signal< sc_logic > grp_fu_420_ce;
    sc_signal< sc_logic > grp_fu_811_ce;
    sc_signal< sc_lv<27> > ap_return_preg;
    sc_signal< sc_lv<33> > ap_NS_fsm;
    sc_signal< sc_lv<61> > grp_fu_412_p10;
    sc_signal< sc_lv<52> > grp_fu_420_p00;
    sc_signal< sc_lv<65> > grp_fu_811_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<33> ap_ST_st1_fsm_0;
    static const sc_lv<33> ap_ST_st2_fsm_1;
    static const sc_lv<33> ap_ST_st3_fsm_2;
    static const sc_lv<33> ap_ST_st4_fsm_3;
    static const sc_lv<33> ap_ST_st5_fsm_4;
    static const sc_lv<33> ap_ST_st6_fsm_5;
    static const sc_lv<33> ap_ST_st7_fsm_6;
    static const sc_lv<33> ap_ST_st8_fsm_7;
    static const sc_lv<33> ap_ST_st9_fsm_8;
    static const sc_lv<33> ap_ST_st10_fsm_9;
    static const sc_lv<33> ap_ST_st11_fsm_10;
    static const sc_lv<33> ap_ST_st12_fsm_11;
    static const sc_lv<33> ap_ST_st13_fsm_12;
    static const sc_lv<33> ap_ST_st14_fsm_13;
    static const sc_lv<33> ap_ST_st15_fsm_14;
    static const sc_lv<33> ap_ST_st16_fsm_15;
    static const sc_lv<33> ap_ST_st17_fsm_16;
    static const sc_lv<33> ap_ST_st18_fsm_17;
    static const sc_lv<33> ap_ST_st19_fsm_18;
    static const sc_lv<33> ap_ST_st20_fsm_19;
    static const sc_lv<33> ap_ST_st21_fsm_20;
    static const sc_lv<33> ap_ST_st22_fsm_21;
    static const sc_lv<33> ap_ST_st23_fsm_22;
    static const sc_lv<33> ap_ST_st24_fsm_23;
    static const sc_lv<33> ap_ST_st25_fsm_24;
    static const sc_lv<33> ap_ST_st26_fsm_25;
    static const sc_lv<33> ap_ST_st27_fsm_26;
    static const sc_lv<33> ap_ST_st28_fsm_27;
    static const sc_lv<33> ap_ST_st29_fsm_28;
    static const sc_lv<33> ap_ST_st30_fsm_29;
    static const sc_lv<33> ap_ST_st31_fsm_30;
    static const sc_lv<33> ap_ST_st32_fsm_31;
    static const sc_lv<33> ap_ST_st33_fsm_32;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<36> ap_const_lv36_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<31> ap_const_lv31_79999A00;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<36> ap_const_lv36_7FFFFFFFF;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const sc_lv<22> ap_const_lv22_0;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<7> ap_const_lv7_7F;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<36> ap_const_lv36_800000000;
    static const sc_lv<28> ap_const_lv28_7FFFFFF;
    static const sc_lv<28> ap_const_lv28_8000000;
    static const sc_lv<27> ap_const_lv27_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Ep_V_address0();
    void thread_Ep_V_ce0();
    void thread_Ep_V_d0();
    void thread_Ep_V_we0();
    void thread_G_0_V_fu_1115_p3();
    void thread_G_1_V_1_fu_1123_p3();
    void thread_G_1_V_2_fu_1130_p3();
    void thread_OP2_V_1_cast_fu_382_p1();
    void thread_OP2_V_cast_fu_378_p1();
    void thread_Range1_all_ones_1_fu_930_p2();
    void thread_Range1_all_zeros_fu_936_p2();
    void thread_Range2_all_ones_fu_914_p2();
    void thread_SxDx_V_address0();
    void thread_SxDx_V_ce0();
    void thread_SxDx_V_d0();
    void thread_SxDx_V_we0();
    void thread_Sx_0_address0();
    void thread_Sx_0_ce0();
    void thread_Sx_1_address0();
    void thread_Sx_1_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_105();
    void thread_ap_sig_bdd_127();
    void thread_ap_sig_bdd_136();
    void thread_ap_sig_bdd_145();
    void thread_ap_sig_bdd_153();
    void thread_ap_sig_bdd_162();
    void thread_ap_sig_bdd_171();
    void thread_ap_sig_bdd_182();
    void thread_ap_sig_bdd_197();
    void thread_ap_sig_bdd_206();
    void thread_ap_sig_bdd_222();
    void thread_ap_sig_bdd_231();
    void thread_ap_sig_bdd_246();
    void thread_ap_sig_bdd_255();
    void thread_ap_sig_bdd_270();
    void thread_ap_sig_bdd_284();
    void thread_ap_sig_bdd_307();
    void thread_ap_sig_bdd_318();
    void thread_ap_sig_bdd_329();
    void thread_ap_sig_bdd_342();
    void thread_ap_sig_bdd_363();
    void thread_ap_sig_bdd_380();
    void thread_ap_sig_bdd_393();
    void thread_ap_sig_bdd_402();
    void thread_ap_sig_bdd_446();
    void thread_ap_sig_bdd_455();
    void thread_ap_sig_bdd_480();
    void thread_ap_sig_bdd_51();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st27_fsm_26();
    void thread_ap_sig_cseq_ST_st28_fsm_27();
    void thread_ap_sig_cseq_ST_st29_fsm_28();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st31_fsm_30();
    void thread_ap_sig_cseq_ST_st32_fsm_31();
    void thread_ap_sig_cseq_ST_st33_fsm_32();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_brmerge39_i_fu_789_p2();
    void thread_brmerge3_fu_1095_p2();
    void thread_brmerge40_demorgan_i_i_fu_1019_p2();
    void thread_brmerge_i5_fu_637_p2();
    void thread_brmerge_i_fu_759_p2();
    void thread_brmerge_i_i3_fu_1086_p2();
    void thread_brmerge_i_i4_fu_1003_p2();
    void thread_brmerge_i_i_i_fu_1050_p2();
    void thread_carry_fu_976_p2();
    void thread_deleted_ones_fu_987_p3();
    void thread_deleted_zeros_1_fu_981_p3();
    void thread_deleted_zeros_fu_626_p2();
    void thread_exitcond6_fu_391_p2();
    void thread_exitcond7_fu_508_p2();
    void thread_exitcond8_fu_654_p2();
    void thread_exitcond_fu_705_p2();
    void thread_g_V_address0();
    void thread_g_V_ce0();
    void thread_grp_Compult_pso_fu_346_G_0_V_read();
    void thread_grp_Compult_pso_fu_346_G_1_V_read();
    void thread_grp_Compult_pso_fu_346_ap_start();
    void thread_grp_Compult_pso_fu_346_b_0_V_read();
    void thread_grp_Compult_pso_fu_346_b_1_V_read();
    void thread_grp_Compult_pso_fu_346_b_2_V_read();
    void thread_grp_Compult_pso_fu_346_b_3_V_read();
    void thread_grp_fu_412_ce();
    void thread_grp_fu_412_p0();
    void thread_grp_fu_412_p1();
    void thread_grp_fu_412_p10();
    void thread_grp_fu_420_ce();
    void thread_grp_fu_420_p0();
    void thread_grp_fu_420_p00();
    void thread_grp_fu_420_p1();
    void thread_grp_fu_811_ce();
    void thread_grp_fu_811_p0();
    void thread_grp_fu_811_p1();
    void thread_grp_fu_811_p10();
    void thread_i_1_cast8_fu_503_p1();
    void thread_i_3_fu_397_p2();
    void thread_i_4_fu_660_p2();
    void thread_i_5_fu_514_p2();
    void thread_i_cast9_fu_386_p1();
    void thread_isneg_fu_727_p3();
    void thread_j_1_fu_711_p2();
    void thread_j_cast6_cast_fu_701_p1();
    void thread_j_cast6_fu_696_p1();
    void thread_newsignbit_0_not_i_fu_777_p2();
    void thread_newsignbit_2_fu_962_p3();
    void thread_newsignbit_3_fu_735_p3();
    void thread_newsignbit_fu_607_p3();
    void thread_not_carry_fu_620_p2();
    void thread_overflow_2_fu_1013_p2();
    void thread_overflow_3_fu_771_p2();
    void thread_overflow_fu_641_p2();
    void thread_p_38_i_i_fu_993_p2();
    void thread_p_41_i_i_fu_948_p2();
    void thread_p_Result_1_not_fu_615_p2();
    void thread_p_Result_7_fu_743_p4();
    void thread_p_Val2_10_fu_532_p2();
    void thread_p_Val2_11_fu_537_p2();
    void thread_p_Val2_12_fu_595_p1();
    void thread_p_Val2_13_fu_601_p2();
    void thread_p_Val2_14_fu_1078_p3();
    void thread_p_Val2_16_fu_841_p2();
    void thread_p_Val2_18_fu_957_p2();
    void thread_p_Val2_2_39_fu_1061_p3();
    void thread_p_Val2_6_fu_372_p2();
    void thread_p_Val2_87_mux_fu_1100_p3();
    void thread_p_Val2_8_fu_436_p2();
    void thread_p_Val2_91_mux_fu_1054_p3();
    void thread_p_Val2_9_cast_cast_fu_486_p1();
    void thread_p_Val2_9_fu_492_p2();
    void thread_p_Val2_s_40_fu_1108_p3();
    void thread_p_Val2_s_fu_366_p2();
    void thread_p_addr1_cast_fu_722_p1();
    void thread_p_addr1_fu_717_p2();
    void thread_p_addr_fu_690_p2();
    void thread_p_not38_i_fu_783_p2();
    void thread_p_not_i4_fu_753_p2();
    void thread_p_not_i_fu_631_p2();
    void thread_p_not_i_i_fu_998_p2();
    void thread_p_shl1_cast_fu_686_p1();
    void thread_p_shl_cast_fu_674_p1();
    void thread_qb_assign_1_fu_481_p2();
    void thread_qb_assign_3_fu_591_p2();
    void thread_qb_assign_5_fu_891_p2();
    void thread_r_1_fu_571_p2();
    void thread_r_2_fu_864_p2();
    void thread_r_fu_463_p2();
    void thread_r_i_i1_fu_585_p2();
    void thread_r_i_i_fu_477_p2();
    void thread_r_i_i_i_fu_885_p2();
    void thread_sum_V_fu_1067_p3();
    void thread_tmp4_demorgan_fu_1023_p2();
    void thread_tmp4_fu_1028_p2();
    void thread_tmp5_fu_1039_p2();
    void thread_tmp_10_cast_cast_fu_528_p1();
    void thread_tmp_10_fu_970_p2();
    void thread_tmp_12_cast_cast_fu_406_p1();
    void thread_tmp_13_fu_942_p2();
    void thread_tmp_14_fu_1008_p2();
    void thread_tmp_15_fu_666_p3();
    void thread_tmp_16_fu_678_p3();
    void thread_tmp_21_cast_cast_fu_837_p1();
    void thread_tmp_25_fu_459_p1();
    void thread_tmp_27_fu_520_p3();
    void thread_tmp_2_fu_765_p2();
    void thread_tmp_31_fu_567_p1();
    void thread_tmp_32_fu_577_p3();
    void thread_tmp_35_fu_1074_p1();
    void thread_tmp_37_fu_801_p1();
    void thread_tmp_3_fu_598_p1();
    void thread_tmp_40_fu_825_p1();
    void thread_tmp_42_fu_877_p3();
    void thread_tmp_44_fu_896_p3();
    void thread_tmp_45_fu_904_p4();
    void thread_tmp_46_fu_920_p4();
    void thread_tmp_5_cast_fu_432_p1();
    void thread_tmp_5_fu_425_p3();
    void thread_tmp_6_cast_cast_fu_489_p1();
    void thread_tmp_7_cast_fu_403_p1();
    void thread_tmp_8_fu_829_p3();
    void thread_tmp_9_fu_954_p1();
    void thread_tmp_s_fu_362_p1();
    void thread_underflow_14_not_fu_1045_p2();
    void thread_underflow_15_not_fu_1090_p2();
    void thread_underflow_2_fu_1034_p2();
    void thread_underflow_fu_795_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
