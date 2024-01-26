-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 17.1 (Release Build #590)
-- 
-- Legal Notice: Copyright 2017 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15
-- VHDL created on Thu Jan 25 19:12:10 2024


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15 is
    port (
        in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni1_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni1_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_enable : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_resize6_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15;

architecture normal of i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_src_unnamed_resize2_resize22 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize3_resize24 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize4_resize26 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize5_resize28 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_resize19_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_resize21_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul_resize_multconst_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_resize20_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_728_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_729_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add1_resize_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_add1_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add1_resize_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_cmp123_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp123_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp123_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp123_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize2_resize_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_resize3_resize_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize4_resize_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize5_resize_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_resize_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_mul_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_resize_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_resize18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize19_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize19_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize19_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize19_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize19_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_resize19_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_resize20_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize20_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_resize21_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_resize21_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_resize21_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_resize21_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_resize21_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_resize21_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_resize21_vt_select_32_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul_resize_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul_resize_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul_resize_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul_resize_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul_resize_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul_resize_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul_resize_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_mul_resize_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_mul_resize_im0_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_shift2_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_mul_resize_im0_shift2_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_mul_resize_im0_sub_3_a : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_sub_3_b : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_sub_3_o : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_sub_3_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_mul_resize_im0_shift4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul_resize_im0_shift4_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul_resize_im0_sub_5_a : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_resize_im0_sub_5_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_resize_im0_sub_5_o : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul_resize_im0_sub_5_q : STD_LOGIC_VECTOR (26 downto 0);
    signal i_mul_resize_im0_shift6_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul_resize_im0_shift6_qint : STD_LOGIC_VECTOR (29 downto 0);
    signal i_mul_resize_im3_shift0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_resize_im3_shift0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_resize_im3_add_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_add_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_add_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_add_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_resize_im3_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul_resize_im3_sub_3_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_sub_3_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_sub_3_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_sub_3_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_mul_resize_im3_shift4_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_mul_resize_im3_shift4_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_mul_resize_im3_sub_5_a : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul_resize_im3_sub_5_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul_resize_im3_sub_5_o : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul_resize_im3_sub_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_mul_resize_im3_shift6_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul_resize_im3_shift6_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul_resize_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul_resize_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_unnamed_resize20_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist1_i_mul_resize_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist2_i_add1_resize_vt_select_31_b_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal redist3_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_enable_stall_connector_x_not_enable_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist3_sync_in_aunroll_x_in_i_valid_4(DELAY,89)
    redist3_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist3_sync_in_aunroll_x_in_i_valid_4_q, ena => in_enable(0), clk => clock, aclr => resetn );

    -- dupName_0_enable_stall_connector_x_not_enable(LOGICAL,90)
    dupName_0_enable_stall_connector_x_not_enable_q <= STD_LOGIC_VECTOR(not (in_enable));

    -- c_i33_1gr(CONSTANT,24)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- c_i32_728(CONSTANT,22)
    c_i32_728_q <= "00000000000000000000001011011000";

    -- i_mul_resize_multconst_x(CONSTANT,11)
    i_mul_resize_multconst_x_q <= "0000000000000000000000";

    -- i_mul_resize_im3_shift0(BITSHIFT,78)@2
    i_mul_resize_im3_shift0_qint <= i_mul_resize_bs1_merged_bit_select_c & "00";
    i_mul_resize_im3_shift0_q <= i_mul_resize_im3_shift0_qint(15 downto 0);

    -- i_mul_resize_bs1_merged_bit_select(BITSELECT,85)@2
    i_mul_resize_bs1_merged_bit_select_b <= in_c1_eni1_2(17 downto 0);
    i_mul_resize_bs1_merged_bit_select_c <= in_c1_eni1_2(31 downto 18);

    -- i_mul_resize_im3_add_1(ADD,79)@2 + 1
    i_mul_resize_im3_add_1_a <= STD_LOGIC_VECTOR("000" & i_mul_resize_bs1_merged_bit_select_c);
    i_mul_resize_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_mul_resize_im3_shift0_q);
    i_mul_resize_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul_resize_im3_add_1_a) + UNSIGNED(i_mul_resize_im3_add_1_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im3_add_1_q <= i_mul_resize_im3_add_1_o(16 downto 0);

    -- i_mul_resize_im3_shift2(BITSHIFT,80)@2
    i_mul_resize_im3_shift2_qint <= i_mul_resize_bs1_merged_bit_select_c & "00";
    i_mul_resize_im3_shift2_q <= i_mul_resize_im3_shift2_qint(15 downto 0);

    -- i_mul_resize_im3_sub_3(SUB,81)@2 + 1
    i_mul_resize_im3_sub_3_a <= STD_LOGIC_VECTOR("0" & i_mul_resize_im3_shift2_q);
    i_mul_resize_im3_sub_3_b <= STD_LOGIC_VECTOR("000" & i_mul_resize_bs1_merged_bit_select_c);
    i_mul_resize_im3_sub_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im3_sub_3_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im3_sub_3_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul_resize_im3_sub_3_a) - UNSIGNED(i_mul_resize_im3_sub_3_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im3_sub_3_q <= i_mul_resize_im3_sub_3_o(16 downto 0);

    -- i_mul_resize_im3_shift4(BITSHIFT,82)@3
    i_mul_resize_im3_shift4_qint <= i_mul_resize_im3_sub_3_q & "00000";
    i_mul_resize_im3_shift4_q <= i_mul_resize_im3_shift4_qint(21 downto 0);

    -- i_mul_resize_im3_sub_5(SUB,83)@3 + 1
    i_mul_resize_im3_sub_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => i_mul_resize_im3_shift4_q(21)) & i_mul_resize_im3_shift4_q));
    i_mul_resize_im3_sub_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & i_mul_resize_im3_add_1_q));
    i_mul_resize_im3_sub_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im3_sub_5_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im3_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(i_mul_resize_im3_sub_5_a) - SIGNED(i_mul_resize_im3_sub_5_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im3_sub_5_q <= i_mul_resize_im3_sub_5_o(22 downto 0);

    -- i_mul_resize_im3_shift6(BITSHIFT,84)@4
    i_mul_resize_im3_shift6_qint <= i_mul_resize_im3_sub_5_q & "000";
    i_mul_resize_im3_shift6_q <= i_mul_resize_im3_shift6_qint(25 downto 0);

    -- i_mul_resize_align_7(BITSHIFT,67)@4
    i_mul_resize_align_7_qint <= i_mul_resize_im3_shift6_q(23 downto 0) & "000000000000000000";
    i_mul_resize_align_7_q <= i_mul_resize_align_7_qint(41 downto 0);

    -- i_mul_resize_im0_shift0(BITSHIFT,71)@2
    i_mul_resize_im0_shift0_qint <= i_mul_resize_bs1_merged_bit_select_b & "00";
    i_mul_resize_im0_shift0_q <= i_mul_resize_im0_shift0_qint(19 downto 0);

    -- i_mul_resize_im0_add_1(ADD,72)@2 + 1
    i_mul_resize_im0_add_1_a <= STD_LOGIC_VECTOR("000" & i_mul_resize_bs1_merged_bit_select_b);
    i_mul_resize_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_mul_resize_im0_shift0_q);
    i_mul_resize_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul_resize_im0_add_1_a) + UNSIGNED(i_mul_resize_im0_add_1_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im0_add_1_q <= i_mul_resize_im0_add_1_o(20 downto 0);

    -- i_mul_resize_im0_shift2(BITSHIFT,73)@2
    i_mul_resize_im0_shift2_qint <= i_mul_resize_bs1_merged_bit_select_b & "00";
    i_mul_resize_im0_shift2_q <= i_mul_resize_im0_shift2_qint(19 downto 0);

    -- i_mul_resize_im0_sub_3(SUB,74)@2 + 1
    i_mul_resize_im0_sub_3_a <= STD_LOGIC_VECTOR("0" & i_mul_resize_im0_shift2_q);
    i_mul_resize_im0_sub_3_b <= STD_LOGIC_VECTOR("000" & i_mul_resize_bs1_merged_bit_select_b);
    i_mul_resize_im0_sub_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im0_sub_3_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im0_sub_3_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul_resize_im0_sub_3_a) - UNSIGNED(i_mul_resize_im0_sub_3_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im0_sub_3_q <= i_mul_resize_im0_sub_3_o(20 downto 0);

    -- i_mul_resize_im0_shift4(BITSHIFT,75)@3
    i_mul_resize_im0_shift4_qint <= i_mul_resize_im0_sub_3_q & "00000";
    i_mul_resize_im0_shift4_q <= i_mul_resize_im0_shift4_qint(25 downto 0);

    -- i_mul_resize_im0_sub_5(SUB,76)@3 + 1
    i_mul_resize_im0_sub_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 26 => i_mul_resize_im0_shift4_q(25)) & i_mul_resize_im0_shift4_q));
    i_mul_resize_im0_sub_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & i_mul_resize_im0_add_1_q));
    i_mul_resize_im0_sub_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul_resize_im0_sub_5_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (in_enable = "1") THEN
                i_mul_resize_im0_sub_5_o <= STD_LOGIC_VECTOR(SIGNED(i_mul_resize_im0_sub_5_a) - SIGNED(i_mul_resize_im0_sub_5_b));
            END IF;
        END IF;
    END PROCESS;
    i_mul_resize_im0_sub_5_q <= i_mul_resize_im0_sub_5_o(26 downto 0);

    -- i_mul_resize_im0_shift6(BITSHIFT,77)@4
    i_mul_resize_im0_shift6_qint <= i_mul_resize_im0_sub_5_q & "000";
    i_mul_resize_im0_shift6_q <= i_mul_resize_im0_shift6_qint(29 downto 0);

    -- i_mul_resize_result_add_0_0(ADD,69)@4
    i_mul_resize_result_add_0_0_a <= STD_LOGIC_VECTOR("0000000000000" & i_mul_resize_im0_shift6_q);
    i_mul_resize_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_mul_resize_align_7_q);
    i_mul_resize_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul_resize_result_add_0_0_a) + UNSIGNED(i_mul_resize_result_add_0_0_b));
    i_mul_resize_result_add_0_0_q <= i_mul_resize_result_add_0_0_o(42 downto 0);

    -- i_mul_resize_extender_x(BITJOIN,10)@4
    i_mul_resize_extender_x_q <= i_mul_resize_multconst_x_q & i_mul_resize_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_mul_resize_sel_x(BITSELECT,3)@4
    bgTrunc_i_mul_resize_sel_x_b <= i_mul_resize_extender_x_q(31 downto 0);

    -- i_mul_resize_vt_select_31(BITSELECT,39)@4
    i_mul_resize_vt_select_31_b <= bgTrunc_i_mul_resize_sel_x_b(31 downto 3);

    -- redist1_i_mul_resize_vt_select_31_b_1(DELAY,87)
    redist1_i_mul_resize_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul_resize_vt_select_31_b, xout => redist1_i_mul_resize_vt_select_31_b_1_q, ena => in_enable(0), clk => clock, aclr => resetn );

    -- i_mul_resize_vt_join(BITJOIN,38)@5
    i_mul_resize_vt_join_q <= redist1_i_mul_resize_vt_select_31_b_1_q & i_mul_resize_vt_const_2_q;

    -- i_unnamed_resize19(ADD,41)@5
    i_unnamed_resize19_a <= STD_LOGIC_VECTOR("0" & i_mul_resize_vt_join_q);
    i_unnamed_resize19_b <= STD_LOGIC_VECTOR("0" & c_i32_728_q);
    i_unnamed_resize19_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_resize19_a) + UNSIGNED(i_unnamed_resize19_b));
    i_unnamed_resize19_q <= i_unnamed_resize19_o(32 downto 0);

    -- bgTrunc_i_unnamed_resize19_sel_x(BITSELECT,4)@5
    bgTrunc_i_unnamed_resize19_sel_x_b <= i_unnamed_resize19_q(31 downto 0);

    -- i_unnamed_resize19_vt_select_31(BITSELECT,44)@5
    i_unnamed_resize19_vt_select_31_b <= bgTrunc_i_unnamed_resize19_sel_x_b(31 downto 3);

    -- i_unnamed_resize19_vt_join(BITJOIN,43)@5
    i_unnamed_resize19_vt_join_q <= i_unnamed_resize19_vt_select_31_b & i_mul_resize_vt_const_2_q;

    -- i_unnamed_resize20_sel_x(BITSELECT,12)@5
    i_unnamed_resize20_sel_x_b <= std_logic_vector(resize(unsigned(i_unnamed_resize19_vt_join_q(31 downto 0)), 33));

    -- i_unnamed_resize20_vt_select_31(BITSELECT,49)@5
    i_unnamed_resize20_vt_select_31_b <= i_unnamed_resize20_sel_x_b(31 downto 3);

    -- redist0_i_unnamed_resize20_vt_select_31_b_1(DELAY,86)
    redist0_i_unnamed_resize20_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_resize20_vt_select_31_b, xout => redist0_i_unnamed_resize20_vt_select_31_b_1_q, ena => in_enable(0), clk => clock, aclr => resetn );

    -- i_mul_resize_vt_const_2(CONSTANT,37)
    i_mul_resize_vt_const_2_q <= "000";

    -- i_unnamed_resize20_vt_join(BITJOIN,48)@6
    i_unnamed_resize20_vt_join_q <= GND_q & redist0_i_unnamed_resize20_vt_select_31_b_1_q & i_mul_resize_vt_const_2_q;

    -- i_unnamed_resize21(ADD,50)@6
    i_unnamed_resize21_a <= STD_LOGIC_VECTOR("0" & i_unnamed_resize20_vt_join_q);
    i_unnamed_resize21_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_resize21_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_resize21_a) + UNSIGNED(i_unnamed_resize21_b));
    i_unnamed_resize21_q <= i_unnamed_resize21_o(33 downto 0);

    -- bgTrunc_i_unnamed_resize21_sel_x(BITSELECT,5)@6
    bgTrunc_i_unnamed_resize21_sel_x_b <= i_unnamed_resize21_q(32 downto 0);

    -- i_unnamed_resize21_vt_select_32(BITSELECT,53)@6
    i_unnamed_resize21_vt_select_32_b <= bgTrunc_i_unnamed_resize21_sel_x_b(32 downto 3);

    -- i_unnamed_resize21_vt_const_2(CONSTANT,51)
    i_unnamed_resize21_vt_const_2_q <= "111";

    -- i_unnamed_resize21_vt_join(BITJOIN,52)@6
    i_unnamed_resize21_vt_join_q <= i_unnamed_resize21_vt_select_32_b & i_unnamed_resize21_vt_const_2_q;

    -- i_ffwd_src_unnamed_resize5_resize(BLACKBOX,35)@6
    -- out out_intel_reserved_ffwd_6_0@20000000
    thei_ffwd_src_unnamed_resize5_resize : i_ffwd_src_unnamed_resize5_resize28
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_6_0 => i_unnamed_resize21_vt_join_q,
        in_stall_in => dupName_0_enable_stall_connector_x_not_enable_q,
        in_valid_in => redist3_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_6_0 => i_ffwd_src_unnamed_resize5_resize_out_intel_reserved_ffwd_6_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_729(CONSTANT,23)
    c_i32_729_q <= "00000000000000000000001011011001";

    -- i_add1_resize(ADD,27)@5
    i_add1_resize_a <= STD_LOGIC_VECTOR("0" & i_mul_resize_vt_join_q);
    i_add1_resize_b <= STD_LOGIC_VECTOR("0" & c_i32_729_q);
    i_add1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add1_resize_a) + UNSIGNED(i_add1_resize_b));
    i_add1_resize_q <= i_add1_resize_o(32 downto 0);

    -- bgTrunc_i_add1_resize_sel_x(BITSELECT,2)@5
    bgTrunc_i_add1_resize_sel_x_b <= i_add1_resize_q(31 downto 0);

    -- i_add1_resize_vt_select_31(BITSELECT,30)@5
    i_add1_resize_vt_select_31_b <= bgTrunc_i_add1_resize_sel_x_b(31 downto 3);

    -- redist2_i_add1_resize_vt_select_31_b_1(DELAY,88)
    redist2_i_add1_resize_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 29, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add1_resize_vt_select_31_b, xout => redist2_i_add1_resize_vt_select_31_b_1_q, ena => in_enable(0), clk => clock, aclr => resetn );

    -- i_add1_resize_vt_const_2(CONSTANT,28)
    i_add1_resize_vt_const_2_q <= "001";

    -- i_add1_resize_vt_join(BITJOIN,29)@6
    i_add1_resize_vt_join_q <= redist2_i_add1_resize_vt_select_31_b_1_q & i_add1_resize_vt_const_2_q;

    -- c_i32_0gr(CONSTANT,21)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp123_resize(COMPARE,31)@6
    i_cmp123_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp123_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_add1_resize_vt_join_q(31)) & i_add1_resize_vt_join_q));
    i_cmp123_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp123_resize_a) - SIGNED(i_cmp123_resize_b));
    i_cmp123_resize_c(0) <= i_cmp123_resize_o(33);

    -- i_unnamed_resize18(LOGICAL,40)@6
    i_unnamed_resize18_q <= i_cmp123_resize_c xor VCC_q;

    -- i_ffwd_src_unnamed_resize4_resize(BLACKBOX,34)@6
    -- out out_intel_reserved_ffwd_5_0@20000000
    thei_ffwd_src_unnamed_resize4_resize : i_ffwd_src_unnamed_resize4_resize26
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_5_0 => i_unnamed_resize18_q,
        in_stall_in => dupName_0_enable_stall_connector_x_not_enable_q,
        in_valid_in => redist3_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_5_0 => i_ffwd_src_unnamed_resize4_resize_out_intel_reserved_ffwd_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_resize3_resize(BLACKBOX,33)@6
    -- out out_intel_reserved_ffwd_4_0@20000000
    thei_ffwd_src_unnamed_resize3_resize : i_ffwd_src_unnamed_resize3_resize24
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_4_0 => i_cmp123_resize_c,
        in_stall_in => dupName_0_enable_stall_connector_x_not_enable_q,
        in_valid_in => redist3_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_4_0 => i_ffwd_src_unnamed_resize3_resize_out_intel_reserved_ffwd_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_resize2_resize(BLACKBOX,32)@2
    -- out out_intel_reserved_ffwd_1_0@20000000
    thei_ffwd_src_unnamed_resize2_resize : i_ffwd_src_unnamed_resize2_resize22
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_1_0 => in_c1_eni1_2,
        in_stall_in => dupName_0_enable_stall_connector_x_not_enable_q,
        in_valid_in => in_i_valid,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_resize2_resize_out_intel_reserved_ffwd_1_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,14)@6
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_resize2_resize_out_intel_reserved_ffwd_1_0;
    out_intel_reserved_ffwd_4_0 <= i_ffwd_src_unnamed_resize3_resize_out_intel_reserved_ffwd_4_0;
    out_intel_reserved_ffwd_5_0 <= i_ffwd_src_unnamed_resize4_resize_out_intel_reserved_ffwd_5_0;
    out_intel_reserved_ffwd_6_0 <= i_ffwd_src_unnamed_resize5_resize_out_intel_reserved_ffwd_6_0;
    out_o_valid <= redist3_sync_in_aunroll_x_in_i_valid_4_q;
    out_unnamed_resize6_0 <= GND_q;

END normal;
