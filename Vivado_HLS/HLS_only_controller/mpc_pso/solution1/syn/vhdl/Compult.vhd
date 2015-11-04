-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.4
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Compult is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y_in_V : IN STD_LOGIC_VECTOR (31 downto 0);
    ref_in_V : IN STD_LOGIC_VECTOR (29 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (29 downto 0) );
end;


architecture behav of Compult is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "Compult,hls_ip_2014_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.877500,HLS_SYN_LAT=149807,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=74,HLS_SYN_FF=7605,HLS_SYN_LUT=12093}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv30_1FFFFFFF : STD_LOGIC_VECTOR (29 downto 0) := "011111111111111111111111111111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv30_20000000 : STD_LOGIC_VECTOR (29 downto 0) := "100000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv42_1F4 : STD_LOGIC_VECTOR (41 downto 0) := "000000000000000000000000000000000111110100";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_7FFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "01111111111111111111111111111111";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_28 : BOOLEAN;
    signal x1_1_V : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    signal x2_2_V : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal u_V : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    signal p_Val2_19_fu_187_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_19_reg_700 : STD_LOGIC_VECTOR (29 downto 0);
    signal overflow_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_reg_705 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_20_fu_213_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_20_reg_710 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_56 : BOOLEAN;
    signal isneg_reg_715 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_23_fu_245_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_23_reg_722 : STD_LOGIC_VECTOR (29 downto 0);
    signal newsignbit_reg_728 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_21_fu_301_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_21_reg_735 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_71 : BOOLEAN;
    signal dx1_V_fu_309_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal dx1_V_reg_740 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_80 : BOOLEAN;
    signal signbit_reg_750 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_91 : BOOLEAN;
    signal qbit_3_reg_756 : STD_LOGIC_VECTOR (0 downto 0);
    signal newsignbit_4_reg_761 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_58_reg_767 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_reg_772 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Result_20_i_reg_777 : STD_LOGIC_VECTOR (7 downto 0);
    signal qb_assign_8_fu_378_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal qb_assign_8_reg_783 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_110 : BOOLEAN;
    signal brmerge_i_i2_fu_392_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i2_reg_788 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge40_demorgan_i_i_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge40_demorgan_i_i_reg_793 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_26_fu_455_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_26_reg_799 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_7 : STD_LOGIC;
    signal ap_sig_bdd_123 : BOOLEAN;
    signal p_Val2_29_fu_488_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_29_reg_805 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_132 : BOOLEAN;
    signal overflow_5_fu_528_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_5_reg_811 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_4_fu_552_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_4_reg_817 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st10_fsm_9 : STD_LOGIC;
    signal ap_sig_bdd_145 : BOOLEAN;
    signal dx2_V_fu_590_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal dx2_V_reg_829 : STD_LOGIC_VECTOR (29 downto 0);
    signal du_V_fu_604_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal du_V_reg_840 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_bdd_158 : BOOLEAN;
    signal grp_Compult_mpc_pso_fu_113_ap_done : STD_LOGIC;
    signal isneg_3_reg_845 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_34_fu_633_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_34_reg_852 : STD_LOGIC_VECTOR (29 downto 0);
    signal newsignbit_6_reg_858 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_Compult_mpc_pso_fu_113_ap_start : STD_LOGIC;
    signal grp_Compult_mpc_pso_fu_113_ap_idle : STD_LOGIC;
    signal grp_Compult_mpc_pso_fu_113_ap_ready : STD_LOGIC;
    signal grp_Compult_mpc_pso_fu_113_dx1_in_V : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_Compult_mpc_pso_fu_113_dx2_in_V : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_Compult_mpc_pso_fu_113_y_in_V : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_Compult_mpc_pso_fu_113_u_in_V : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_Compult_mpc_pso_fu_113_ref_in_V : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_Compult_mpc_pso_fu_113_ap_return : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg : STD_LOGIC := '0';
    signal tmp_20_fu_686_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_sig_cseq_ST_st12_fsm_11 : STD_LOGIC;
    signal ap_sig_bdd_225 : BOOLEAN;
    signal tmp_50_fu_163_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_159_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_i_i_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal qbit_fu_151_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal qb_assign_6_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_fu_141_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_s_fu_183_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_47_fu_133_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_51_fu_193_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_fu_219_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_i_41_fu_227_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Val2_22_fu_231_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_36_i_fu_263_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal isneg_not_i_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i_i_fu_273_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i6_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_94_mux_i_fu_287_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_i_fu_294_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_fu_320_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_320_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_320_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal p_not_i_i_fu_387_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_fu_382_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_i_fu_408_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_418_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_3_fu_423_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_4_fu_413_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i_i3_fu_428_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_25_fu_402_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_fu_434_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_97_mux_i_fu_439_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_i4_fu_447_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_35_i_fu_463_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_36_i5_fu_470_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal p_Val2_28_fu_474_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal p_Result_21_i_fu_500_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal newsignbit_5_fu_492_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_not_i5_i_fu_510_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal isneg_2_fu_480_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i6_i_fu_516_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_37_i6_fu_522_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_not38_i_i_fu_540_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal newsignbit_0_not_i_i_fu_534_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge39_i_i_fu_546_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_16_not_i_fu_567_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i5_i_fu_563_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge2_i_fu_572_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_101_mux_i_fu_577_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_3_i_fu_584_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_17_fu_612_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_18_fu_615_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Val2_33_fu_619_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_19_fu_648_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal isneg_not_fu_662_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i_fu_658_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_5_fu_653_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_fu_667_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_108_mux_fu_672_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Val2_s_42_fu_679_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_fu_320_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

    component Compult_mpc_pso IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dx1_in_V : IN STD_LOGIC_VECTOR (31 downto 0);
        dx2_in_V : IN STD_LOGIC_VECTOR (29 downto 0);
        y_in_V : IN STD_LOGIC_VECTOR (29 downto 0);
        u_in_V : IN STD_LOGIC_VECTOR (29 downto 0);
        ref_in_V : IN STD_LOGIC_VECTOR (29 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (26 downto 0) );
    end component;


    component Compult_mul_32s_10ns_42_3 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (41 downto 0) );
    end component;



begin
    grp_Compult_mpc_pso_fu_113 : component Compult_mpc_pso
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_Compult_mpc_pso_fu_113_ap_start,
        ap_done => grp_Compult_mpc_pso_fu_113_ap_done,
        ap_idle => grp_Compult_mpc_pso_fu_113_ap_idle,
        ap_ready => grp_Compult_mpc_pso_fu_113_ap_ready,
        dx1_in_V => grp_Compult_mpc_pso_fu_113_dx1_in_V,
        dx2_in_V => grp_Compult_mpc_pso_fu_113_dx2_in_V,
        y_in_V => grp_Compult_mpc_pso_fu_113_y_in_V,
        u_in_V => grp_Compult_mpc_pso_fu_113_u_in_V,
        ref_in_V => grp_Compult_mpc_pso_fu_113_ref_in_V,
        ap_return => grp_Compult_mpc_pso_fu_113_ap_return);

    Compult_mul_32s_10ns_42_3_U59 : component Compult_mul_32s_10ns_42_3
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 10,
        dout_WIDTH => 42)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_320_p0,
        din1 => grp_fu_320_p1,
        ce => grp_fu_320_ce,
        dout => grp_fu_320_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg assign process. --
    grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then 
                    grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_Compult_mpc_pso_fu_113_ap_ready)) then 
                    grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then
                brmerge40_demorgan_i_i_reg_793 <= brmerge40_demorgan_i_i_fu_397_p2;
                brmerge_i_i2_reg_788 <= brmerge_i_i2_fu_392_p2;
                qb_assign_8_reg_783 <= qb_assign_8_fu_378_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10) and not((ap_const_logic_0 = grp_Compult_mpc_pso_fu_113_ap_done)))) then
                du_V_reg_840(2) <= du_V_fu_604_p3(2);
    du_V_reg_840(3) <= du_V_fu_604_p3(3);
    du_V_reg_840(4) <= du_V_fu_604_p3(4);
    du_V_reg_840(5) <= du_V_fu_604_p3(5);
    du_V_reg_840(6) <= du_V_fu_604_p3(6);
    du_V_reg_840(7) <= du_V_fu_604_p3(7);
    du_V_reg_840(8) <= du_V_fu_604_p3(8);
    du_V_reg_840(9) <= du_V_fu_604_p3(9);
    du_V_reg_840(10) <= du_V_fu_604_p3(10);
    du_V_reg_840(11) <= du_V_fu_604_p3(11);
    du_V_reg_840(12) <= du_V_fu_604_p3(12);
    du_V_reg_840(13) <= du_V_fu_604_p3(13);
    du_V_reg_840(14) <= du_V_fu_604_p3(14);
    du_V_reg_840(15) <= du_V_fu_604_p3(15);
    du_V_reg_840(16) <= du_V_fu_604_p3(16);
    du_V_reg_840(17) <= du_V_fu_604_p3(17);
    du_V_reg_840(18) <= du_V_fu_604_p3(18);
    du_V_reg_840(19) <= du_V_fu_604_p3(19);
    du_V_reg_840(20) <= du_V_fu_604_p3(20);
    du_V_reg_840(21) <= du_V_fu_604_p3(21);
    du_V_reg_840(22) <= du_V_fu_604_p3(22);
    du_V_reg_840(23) <= du_V_fu_604_p3(23);
    du_V_reg_840(24) <= du_V_fu_604_p3(24);
    du_V_reg_840(25) <= du_V_fu_604_p3(25);
    du_V_reg_840(26) <= du_V_fu_604_p3(26);
    du_V_reg_840(27) <= du_V_fu_604_p3(27);
    du_V_reg_840(28) <= du_V_fu_604_p3(28);
                isneg_3_reg_845 <= p_Val2_33_fu_619_p2(30 downto 30);
                newsignbit_6_reg_858 <= p_Val2_33_fu_619_p2(29 downto 29);
                p_Val2_34_reg_852 <= p_Val2_34_fu_633_p1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                dx1_V_reg_740(2) <= dx1_V_fu_309_p3(2);
    dx1_V_reg_740(3) <= dx1_V_fu_309_p3(3);
    dx1_V_reg_740(4) <= dx1_V_fu_309_p3(4);
    dx1_V_reg_740(5) <= dx1_V_fu_309_p3(5);
    dx1_V_reg_740(6) <= dx1_V_fu_309_p3(6);
    dx1_V_reg_740(7) <= dx1_V_fu_309_p3(7);
    dx1_V_reg_740(8) <= dx1_V_fu_309_p3(8);
    dx1_V_reg_740(9) <= dx1_V_fu_309_p3(9);
    dx1_V_reg_740(10) <= dx1_V_fu_309_p3(10);
    dx1_V_reg_740(11) <= dx1_V_fu_309_p3(11);
    dx1_V_reg_740(12) <= dx1_V_fu_309_p3(12);
    dx1_V_reg_740(13) <= dx1_V_fu_309_p3(13);
    dx1_V_reg_740(14) <= dx1_V_fu_309_p3(14);
    dx1_V_reg_740(15) <= dx1_V_fu_309_p3(15);
    dx1_V_reg_740(16) <= dx1_V_fu_309_p3(16);
    dx1_V_reg_740(17) <= dx1_V_fu_309_p3(17);
    dx1_V_reg_740(18) <= dx1_V_fu_309_p3(18);
    dx1_V_reg_740(19) <= dx1_V_fu_309_p3(19);
    dx1_V_reg_740(20) <= dx1_V_fu_309_p3(20);
    dx1_V_reg_740(21) <= dx1_V_fu_309_p3(21);
    dx1_V_reg_740(22) <= dx1_V_fu_309_p3(22);
    dx1_V_reg_740(23) <= dx1_V_fu_309_p3(23);
    dx1_V_reg_740(24) <= dx1_V_fu_309_p3(24);
    dx1_V_reg_740(25) <= dx1_V_fu_309_p3(25);
    dx1_V_reg_740(26) <= dx1_V_fu_309_p3(26);
    dx1_V_reg_740(27) <= dx1_V_fu_309_p3(27);
    dx1_V_reg_740(28) <= dx1_V_fu_309_p3(28);
    dx1_V_reg_740(29) <= dx1_V_fu_309_p3(29);
    dx1_V_reg_740(30) <= dx1_V_fu_309_p3(30);
    dx1_V_reg_740(31) <= dx1_V_fu_309_p3(31);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then
                dx2_V_reg_829 <= dx2_V_fu_590_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                isneg_reg_715 <= p_Val2_22_fu_231_p2(30 downto 30);
                newsignbit_reg_728 <= p_Val2_22_fu_231_p2(29 downto 29);
                p_Val2_20_reg_710 <= p_Val2_20_fu_213_p3;
                p_Val2_23_reg_722 <= p_Val2_23_fu_245_p1;
                x1_1_V <= p_Val2_20_fu_213_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                newsignbit_4_reg_761 <= grp_fu_320_p2(33 downto 33);
                p_Result_20_i_reg_777 <= grp_fu_320_p2(41 downto 34);
                qbit_3_reg_756 <= grp_fu_320_p2(1 downto 1);
                signbit_reg_750 <= grp_fu_320_p2(41 downto 41);
                tmp_16_reg_772 <= grp_fu_320_p2(33 downto 3);
                tmp_58_reg_767 <= grp_fu_320_p2(2 downto 2);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then
                overflow_5_reg_811 <= overflow_5_fu_528_p2;
                p_Val2_29_reg_805 <= p_Val2_29_fu_488_p1;
                underflow_4_reg_817 <= underflow_4_fu_552_p2;
                x2_2_V <= p_Val2_26_reg_799;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                overflow_reg_705 <= overflow_fu_207_p2;
                p_Val2_19_reg_700 <= p_Val2_19_fu_187_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then
                p_Val2_26_reg_799 <= p_Val2_26_fu_455_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                tmp_21_reg_735 <= tmp_21_fu_301_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then
                u_V <= tmp_20_fu_686_p3;
            end if;
        end if;
    end process;
    dx1_V_reg_740(1 downto 0) <= "00";
    du_V_reg_840(1 downto 0) <= "00";

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, grp_Compult_mpc_pso_fu_113_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                if (not((ap_const_logic_0 = grp_Compult_mpc_pso_fu_113_ap_done))) then
                    ap_NS_fsm <= ap_ST_st12_fsm_11;
                else
                    ap_NS_fsm <= ap_ST_st11_fsm_10;
                end if;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    Range1_all_ones_fu_382_p2 <= "1" when (p_Result_20_i_reg_777 = ap_const_lv8_FF) else "0";

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st12_fsm_11)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st12_fsm_11)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

        ap_return <= std_logic_vector(resize(signed(du_V_reg_840),30));


    -- ap_sig_bdd_110 assign process. --
    ap_sig_bdd_110_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_110 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_123 assign process. --
    ap_sig_bdd_123_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_123 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    -- ap_sig_bdd_132 assign process. --
    ap_sig_bdd_132_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_132 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_145 assign process. --
    ap_sig_bdd_145_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_145 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    -- ap_sig_bdd_158 assign process. --
    ap_sig_bdd_158_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_158 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    -- ap_sig_bdd_225 assign process. --
    ap_sig_bdd_225_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_225 <= (ap_const_lv1_1 = ap_CS_fsm(11 downto 11));
    end process;


    -- ap_sig_bdd_28 assign process. --
    ap_sig_bdd_28_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_28 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_56 assign process. --
    ap_sig_bdd_56_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_56 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_71 assign process. --
    ap_sig_bdd_71_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_71 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_80 assign process. --
    ap_sig_bdd_80_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_80 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_91 assign process. --
    ap_sig_bdd_91_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_91 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_cseq_ST_st10_fsm_9 assign process. --
    ap_sig_cseq_ST_st10_fsm_9_assign_proc : process(ap_sig_bdd_145)
    begin
        if (ap_sig_bdd_145) then 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st11_fsm_10 assign process. --
    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_bdd_158)
    begin
        if (ap_sig_bdd_158) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st12_fsm_11 assign process. --
    ap_sig_cseq_ST_st12_fsm_11_assign_proc : process(ap_sig_bdd_225)
    begin
        if (ap_sig_bdd_225) then 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_28)
    begin
        if (ap_sig_bdd_28) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_56)
    begin
        if (ap_sig_bdd_56) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_71)
    begin
        if (ap_sig_bdd_71) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_80)
    begin
        if (ap_sig_bdd_80) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_91)
    begin
        if (ap_sig_bdd_91) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_6 assign process. --
    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_bdd_110)
    begin
        if (ap_sig_bdd_110) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_7 assign process. --
    ap_sig_cseq_ST_st8_fsm_7_assign_proc : process(ap_sig_bdd_123)
    begin
        if (ap_sig_bdd_123) then 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_8 assign process. --
    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_bdd_132)
    begin
        if (ap_sig_bdd_132) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    brmerge2_i_fu_572_p2 <= (overflow_5_reg_811 or underflow_16_not_i_fu_567_p2);
    brmerge39_i_i_fu_546_p2 <= (p_not38_i_i_fu_540_p2 or newsignbit_0_not_i_i_fu_534_p2);
    brmerge40_demorgan_i_i_fu_397_p2 <= (newsignbit_4_reg_761 and Range1_all_ones_fu_382_p2);
    brmerge_fu_667_p2 <= (newsignbit_6_reg_858 or isneg_not_fu_662_p2);
    brmerge_i6_fu_282_p2 <= (newsignbit_reg_728 or isneg_not_i_fu_277_p2);
    brmerge_i6_i_fu_516_p2 <= (newsignbit_5_fu_492_p3 or p_not_i5_i_fu_510_p2);
    brmerge_i_i2_fu_392_p2 <= (newsignbit_4_reg_761 or p_not_i_i_fu_387_p2);
    brmerge_i_i5_i_fu_563_p2 <= (underflow_4_reg_817 or overflow_5_reg_811);
    brmerge_i_i_fu_658_p2 <= (isneg_3_reg_845 xor newsignbit_6_reg_858);
    brmerge_i_i_i3_fu_428_p2 <= (underflow_3_fu_423_p2 or overflow_4_fu_413_p2);
    brmerge_i_i_i_fu_273_p2 <= (isneg_reg_715 xor newsignbit_reg_728);
    du_V_fu_604_p3 <= (grp_Compult_mpc_pso_fu_113_ap_return & ap_const_lv2_0);
    dx1_V_fu_309_p3 <= (tmp_21_reg_735 & ap_const_lv2_0);
    dx2_V_fu_590_p3 <= 
        p_Val2_101_mux_i_fu_577_p3 when (brmerge2_i_fu_572_p2(0) = '1') else 
        p_Val2_3_i_fu_584_p3;
    grp_Compult_mpc_pso_fu_113_ap_start <= grp_Compult_mpc_pso_fu_113_ap_start_ap_start_reg;
    grp_Compult_mpc_pso_fu_113_dx1_in_V <= dx1_V_reg_740;
    grp_Compult_mpc_pso_fu_113_dx2_in_V <= dx2_V_reg_829;
    grp_Compult_mpc_pso_fu_113_ref_in_V <= ref_in_V;
    grp_Compult_mpc_pso_fu_113_u_in_V <= u_V;
    grp_Compult_mpc_pso_fu_113_y_in_V <= p_Val2_20_reg_710;
    grp_fu_320_ce <= ap_const_logic_1;
    grp_fu_320_p0 <= dx1_V_fu_309_p3;
    grp_fu_320_p1 <= ap_const_lv42_1F4(10 - 1 downto 0);
    isneg_2_fu_480_p3 <= p_Val2_28_fu_474_p2(32 downto 32);
    isneg_not_fu_662_p2 <= (isneg_3_reg_845 xor ap_const_lv1_1);
    isneg_not_i_fu_277_p2 <= (isneg_reg_715 xor ap_const_lv1_1);
    newsignbit_0_not_i_i_fu_534_p2 <= (newsignbit_5_fu_492_p3 xor ap_const_lv1_1);
    newsignbit_5_fu_492_p3 <= p_Val2_28_fu_474_p2(29 downto 29);
    overflow_4_fu_413_p2 <= (brmerge_i_i2_reg_788 and tmp_34_i_fu_408_p2);
    overflow_5_fu_528_p2 <= (brmerge_i6_i_fu_516_p2 and tmp_37_i6_fu_522_p2);
    overflow_fu_207_p2 <= (tmp_51_fu_193_p3 and tmp_15_fu_201_p2);
    p_Result_21_i_fu_500_p4 <= p_Val2_28_fu_474_p2(32 downto 30);
    p_Val2_101_mux_i_fu_577_p3 <= 
        ap_const_lv30_1FFFFFFF when (brmerge_i_i5_i_fu_563_p2(0) = '1') else 
        p_Val2_29_reg_805;
    p_Val2_108_mux_fu_672_p3 <= 
        ap_const_lv30_1FFFFFFF when (brmerge_i_i_fu_658_p2(0) = '1') else 
        p_Val2_34_reg_852;
    p_Val2_19_fu_187_p2 <= std_logic_vector(unsigned(p_Val2_s_fu_141_p4) + unsigned(tmp_s_fu_183_p1));
    p_Val2_20_fu_213_p3 <= 
        ap_const_lv30_1FFFFFFF when (overflow_reg_705(0) = '1') else 
        p_Val2_19_reg_700;
    p_Val2_22_fu_231_p2 <= std_logic_vector(signed(tmp_i_fu_219_p1) - signed(tmp_i_41_fu_227_p1));
    p_Val2_23_fu_245_p1 <= p_Val2_22_fu_231_p2(30 - 1 downto 0);
    p_Val2_25_fu_402_p3 <= (tmp_16_reg_772 & qb_assign_8_reg_783);
    p_Val2_26_fu_455_p3 <= 
        p_Val2_97_mux_i_fu_439_p3 when (tmp7_fu_434_p2(0) = '1') else 
        p_Val2_i4_fu_447_p3;
    p_Val2_28_fu_474_p2 <= std_logic_vector(signed(tmp_35_i_fu_463_p1) - signed(tmp_36_i5_fu_470_p1));
    p_Val2_29_fu_488_p1 <= p_Val2_28_fu_474_p2(30 - 1 downto 0);
    p_Val2_33_fu_619_p2 <= std_logic_vector(signed(tmp_17_fu_612_p1) + signed(tmp_18_fu_615_p1));
    p_Val2_34_fu_633_p1 <= p_Val2_33_fu_619_p2(30 - 1 downto 0);
    p_Val2_3_i_fu_584_p3 <= 
        ap_const_lv30_20000000 when (underflow_4_reg_817(0) = '1') else 
        p_Val2_29_reg_805;
    p_Val2_94_mux_i_fu_287_p3 <= 
        ap_const_lv30_1FFFFFFF when (brmerge_i_i_i_fu_273_p2(0) = '1') else 
        p_Val2_23_reg_722;
    p_Val2_97_mux_i_fu_439_p3 <= 
        ap_const_lv32_7FFFFFFF when (brmerge_i_i_i3_fu_428_p2(0) = '1') else 
        p_Val2_25_fu_402_p3;
    p_Val2_i4_fu_447_p3 <= 
        ap_const_lv32_80000000 when (underflow_3_fu_423_p2(0) = '1') else 
        p_Val2_25_fu_402_p3;
    p_Val2_i_fu_294_p3 <= 
        ap_const_lv30_20000000 when (underflow_fu_268_p2(0) = '1') else 
        p_Val2_23_reg_722;
    p_Val2_s_42_fu_679_p3 <= 
        ap_const_lv30_20000000 when (underflow_5_fu_653_p2(0) = '1') else 
        p_Val2_34_reg_852;
    p_Val2_s_fu_141_p4 <= y_in_V(31 downto 2);
    p_not38_i_i_fu_540_p2 <= "0" when (p_Result_21_i_fu_500_p4 = ap_const_lv3_7) else "1";
    p_not_i5_i_fu_510_p2 <= "0" when (p_Result_21_i_fu_500_p4 = ap_const_lv3_0) else "1";
    p_not_i_i_fu_387_p2 <= "0" when (p_Result_20_i_reg_777 = ap_const_lv8_0) else "1";
    qb_assign_6_fu_177_p2 <= (r_i_i_fu_171_p2 and qbit_fu_151_p3);
    qb_assign_8_fu_378_p2 <= (tmp_58_reg_767 and qbit_3_reg_756);
    qbit_fu_151_p3 <= y_in_V(1 downto 1);
    r_fu_159_p1 <= y_in_V(1 - 1 downto 0);
    r_i_i_fu_171_p2 <= (tmp_50_fu_163_p3 or r_fu_159_p1);
    tmp7_fu_434_p2 <= (brmerge40_demorgan_i_i_reg_793 or tmp_34_i_fu_408_p2);
    tmp_15_fu_201_p2 <= (tmp_47_fu_133_p3 xor ap_const_lv1_1);
        tmp_17_fu_612_p1 <= std_logic_vector(resize(signed(u_V),31));

        tmp_18_fu_615_p1 <= std_logic_vector(resize(signed(du_V_fu_604_p3),31));

    tmp_19_fu_648_p2 <= (newsignbit_6_reg_858 xor ap_const_lv1_1);
    tmp_20_fu_686_p3 <= 
        p_Val2_108_mux_fu_672_p3 when (brmerge_fu_667_p2(0) = '1') else 
        p_Val2_s_42_fu_679_p3;
    tmp_21_fu_301_p3 <= 
        p_Val2_94_mux_i_fu_287_p3 when (brmerge_i6_fu_282_p2(0) = '1') else 
        p_Val2_i_fu_294_p3;
    tmp_34_i_fu_408_p2 <= (signbit_reg_750 xor ap_const_lv1_1);
        tmp_35_i_fu_463_p1 <= std_logic_vector(resize(signed(p_Val2_26_reg_799),33));

        tmp_36_i5_fu_470_p1 <= std_logic_vector(resize(signed(x2_2_V),33));

    tmp_36_i_fu_263_p2 <= (newsignbit_reg_728 xor ap_const_lv1_1);
    tmp_37_i6_fu_522_p2 <= (isneg_2_fu_480_p3 xor ap_const_lv1_1);
    tmp_47_fu_133_p3 <= y_in_V(31 downto 31);
    tmp_50_fu_163_p3 <= y_in_V(2 downto 2);
    tmp_51_fu_193_p3 <= p_Val2_19_fu_187_p2(29 downto 29);
    tmp_fu_418_p2 <= (brmerge40_demorgan_i_i_reg_793 xor ap_const_lv1_1);
        tmp_i_41_fu_227_p1 <= std_logic_vector(resize(signed(x1_1_V),31));

        tmp_i_fu_219_p1 <= std_logic_vector(resize(signed(p_Val2_20_fu_213_p3),31));

    tmp_s_fu_183_p1 <= std_logic_vector(resize(unsigned(qb_assign_6_fu_177_p2),30));
    underflow_16_not_i_fu_567_p2 <= (underflow_4_reg_817 xor ap_const_lv1_1);
    underflow_3_fu_423_p2 <= (signbit_reg_750 and tmp_fu_418_p2);
    underflow_4_fu_552_p2 <= (brmerge39_i_i_fu_546_p2 and isneg_2_fu_480_p3);
    underflow_5_fu_653_p2 <= (isneg_3_reg_845 and tmp_19_fu_648_p2);
    underflow_fu_268_p2 <= (isneg_reg_715 and tmp_36_i_fu_263_p2);
end behav;