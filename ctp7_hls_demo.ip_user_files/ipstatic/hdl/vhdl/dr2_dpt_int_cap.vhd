-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dr2_dpt_int_cap is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    eta1_V : IN STD_LOGIC_VECTOR (8 downto 0);
    phi1_V : IN STD_LOGIC_VECTOR (8 downto 0);
    eta2_V : IN STD_LOGIC_VECTOR (8 downto 0);
    phi2_V : IN STD_LOGIC_VECTOR (8 downto 0);
    pt1_V : IN STD_LOGIC_VECTOR (15 downto 0);
    pt2_V : IN STD_LOGIC_VECTOR (15 downto 0);
    ptscale_V : IN STD_LOGIC_VECTOR (16 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of dr2_dpt_int_cap is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv15_16A0 : STD_LOGIC_VECTOR (14 downto 0) := "001011010100000";
    constant ap_const_lv25_1FFFFFF : STD_LOGIC_VECTOR (24 downto 0) := "1111111111111111111111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv19_2F4 : STD_LOGIC_VECTOR (18 downto 0) := "0000000001011110100";
    constant ap_const_lv32_EC4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000111011000100";
    constant ap_const_lv12_EC4 : STD_LOGIC_VECTOR (11 downto 0) := "111011000100";

    signal ptscale_V_read_reg_256 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_pipeline_reg_pp0_iter1_ptscale_V_read_reg_256 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_pipeline_reg_pp0_iter2_ptscale_V_read_reg_256 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_pipeline_reg_pp0_iter3_ptscale_V_read_reg_256 : STD_LOGIC_VECTOR (16 downto 0);
    signal deta_V_fu_88_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal deta_V_reg_261 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_pipeline_reg_pp0_iter1_deta_V_reg_261 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_pipeline_reg_pp0_iter2_deta_V_reg_261 : STD_LOGIC_VECTOR (8 downto 0);
    signal dphi_V_fu_94_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal dphi_V_reg_266 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_pipeline_reg_pp0_iter1_dphi_V_reg_266 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_pipeline_reg_pp0_iter2_dphi_V_reg_266 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_s_fu_118_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_s_reg_271 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_s_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_277 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter2_tmp_s_reg_277 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter3_tmp_s_reg_277 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_fu_131_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal lhs_V_15_fu_134_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal lhs_V_16_fu_143_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_250_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal dpt2_V_cast_reg_300 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_137_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal r_V_reg_315 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_146_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal r_V_7_reg_320 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_fu_171_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_reg_325 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_pipeline_reg_pp0_iter7_tmp_reg_325 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_236_fu_175_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_236_reg_330 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_pipeline_reg_pp0_iter7_tmp_236_reg_330 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_8_fu_185_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal r_V_8_reg_335 : STD_LOGIC_VECTOR (18 downto 0);
    signal phitmp_reg_341 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_reg_346 : STD_LOGIC_VECTOR (11 downto 0);
    signal dq_fu_214_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal dq_reg_351 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_356 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_228_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_7_reg_361 : STD_LOGIC_VECTOR (11 downto 0);
    signal dpt_V_fu_100_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_238_fu_110_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_237_fu_106_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_137_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_137_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_146_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_146_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_2_fu_152_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_165_p0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_165_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal lhs_V_fu_179_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal rhs_V_8_fu_182_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal grp_fu_165_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal dr2_fu_211_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_fu_224_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_6_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_250_p0 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_250_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_137_ce : STD_LOGIC;
    signal grp_fu_146_ce : STD_LOGIC;
    signal grp_fu_165_ce : STD_LOGIC;
    signal grp_fu_250_ce : STD_LOGIC;
    signal grp_fu_165_p00 : STD_LOGIC_VECTOR (41 downto 0);
    signal grp_fu_165_p10 : STD_LOGIC_VECTOR (41 downto 0);

    component mp7wrapped_pfalgobkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (8 downto 0);
        din1 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;


    component mp7wrapped_pfalgofYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (16 downto 0);
        din1 : IN STD_LOGIC_VECTOR (24 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (41 downto 0) );
    end component;


    component mp7wrapped_pfalgog8j IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (14 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (24 downto 0) );
    end component;



begin
    mp7wrapped_pfalgobkb_x_U292 : component mp7wrapped_pfalgobkb
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 9,
        din1_WIDTH => 9,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_137_p0,
        din1 => grp_fu_137_p1,
        ce => grp_fu_137_ce,
        dout => grp_fu_137_p2);

    mp7wrapped_pfalgobkb_x_U293 : component mp7wrapped_pfalgobkb
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 9,
        din1_WIDTH => 9,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_146_p0,
        din1 => grp_fu_146_p1,
        ce => grp_fu_146_ce,
        dout => grp_fu_146_p2);

    mp7wrapped_pfalgofYi_U294 : component mp7wrapped_pfalgofYi
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 17,
        din1_WIDTH => 25,
        dout_WIDTH => 42)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_165_p0,
        din1 => grp_fu_165_p1,
        ce => grp_fu_165_ce,
        dout => grp_fu_165_p2);

    mp7wrapped_pfalgog8j_U295 : component mp7wrapped_pfalgog8j
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 15,
        din1_WIDTH => 15,
        dout_WIDTH => 25)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_250_p0,
        din1 => grp_fu_250_p1,
        ce => grp_fu_250_ce,
        dout => grp_fu_250_p2);




    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                ap_pipeline_reg_pp0_iter1_deta_V_reg_261 <= deta_V_reg_261;
                ap_pipeline_reg_pp0_iter1_dphi_V_reg_266 <= dphi_V_reg_266;
                ap_pipeline_reg_pp0_iter1_ptscale_V_read_reg_256 <= ptscale_V_read_reg_256;
                ap_pipeline_reg_pp0_iter2_deta_V_reg_261 <= ap_pipeline_reg_pp0_iter1_deta_V_reg_261;
                ap_pipeline_reg_pp0_iter2_dphi_V_reg_266 <= ap_pipeline_reg_pp0_iter1_dphi_V_reg_266;
                ap_pipeline_reg_pp0_iter2_ptscale_V_read_reg_256 <= ap_pipeline_reg_pp0_iter1_ptscale_V_read_reg_256;
                ap_pipeline_reg_pp0_iter2_tmp_s_reg_277 <= tmp_s_reg_277;
                ap_pipeline_reg_pp0_iter3_ptscale_V_read_reg_256 <= ap_pipeline_reg_pp0_iter2_ptscale_V_read_reg_256;
                ap_pipeline_reg_pp0_iter3_tmp_s_reg_277 <= ap_pipeline_reg_pp0_iter2_tmp_s_reg_277;
                ap_pipeline_reg_pp0_iter7_tmp_236_reg_330 <= tmp_236_reg_330;
                ap_pipeline_reg_pp0_iter7_tmp_reg_325 <= tmp_reg_325;
                deta_V_reg_261 <= deta_V_fu_88_p2;
                dphi_V_reg_266 <= dphi_V_fu_94_p2;
                dpt2_V_cast_reg_300 <= grp_fu_250_p2;
                dq_reg_351 <= dq_fu_214_p2;
                p_s_reg_271 <= p_s_fu_118_p3;
                phitmp_reg_341 <= grp_fu_165_p2(39 downto 8);
                ptscale_V_read_reg_256 <= ptscale_V;
                r_V_7_reg_320 <= grp_fu_146_p2;
                r_V_8_reg_335 <= r_V_8_fu_185_p2;
                r_V_reg_315 <= grp_fu_137_p2;
                tmp_236_reg_330 <= tmp_236_fu_175_p1;
                tmp_23_reg_346 <= grp_fu_165_p2(19 downto 8);
                tmp_5_reg_356 <= tmp_5_fu_219_p2;
                tmp_7_reg_361 <= tmp_7_fu_228_p2;
                tmp_reg_325 <= tmp_fu_171_p1;
                tmp_s_reg_277 <= tmp_s_fu_126_p2;
            end if;
        end if;
    end process;
    ap_return <= 
        tmp_7_reg_361 when (or_cond_fu_238_p2(0) = '1') else 
        ap_const_lv12_EC4;
    deta_V_fu_88_p2 <= std_logic_vector(unsigned(eta1_V) - unsigned(eta2_V));
    dphi_V_fu_94_p2 <= std_logic_vector(unsigned(phi1_V) - unsigned(phi2_V));
    dpt_V_fu_100_p2 <= std_logic_vector(unsigned(pt1_V) - unsigned(pt2_V));
    dq_fu_214_p2 <= std_logic_vector(signed(dr2_fu_211_p1) + signed(phitmp_reg_341));
        dr2_fu_211_p1 <= std_logic_vector(resize(signed(r_V_8_reg_335),32));


    grp_fu_137_ce_assign_proc : process(ap_ce)
    begin
        if (not((ap_const_logic_1 = ap_ce))) then 
            grp_fu_137_ce <= ap_const_logic_0;
        else 
            grp_fu_137_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_137_p0 <= lhs_V_15_fu_134_p1(9 - 1 downto 0);
    grp_fu_137_p1 <= lhs_V_15_fu_134_p1(9 - 1 downto 0);

    grp_fu_146_ce_assign_proc : process(ap_ce)
    begin
        if (not((ap_const_logic_1 = ap_ce))) then 
            grp_fu_146_ce <= ap_const_logic_0;
        else 
            grp_fu_146_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_146_p0 <= lhs_V_16_fu_143_p1(9 - 1 downto 0);
    grp_fu_146_p1 <= lhs_V_16_fu_143_p1(9 - 1 downto 0);

    grp_fu_165_ce_assign_proc : process(ap_ce)
    begin
        if (not((ap_const_logic_1 = ap_ce))) then 
            grp_fu_165_ce <= ap_const_logic_0;
        else 
            grp_fu_165_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_165_p0 <= grp_fu_165_p00(17 - 1 downto 0);
    grp_fu_165_p00 <= std_logic_vector(resize(unsigned(ap_pipeline_reg_pp0_iter3_ptscale_V_read_reg_256),42));
    grp_fu_165_p1 <= grp_fu_165_p10(25 - 1 downto 0);
    grp_fu_165_p10 <= std_logic_vector(resize(unsigned(p_2_fu_152_p3),42));

    grp_fu_250_ce_assign_proc : process(ap_ce)
    begin
        if (not((ap_const_logic_1 = ap_ce))) then 
            grp_fu_250_ce <= ap_const_logic_0;
        else 
            grp_fu_250_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_250_p0 <= tmp_22_fu_131_p1(15 - 1 downto 0);
    grp_fu_250_p1 <= tmp_22_fu_131_p1(15 - 1 downto 0);
        lhs_V_15_fu_134_p1 <= std_logic_vector(resize(signed(ap_pipeline_reg_pp0_iter2_deta_V_reg_261),18));

        lhs_V_16_fu_143_p1 <= std_logic_vector(resize(signed(ap_pipeline_reg_pp0_iter2_dphi_V_reg_266),18));

        lhs_V_fu_179_p1 <= std_logic_vector(resize(signed(r_V_reg_315),19));

    or_cond_fu_238_p2 <= (tmp_5_reg_356 and tmp_6_fu_233_p2);
    p_2_fu_152_p3 <= 
        ap_const_lv25_1FFFFFF when (ap_pipeline_reg_pp0_iter3_tmp_s_reg_277(0) = '1') else 
        dpt2_V_cast_reg_300;
    p_s_fu_118_p3 <= 
        ap_const_lv15_0 when (tmp_238_fu_110_p3(0) = '1') else 
        tmp_237_fu_106_p1;
    r_V_8_fu_185_p2 <= std_logic_vector(signed(lhs_V_fu_179_p1) + signed(rhs_V_8_fu_182_p1));
        rhs_V_8_fu_182_p1 <= std_logic_vector(resize(signed(r_V_7_reg_320),19));

    tmp1_fu_224_p2 <= std_logic_vector(unsigned(tmp_23_reg_346) + unsigned(ap_pipeline_reg_pp0_iter7_tmp_reg_325));
    tmp_22_fu_131_p1 <= std_logic_vector(resize(unsigned(p_s_reg_271),25));
    tmp_236_fu_175_p1 <= grp_fu_137_p2(12 - 1 downto 0);
    tmp_237_fu_106_p1 <= dpt_V_fu_100_p2(15 - 1 downto 0);
    tmp_238_fu_110_p3 <= dpt_V_fu_100_p2(15 downto 15);
    tmp_5_fu_219_p2 <= "1" when (signed(r_V_8_reg_335) < signed(ap_const_lv19_2F4)) else "0";
    tmp_6_fu_233_p2 <= "1" when (signed(dq_reg_351) < signed(ap_const_lv32_EC4)) else "0";
    tmp_7_fu_228_p2 <= std_logic_vector(unsigned(ap_pipeline_reg_pp0_iter7_tmp_236_reg_330) + unsigned(tmp1_fu_224_p2));
    tmp_fu_171_p1 <= grp_fu_146_p2(12 - 1 downto 0);
    tmp_s_fu_126_p2 <= "1" when (unsigned(p_s_reg_271) > unsigned(ap_const_lv15_16A0)) else "0";
end behav;