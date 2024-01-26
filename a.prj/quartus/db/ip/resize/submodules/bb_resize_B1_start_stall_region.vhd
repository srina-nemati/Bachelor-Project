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

-- VHDL created from bb_resize_B1_start_stall_region
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

entity bb_resize_B1_start_stall_region is
    port (
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- ufix33
        in_iord_bl_do_i_fifodata : in std_logic_vector(95 downto 0);  -- ufix96
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_resize_B1_start_stall_region;

architecture normal of bb_resize_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_iord_bl_do_unnamed_resize1_resize14 is
        port (
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(95 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_wt_entry_resize_c0_enter_resize is
        port (
            in_unnamed_resize0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_wt_entry_resize_c1_enter_resize is
        port (
            in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni1_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni1_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_throttle_pop_resize12 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize7_resize32 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize8_resize34 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_resize9_resize36 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component resize_B1_start_merge_reg is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;





    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_sub_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_256_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i1_throttle_pop_resize_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_resize_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_resize_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_resize_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize7_resize_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_resize7_resize_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize7_resize_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize8_resize_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_resize8_resize_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize8_resize_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize9_resize_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_resize9_resize_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_resize9_resize_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal resize_B1_start_merge_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal resize_B1_start_merge_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_q : STD_LOGIC_VECTOR (95 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_acl_pop_i1_throttle_pop_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_acl_pop_i1_throttle_pop_resize_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_resize_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_resize_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_resize_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize7_resize_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize7_resize_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize7_resize_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize8_resize_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize8_resize_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize8_resize_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize9_resize_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize9_resize_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_resize9_resize_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B1_start_merge_reg_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out_bitsignaltemp : std_logic;

begin


    -- bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x(BITJOIN,59)
    bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_q <= i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_2 & i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_1 & i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_0;

    -- bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x(BITSELECT,60)
    bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_q(31 downto 0));
    bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_q(63 downto 32));
    bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_q(95 downto 64));

    -- i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x(BLACKBOX,28)@2
    -- in in_i_stall@20000000
    -- out out_c1_exit_0@6
    -- out out_intel_reserved_ffwd_1_0@20000000
    -- out out_intel_reserved_ffwd_4_0@20000000
    -- out out_intel_reserved_ffwd_5_0@20000000
    -- out out_intel_reserved_ffwd_6_0@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@6
    thei_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x : i_sfc_c1_wt_entry_resize_c1_enter_resize
    PORT MAP (
        in_c1_eni1_0 => GND_q,
        in_c1_eni1_1 => bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_b,
        in_c1_eni1_2 => bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_c,
        in_c1_eni1_3 => bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_d,
        in_i_stall => SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V0,
        out_intel_reserved_ffwd_1_0 => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_4_0 => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_6_0,
        out_o_stall => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_resize7_resize(BLACKBOX,43)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_0_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_resize7_resize : i_ffwd_src_unnamed_resize7_resize32
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_0_0 => bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_resize7_resize_backStall,
        in_valid_in => SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V1,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_resize7_resize_out_intel_reserved_ffwd_0_0,
        out_stall_out => i_ffwd_src_unnamed_resize7_resize_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_resize7_resize_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_resize7_resize(STALLENABLE,82)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_resize7_resize_V0 <= SE_out_i_ffwd_src_unnamed_resize7_resize_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_resize7_resize_backStall <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_resize7_resize_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_resize7_resize_wireValid <= i_ffwd_src_unnamed_resize7_resize_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg(STALLFIFO,117)
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_resize7_resize_V0;
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall;
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_resize8_resize(BLACKBOX,44)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_2_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_resize8_resize : i_ffwd_src_unnamed_resize8_resize34
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_2_0 => bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_d,
        in_stall_in => SE_out_i_ffwd_src_unnamed_resize8_resize_backStall,
        in_valid_in => SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V2,
        out_intel_reserved_ffwd_2_0 => i_ffwd_src_unnamed_resize8_resize_out_intel_reserved_ffwd_2_0,
        out_stall_out => i_ffwd_src_unnamed_resize8_resize_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_resize8_resize_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_resize8_resize(STALLENABLE,84)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_resize8_resize_V0 <= SE_out_i_ffwd_src_unnamed_resize8_resize_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_resize8_resize_backStall <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_resize8_resize_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_resize8_resize_wireValid <= i_ffwd_src_unnamed_resize8_resize_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg(STALLFIFO,118)
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_resize8_resize_V0;
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall;
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_256(CONSTANT,33)
    c_i32_256_q <= "00000000000000000000000100000000";

    -- i_sub_resize(SUB,46)@2
    i_sub_resize_a <= STD_LOGIC_VECTOR("0" & c_i32_256_q);
    i_sub_resize_b <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_b);
    i_sub_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_resize_a) - UNSIGNED(i_sub_resize_b));
    i_sub_resize_q <= i_sub_resize_o(32 downto 0);

    -- bgTrunc_i_sub_resize_sel_x(BITSELECT,2)@2
    bgTrunc_i_sub_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub_resize_q(31 downto 0));

    -- i_ffwd_src_unnamed_resize9_resize(BLACKBOX,45)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_3_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_resize9_resize : i_ffwd_src_unnamed_resize9_resize36
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_3_0 => bgTrunc_i_sub_resize_sel_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_resize9_resize_backStall,
        in_valid_in => SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V3,
        out_intel_reserved_ffwd_3_0 => i_ffwd_src_unnamed_resize9_resize_out_intel_reserved_ffwd_3_0,
        out_stall_out => i_ffwd_src_unnamed_resize9_resize_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_resize9_resize_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_resize9_resize(STALLENABLE,86)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_resize9_resize_V0 <= SE_out_i_ffwd_src_unnamed_resize9_resize_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_resize9_resize_backStall <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_resize9_resize_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_resize9_resize_wireValid <= i_ffwd_src_unnamed_resize9_resize_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg(STALLFIFO,119)
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_resize9_resize_V0;
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall;
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1(STALLENABLE,109)
    -- Valid signal propagation
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_V0 <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and0 <= bubble_out_i_ffwd_src_unnamed_resize9_resize_1_reg_valid_out;
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and1 <= bubble_out_i_ffwd_src_unnamed_resize8_resize_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and0;
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and2 <= bubble_out_i_ffwd_src_unnamed_resize7_resize_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and1;
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and3 <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and2;
    SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_wireValid <= i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_valid and SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_and3;

    -- bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg(STALLFIFO,116)
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in <= SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_V0;
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_backStall;
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in(0);
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in(0);
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out(0) <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out(0) <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x(STALLENABLE,76)
    -- Valid signal propagation
    SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_V0 <= SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_backStall <= bubble_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_1_reg_stall_out or not (SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_wireValid <= i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_valid;

    -- i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x(BLACKBOX,27)@1
    -- in in_i_stall@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x : i_sfc_c0_wt_entry_resize_c0_enter_resize
    PORT MAP (
        in_unnamed_resize0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_backStall,
        in_i_valid => SE_out_resize_B1_start_merge_reg_V0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out => i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out => i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out,
        out_o_stall => i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,90)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= resize_B1_start_merge_reg_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- resize_B1_start_merge_reg(BLACKBOX,52)@0
    -- in in_stall_in@20000000
    -- out out_data_out@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theresize_B1_start_merge_reg : resize_B1_start_merge_reg
    PORT MAP (
        in_data_in => GND_q,
        in_stall_in => SE_out_resize_B1_start_merge_reg_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_stall_out => resize_B1_start_merge_reg_out_stall_out,
        out_valid_out => resize_B1_start_merge_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_resize_B1_start_merge_reg(STALLENABLE,89)
    SE_out_resize_B1_start_merge_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_resize_B1_start_merge_reg_fromReg0 <= (others => '0');
            SE_out_resize_B1_start_merge_reg_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_resize_B1_start_merge_reg_fromReg0 <= SE_out_resize_B1_start_merge_reg_toReg0;
            -- Succesor 1
            SE_out_resize_B1_start_merge_reg_fromReg1 <= SE_out_resize_B1_start_merge_reg_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_resize_B1_start_merge_reg_consumed0 <= (not (i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_o_stall) and SE_out_resize_B1_start_merge_reg_wireValid) or SE_out_resize_B1_start_merge_reg_fromReg0;
    SE_out_resize_B1_start_merge_reg_consumed1 <= (not (i_acl_pop_i1_throttle_pop_resize_out_stall_out) and SE_out_resize_B1_start_merge_reg_wireValid) or SE_out_resize_B1_start_merge_reg_fromReg1;
    -- Consuming
    SE_out_resize_B1_start_merge_reg_StallValid <= SE_out_resize_B1_start_merge_reg_backStall and SE_out_resize_B1_start_merge_reg_wireValid;
    SE_out_resize_B1_start_merge_reg_toReg0 <= SE_out_resize_B1_start_merge_reg_StallValid and SE_out_resize_B1_start_merge_reg_consumed0;
    SE_out_resize_B1_start_merge_reg_toReg1 <= SE_out_resize_B1_start_merge_reg_StallValid and SE_out_resize_B1_start_merge_reg_consumed1;
    -- Backward Stall generation
    SE_out_resize_B1_start_merge_reg_or0 <= SE_out_resize_B1_start_merge_reg_consumed0;
    SE_out_resize_B1_start_merge_reg_wireStall <= not (SE_out_resize_B1_start_merge_reg_consumed1 and SE_out_resize_B1_start_merge_reg_or0);
    SE_out_resize_B1_start_merge_reg_backStall <= SE_out_resize_B1_start_merge_reg_wireStall;
    -- Valid signal propagation
    SE_out_resize_B1_start_merge_reg_V0 <= SE_out_resize_B1_start_merge_reg_wireValid and not (SE_out_resize_B1_start_merge_reg_fromReg0);
    SE_out_resize_B1_start_merge_reg_V1 <= SE_out_resize_B1_start_merge_reg_wireValid and not (SE_out_resize_B1_start_merge_reg_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_resize_B1_start_merge_reg_wireValid <= resize_B1_start_merge_reg_out_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_pop_i1_throttle_pop_resize(BLACKBOX,42)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_1@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_throttle_pop_resize : i_acl_pop_i1_throttle_pop_resize12
    PORT MAP (
        in_data_in => GND_q,
        in_dir => GND_q,
        in_feedback_in_1 => in_feedback_in_1,
        in_feedback_valid_in_1 => in_feedback_valid_in_1,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_throttle_pop_resize_backStall,
        in_valid_in => SE_out_resize_B1_start_merge_reg_V1,
        out_data_out => i_acl_pop_i1_throttle_pop_resize_out_data_out,
        out_feedback_stall_out_1 => i_acl_pop_i1_throttle_pop_resize_out_feedback_stall_out_1,
        out_stall_out => i_acl_pop_i1_throttle_pop_resize_out_stall_out,
        out_valid_out => i_acl_pop_i1_throttle_pop_resize_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_pop_i1_throttle_pop_resize(STALLENABLE,80)
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_throttle_pop_resize_V0 <= SE_out_i_acl_pop_i1_throttle_pop_resize_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_throttle_pop_resize_backStall <= i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_stall or not (SE_out_i_acl_pop_i1_throttle_pop_resize_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_throttle_pop_resize_wireValid <= i_acl_pop_i1_throttle_pop_resize_out_valid_out;

    -- SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x(STALLENABLE,74)
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg0 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg1 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg2 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg3 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed0 <= (not (i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_o_stall) and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg0;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed1 <= (not (i_ffwd_src_unnamed_resize7_resize_out_stall_out) and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg1;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed2 <= (not (i_ffwd_src_unnamed_resize8_resize_out_stall_out) and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg2;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed3 <= (not (i_ffwd_src_unnamed_resize9_resize_out_stall_out) and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg3;
    -- Consuming
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_backStall and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg0 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg1 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed1;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg2 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed2;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_toReg3 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed3;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or0 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or1 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed1 and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or0;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or2 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed2 and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or1;
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireStall <= not (SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_consumed3 and SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_or2);
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_backStall <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V0 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg0);
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V1 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg1);
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V2 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg2);
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_V3 <= SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_fromReg3);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_wireValid <= i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_valid;

    -- bubble_join_i_acl_pop_i1_throttle_pop_resize(BITJOIN,64)
    bubble_join_i_acl_pop_i1_throttle_pop_resize_q <= i_acl_pop_i1_throttle_pop_resize_out_data_out;

    -- bubble_select_i_acl_pop_i1_throttle_pop_resize(BITSELECT,65)
    bubble_select_i_acl_pop_i1_throttle_pop_resize_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i1_throttle_pop_resize_q(0 downto 0));

    -- i_iord_bl_do_unnamed_resize1_resize_aunroll_x(BLACKBOX,26)@2
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_resize1_resize_aunroll_x : i_iord_bl_do_unnamed_resize1_resize14
    PORT MAP (
        in_i_dependence => bubble_select_i_acl_pop_i1_throttle_pop_resize_b,
        in_i_stall => SE_out_i_iord_bl_do_unnamed_resize1_resize_aunroll_x_backStall,
        in_i_valid => SE_out_i_acl_pop_i1_throttle_pop_resize_V0,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_o_data_0 => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_0,
        out_o_data_1 => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_1,
        out_o_data_2 => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_data_2,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_iord_bl_do_o_fifoready,
        out_o_stall => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_resize1_resize_aunroll_x_out_iord_bl_do_o_fifoready;

    -- dupName_0_regfree_osync_x(GPOUT,6)
    out_intel_reserved_ffwd_1_0 <= i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_1_0;

    -- dupName_0_sync_out_x(GPOUT,8)@6
    out_valid_out <= SE_out_bubble_out_i_ffwd_src_unnamed_resize9_resize_1_V0;

    -- dupName_1_regfree_osync_x(GPOUT,11)
    out_intel_reserved_ffwd_2_0 <= i_ffwd_src_unnamed_resize8_resize_out_intel_reserved_ffwd_2_0;

    -- dupName_2_regfree_osync_x(GPOUT,14)
    out_intel_reserved_ffwd_3_0 <= i_ffwd_src_unnamed_resize9_resize_out_intel_reserved_ffwd_3_0;

    -- dupName_3_regfree_osync_x(GPOUT,17)
    out_intel_reserved_ffwd_4_0 <= i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_4_0;

    -- dupName_4_regfree_osync_x(GPOUT,20)
    out_intel_reserved_ffwd_5_0 <= i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_5_0;

    -- dupName_5_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_6_0 <= i_sfc_c1_wt_entry_resize_c1_enter_resize_aunroll_x_out_intel_reserved_ffwd_6_0;

    -- ext_sig_sync_out(GPOUT,38)
    out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out <= i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out <= i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going783_resize_exiting_stall_out;

    -- feedback_stall_out_1_sync(GPOUT,40)
    out_feedback_stall_out_1 <= i_acl_pop_i1_throttle_pop_resize_out_feedback_stall_out_1;

    -- pipeline_valid_out_sync(GPOUT,50)
    out_pipeline_valid_out <= i_sfc_c0_wt_entry_resize_c0_enter_resize_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,51)
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_resize7_resize_out_intel_reserved_ffwd_0_0;

    -- sync_out(GPOUT,56)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
