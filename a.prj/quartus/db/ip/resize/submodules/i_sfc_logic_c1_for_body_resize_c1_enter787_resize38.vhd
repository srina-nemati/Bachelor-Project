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

-- VHDL created from i_sfc_logic_c1_for_body_resize_c1_enter787_resize38
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

entity i_sfc_logic_c1_for_body_resize_c1_enter787_resize38 is
    port (
        in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- ufix33
        out_c1_exi8_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi8_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi8_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi8_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi8_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi8_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi8_6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exi8_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exi8_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c1_for_body_resize_c1_enter787_resize38;

architecture normal of i_sfc_logic_c1_for_body_resize_c1_enter787_resize38 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_resize44 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_accumcolumn_0126_pop22_resize82 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_22 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_accumrow_0125_pop23_resize61 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_23 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_col_0124_pop24_resize70 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_24 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_i_0129_pop19_resize94 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_19 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_row_0127_pop21_resize65 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_21 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv_pop10_resize57 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_10 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop26_resize40 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_26 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop25_resize46 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_25 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_write_y_0128_pop20_resize84 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_20 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_resize53 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_resize117 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_accumcolumn_0126_push22_resize90 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_22 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_accumrow_0125_push23_resize78 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_23 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_col_0124_push24_resize104 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_24 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_i_0129_push19_resize109 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_19 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_row_0127_push21_resize107 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_21 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv_push10_resize112 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push26_resize120 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_26 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push25_resize49 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_25 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_write_y_0128_push20_resize86 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_20 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp123767_resize101 is
        port (
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp123768_resize73 is
        port (
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cols135763_resize68 is
        port (
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cols135764_resize98 is
        port (
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_ratio133760_resize76 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_ratio133761_resize88 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_rows134762_resize63 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_sub765_resize80 is
        port (
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_sub766_resize59 is
        port (
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_resize10_resize55 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_resize11_resize114 is
        port (
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_5_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add161_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add22_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add28_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_cond167_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_resize_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_inc169_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul56_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub25_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub31_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub40_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add164_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cleanups_shl_resize_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_mul56_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul56_resize_multconst_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_next_cleanups_resize_resize119_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_write_y_1_resize_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_255_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_256_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_727_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_728_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_accumrow_0125_replace_phi_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_accumrow_0125_replace_phi_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_751_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_751_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_752_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_752_resize_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_feedback_stall_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_accumrow_0125_pop23_resize_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_accumrow_0125_pop23_resize_out_feedback_stall_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_col_0124_pop24_resize_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_col_0124_pop24_resize_out_feedback_stall_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_i_0129_pop19_resize_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_0129_pop19_resize_out_feedback_stall_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_row_0127_pop21_resize_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_row_0127_pop21_resize_out_feedback_stall_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_feedback_stall_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop26_resize_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop26_resize_out_feedback_stall_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop25_resize_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop25_resize_out_feedback_stall_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_write_y_0128_pop20_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_write_y_0128_pop20_resize_out_feedback_stall_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_resize_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_resize_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_resize_out_feedback_out_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_resize_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_out_22 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_valid_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_out_23 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_valid_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_col_0124_push24_resize_out_feedback_out_24 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_col_0124_push24_resize_out_feedback_valid_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_0129_push19_resize_out_feedback_out_19 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_0129_push19_resize_out_feedback_valid_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_row_0127_push21_resize_out_feedback_out_21 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_row_0127_push21_resize_out_feedback_valid_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_out_10 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push26_resize_out_feedback_out_26 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push26_resize_out_feedback_valid_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push25_resize_out_feedback_out_25 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push25_resize_out_feedback_valid_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_write_y_0128_push20_resize_out_feedback_out_20 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_write_y_0128_push20_resize_out_feedback_valid_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add161_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add161_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add161_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add161_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add164_resize_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_add164_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add164_resize_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add22_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add22_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add22_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add22_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_and54_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and54_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and55_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and55_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_cleanups_shl_resize_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_resize_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_resize_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp123_phi_decision755_xor756_or_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp123_phi_decision755_xor_or_demorgan_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp123_phi_decision755_xor_or_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp23_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp23_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp29_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp29_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp29_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp29_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp2_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp36_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp36_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp36_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp36_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp38_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp38_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp38_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp38_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp3_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp3_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp3_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp3_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp41_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp41_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp41_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp41_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond167_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond167_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond167_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond167_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_cmp123767_resize_out_dest_data_out_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp123768_resize_out_dest_data_out_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cols135763_resize_out_dest_data_out_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_cols135764_resize_out_dest_data_out_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_ratio133760_resize_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_ratio133761_resize_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_rows134762_resize_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_sub765_resize_out_dest_data_out_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_sub766_resize_out_dest_data_out_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_resize10_resize_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_resize11_resize_out_dest_data_out_5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor770_or_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor_or_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next_resize_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_resize_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_resize_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_resize_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_replace_phi_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_replace_phi_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc169_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc169_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc169_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc169_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_last_initeration_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul56_resize_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul56_resize_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul56_resize_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul56_resize_pr : UNSIGNED (15 downto 0);
    signal i_mul56_resize_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul56_resize_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul56_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul56_resize_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_next_initerations_resize_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_resize_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_0_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_0_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_resize_1_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_1_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_resize_5_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_6_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_7_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_7_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_8_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_8_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_9_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_selcond_resize_2_demorgan_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub25_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub25_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_add28_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub31_add28_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub31_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub31_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub40_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub40_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub40_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub40_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tobool34_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool34_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize116_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize42_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_resize42_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_resize42_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize51_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_resize51_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize92_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_resize92_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_resize92_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_resize92_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_write_y_1_resize_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_write_y_1_resize_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid239_i_next_cleanups_resize_resize119_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid246_i_next_initerations_resize_resize48_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid248_i_next_initerations_resize_resize48_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal x0_uid264_i_cmp160_resize_in : STD_LOGIC_VECTOR (15 downto 0);
    signal x0_uid264_i_cmp160_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal y0_uid265_i_cmp160_resize_in : STD_LOGIC_VECTOR (15 downto 0);
    signal y0_uid265_i_cmp160_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal eq0_uid266_i_cmp160_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal x1_uid267_i_cmp160_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal y1_uid268_i_cmp160_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal eq1_uid269_i_cmp160_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal andEq_uid270_i_cmp160_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal x0_uid271_i_cmp162_resize_in : STD_LOGIC_VECTOR (15 downto 0);
    signal x0_uid271_i_cmp162_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal y0_uid272_i_cmp162_resize_in : STD_LOGIC_VECTOR (15 downto 0);
    signal y0_uid272_i_cmp162_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal eq0_uid273_i_cmp162_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal eq0_uid273_i_cmp162_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal x1_uid274_i_cmp162_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal y1_uid275_i_cmp162_resize_b : STD_LOGIC_VECTOR (15 downto 0);
    signal eq1_uid276_i_cmp162_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal eq1_uid276_i_cmp162_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal andEq_uid277_i_cmp162_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal eq0_uid280_i_cmp19_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal eq0_uid280_i_cmp19_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal eq1_uid283_i_cmp19_resize_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal eq1_uid283_i_cmp19_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal andEq_uid284_i_cmp19_resize_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize51_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_resize51_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_exitcond_resize_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_x1_uid267_i_cmp160_resize_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_x0_uid264_i_cmp160_resize_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist2_i_xor_resize_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_unnamed_resize92_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_unnamed_resize116_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sub31_add28_resize_q_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_reduction_resize_7_resize_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_reduction_resize_1_resize_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_reduction_resize_1_resize_q_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_first_cleanup_resize_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_cmp3_resize_c_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_cmp38_resize_c_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_cmp29_resize_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_add164_resize_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_i_acl_pipeline_keep_going_resize_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_acl_pipeline_keep_going_resize_out_data_out_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_acl_pipeline_keep_going_resize_out_data_out_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_sync_in_aunroll_x_in_c1_eni2_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_sync_in_aunroll_x_in_c1_eni2_1_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_bgTrunc_i_sub40_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist29_bgTrunc_i_add28_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist24_sync_in_aunroll_x_in_i_valid_1(DELAY,313)
    redist24_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist24_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist25_sync_in_aunroll_x_in_i_valid_2(DELAY,314)
    redist25_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist24_sync_in_aunroll_x_in_i_valid_1_q, xout => redist25_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist26_sync_in_aunroll_x_in_i_valid_3(DELAY,315)
    redist26_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist25_sync_in_aunroll_x_in_i_valid_2_q, xout => redist26_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist27_sync_in_aunroll_x_in_i_valid_5(DELAY,316)
    redist27_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist26_sync_in_aunroll_x_in_i_valid_3_q, xout => redist27_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- c_i4_0gr(CONSTANT,81)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_resize_vt_const_3(CONSTANT,128)
    i_cleanups_shl_resize_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,82)
    c_i4_1gr_q <= "0001";

    -- i_ffwd_dst_unnamed_resize11_resize(BLACKBOX,157)@4
    thei_ffwd_dst_unnamed_resize11_resize : i_ffwd_dst_unnamed_resize11_resize114
    PORT MAP (
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_5_0 => i_ffwd_dst_unnamed_resize11_resize_out_dest_data_out_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_resize10_resize(BLACKBOX,156)@4
    thei_ffwd_dst_unnamed_resize10_resize : i_ffwd_dst_unnamed_resize10_resize55
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_6_0 => i_ffwd_dst_unnamed_resize10_resize_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,79)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next_resize(ADD,161)@4
    i_fpgaindvars_iv_next_resize_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv_replace_phi_resize_q);
    i_fpgaindvars_iv_next_resize_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_resize_a) + UNSIGNED(i_fpgaindvars_iv_next_resize_b));
    i_fpgaindvars_iv_next_resize_q <= i_fpgaindvars_iv_next_resize_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_resize_sel_x(BITSELECT,6)@4
    bgTrunc_i_fpgaindvars_iv_next_resize_sel_x_b <= i_fpgaindvars_iv_next_resize_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv_push10_resize(BLACKBOX,108)@4
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i33_fpgaindvars_iv_push10_resize : i_acl_push_i33_fpgaindvars_iv_push10_resize112
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_resize_sel_x_b,
        in_feedback_stall_in_10 => i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_feedback_stall_out_10,
        in_keep_going => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_10 => i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,80)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv_pop10_resize(BLACKBOX,97)@4
    -- out out_feedback_stall_out_10@20000000
    thei_acl_pop_i33_fpgaindvars_iv_pop10_resize : i_acl_pop_i33_fpgaindvars_iv_pop10_resize57
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => redist23_sync_in_aunroll_x_in_c1_eni2_1_3_q,
        in_feedback_in_10 => i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_out_10,
        in_feedback_valid_in_10 => i_acl_push_i33_fpgaindvars_iv_push10_resize_out_feedback_valid_out_10,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_data_out,
        out_feedback_stall_out_10 => i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_feedback_stall_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_replace_phi_resize(MUX,162)@4
    i_fpgaindvars_iv_replace_phi_resize_s <= redist23_sync_in_aunroll_x_in_c1_eni2_1_3_q;
    i_fpgaindvars_iv_replace_phi_resize_combproc: PROCESS (i_fpgaindvars_iv_replace_phi_resize_s, i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_data_out, i_ffwd_dst_unnamed_resize10_resize_out_dest_data_out_6_0)
    BEGIN
        CASE (i_fpgaindvars_iv_replace_phi_resize_s) IS
            WHEN "0" => i_fpgaindvars_iv_replace_phi_resize_q <= i_acl_pop_i33_fpgaindvars_iv_pop10_resize_out_data_out;
            WHEN "1" => i_fpgaindvars_iv_replace_phi_resize_q <= i_ffwd_dst_unnamed_resize10_resize_out_dest_data_out_6_0;
            WHEN OTHERS => i_fpgaindvars_iv_replace_phi_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond_resize_cmp_sign(LOGICAL,287)@4
    i_exitcond_resize_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv_replace_phi_resize_q(32 downto 32));

    -- i_unnamed_resize116(LOGICAL,189)@4
    i_unnamed_resize116_q <= i_exitcond_resize_cmp_sign_q or i_ffwd_dst_unnamed_resize11_resize_out_dest_data_out_5_0;

    -- i_notexit_resize(LOGICAL,173)@4
    i_notexit_resize_q <= i_unnamed_resize116_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_resize(BLACKBOX,102)@4
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_resize : i_acl_push_i1_notexitcond_resize117
    PORT MAP (
        in_data_in => i_notexit_resize_q,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_resize_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_resize_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_resize_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_resize_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid246_i_next_initerations_resize_resize48_shift_x(BITSELECT,245)@1
    rightShiftStage0Idx1Rng1_uid246_i_next_initerations_resize_resize48_shift_x_b <= i_acl_pop_i4_initerations_pop25_resize_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid248_i_next_initerations_resize_resize48_shift_x(BITJOIN,247)@1
    rightShiftStage0Idx1_uid248_i_next_initerations_resize_resize48_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid246_i_next_initerations_resize_resize48_shift_x_b;

    -- i_acl_push_i4_initerations_push25_resize(BLACKBOX,110)@1
    -- out out_feedback_out_25@20000000
    -- out out_feedback_valid_out_25@20000000
    thei_acl_push_i4_initerations_push25_resize : i_acl_push_i4_initerations_push25_resize49
    PORT MAP (
        in_data_in => i_next_initerations_resize_vt_join_q,
        in_feedback_stall_in_25 => i_acl_pop_i4_initerations_pop25_resize_out_feedback_stall_out_25,
        in_keep_going => i_acl_pipeline_keep_going_resize_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_25 => i_acl_push_i4_initerations_push25_resize_out_feedback_out_25,
        out_feedback_valid_out_25 => i_acl_push_i4_initerations_push25_resize_out_feedback_valid_out_25,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_initerations_pop25_resize(BLACKBOX,99)@1
    -- out out_feedback_stall_out_25@20000000
    thei_acl_pop_i4_initerations_pop25_resize : i_acl_pop_i4_initerations_pop25_resize46
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_25 => i_acl_push_i4_initerations_push25_resize_out_feedback_out_25,
        in_feedback_valid_in_25 => i_acl_push_i4_initerations_push25_resize_out_feedback_valid_out_25,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_initerations_pop25_resize_out_data_out,
        out_feedback_stall_out_25 => i_acl_pop_i4_initerations_pop25_resize_out_feedback_stall_out_25,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x(MUX,249)@1
    rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_s <= VCC_q;
    rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_combproc: PROCESS (rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_s, i_acl_pop_i4_initerations_pop25_resize_out_data_out, rightShiftStage0Idx1_uid248_i_next_initerations_resize_resize48_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_q <= i_acl_pop_i4_initerations_pop25_resize_out_data_out;
            WHEN "1" => rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_q <= rightShiftStage0Idx1_uid248_i_next_initerations_resize_resize48_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_resize_vt_select_2(BITSELECT,172)@1
    i_next_initerations_resize_vt_select_2_b <= rightShiftStage0_uid250_i_next_initerations_resize_resize48_shift_x_q(2 downto 0);

    -- i_next_initerations_resize_vt_join(BITJOIN,171)@1
    i_next_initerations_resize_vt_join_q <= GND_q & i_next_initerations_resize_vt_select_2_b;

    -- i_unnamed_resize51_BitSelect_for_a(BITSELECT,284)@1
    i_unnamed_resize51_BitSelect_for_a_b <= i_next_initerations_resize_vt_join_q(0 downto 0);

    -- i_unnamed_resize51_join(BITJOIN,285)@1
    i_unnamed_resize51_join_q <= GND_q & GND_q & GND_q & i_unnamed_resize51_BitSelect_for_a_b;

    -- i_unnamed_resize51_vt_select_0(BITSELECT,197)@1
    i_unnamed_resize51_vt_select_0_b <= i_unnamed_resize51_join_q(0 downto 0);

    -- i_unnamed_resize51_vt_join(BITJOIN,196)@1
    i_unnamed_resize51_vt_join_q <= i_cleanups_shl_resize_vt_const_3_q & i_unnamed_resize51_vt_select_0_b;

    -- i_last_initeration_resize(LOGICAL,164)@1
    i_last_initeration_resize_q <= "1" WHEN i_unnamed_resize51_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_resize(BLACKBOX,101)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_resize : i_acl_push_i1_lastiniteration_resize53
    PORT MAP (
        in_data_in => i_last_initeration_resize_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_resize_out_initeration_stall_out,
        in_keep_going => i_acl_pipeline_keep_going_resize_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_resize_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_resize_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_resize(BLACKBOX,91)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_resize : i_acl_pipeline_keep_going_resize44
    PORT MAP (
        in_data_in => in_c1_eni2_2,
        in_initeration_in => i_acl_push_i1_lastiniteration_resize_out_feedback_out_2,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_resize_out_feedback_valid_out_2,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_resize_out_feedback_out_3,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_resize_out_feedback_valid_out_3,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_resize_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_resize_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_resize_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_resize_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_resize_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_resize_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist17_i_acl_pipeline_keep_going_resize_out_data_out_1(DELAY,306)
    redist17_i_acl_pipeline_keep_going_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_resize_out_data_out, xout => redist17_i_acl_pipeline_keep_going_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist18_i_acl_pipeline_keep_going_resize_out_data_out_2(DELAY,307)
    redist18_i_acl_pipeline_keep_going_resize_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_i_acl_pipeline_keep_going_resize_out_data_out_1_q, xout => redist18_i_acl_pipeline_keep_going_resize_out_data_out_2_q, clk => clock, aclr => resetn );

    -- redist19_i_acl_pipeline_keep_going_resize_out_data_out_3(DELAY,308)
    redist19_i_acl_pipeline_keep_going_resize_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_i_acl_pipeline_keep_going_resize_out_data_out_2_q, xout => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x(BITSELECT,237)@4
    leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_in <= i_acl_pop_i4_cleanups_pop26_resize_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_b <= leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid239_i_next_cleanups_resize_resize119_shift_x(BITJOIN,238)@4
    leftShiftStage0Idx1_uid239_i_next_cleanups_resize_resize119_shift_x_q <= leftShiftStage0Idx1Rng1_uid238_i_next_cleanups_resize_resize119_shift_x_b & GND_q;

    -- i_xor_resize(LOGICAL,206)@4
    i_xor_resize_q <= i_first_cleanup_resize_q xor VCC_q;

    -- i_or_resize(LOGICAL,175)@4
    i_or_resize_q <= i_unnamed_resize116_q or i_xor_resize_q;

    -- i_cleanups_shl_resize_sel_x(BITSELECT,45)@4
    i_cleanups_shl_resize_sel_x_b <= std_logic_vector(resize(unsigned(i_or_resize_q(0 downto 0)), 4));

    -- i_cleanups_shl_resize_vt_select_0(BITSELECT,130)@4
    i_cleanups_shl_resize_vt_select_0_b <= i_cleanups_shl_resize_sel_x_b(0 downto 0);

    -- i_cleanups_shl_resize_vt_join(BITJOIN,129)@4
    i_cleanups_shl_resize_vt_join_q <= i_cleanups_shl_resize_vt_const_3_q & i_cleanups_shl_resize_vt_select_0_b;

    -- i_next_cleanups_resize_resize119_shift_narrow_x(BITSELECT,51)@4
    i_next_cleanups_resize_resize119_shift_narrow_x_b <= i_cleanups_shl_resize_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x(BITSELECT,239)@4
    leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_in <= i_next_cleanups_resize_resize119_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_b <= leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x(MUX,240)@4
    leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_s <= leftShiftStageSel0Dto0_uid240_i_next_cleanups_resize_resize119_shift_x_b;
    leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_combproc: PROCESS (leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_s, i_acl_pop_i4_cleanups_pop26_resize_out_data_out, leftShiftStage0Idx1_uid239_i_next_cleanups_resize_resize119_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_q <= i_acl_pop_i4_cleanups_pop26_resize_out_data_out;
            WHEN "1" => leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_q <= leftShiftStage0Idx1_uid239_i_next_cleanups_resize_resize119_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push26_resize(BLACKBOX,109)@4
    -- out out_feedback_out_26@20000000
    -- out out_feedback_valid_out_26@20000000
    thei_acl_push_i4_cleanups_push26_resize : i_acl_push_i4_cleanups_push26_resize120
    PORT MAP (
        in_data_in => leftShiftStage0_uid241_i_next_cleanups_resize_resize119_shift_x_q,
        in_feedback_stall_in_26 => i_acl_pop_i4_cleanups_pop26_resize_out_feedback_stall_out_26,
        in_keep_going => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_26 => i_acl_push_i4_cleanups_push26_resize_out_feedback_out_26,
        out_feedback_valid_out_26 => i_acl_push_i4_cleanups_push26_resize_out_feedback_valid_out_26,
        clock => clock,
        resetn => resetn
    );

    -- redist21_sync_in_aunroll_x_in_c1_eni2_1_1(DELAY,310)
    redist21_sync_in_aunroll_x_in_c1_eni2_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c1_eni2_1, xout => redist21_sync_in_aunroll_x_in_c1_eni2_1_1_q, clk => clock, aclr => resetn );

    -- redist22_sync_in_aunroll_x_in_c1_eni2_1_2(DELAY,311)
    redist22_sync_in_aunroll_x_in_c1_eni2_1_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist21_sync_in_aunroll_x_in_c1_eni2_1_1_q, xout => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q, clk => clock, aclr => resetn );

    -- redist23_sync_in_aunroll_x_in_c1_eni2_1_3(DELAY,312)
    redist23_sync_in_aunroll_x_in_c1_eni2_1_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q, xout => redist23_sync_in_aunroll_x_in_c1_eni2_1_3_q, clk => clock, aclr => resetn );

    -- c_i4_7gr(CONSTANT,83)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop26_resize(BLACKBOX,98)@4
    -- out out_feedback_stall_out_26@20000000
    thei_acl_pop_i4_cleanups_pop26_resize : i_acl_pop_i4_cleanups_pop26_resize40
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist23_sync_in_aunroll_x_in_c1_eni2_1_3_q,
        in_feedback_in_26 => i_acl_push_i4_cleanups_push26_resize_out_feedback_out_26,
        in_feedback_valid_in_26 => i_acl_push_i4_cleanups_push26_resize_out_feedback_valid_out_26,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i4_cleanups_pop26_resize_out_data_out,
        out_feedback_stall_out_26 => i_acl_pop_i4_cleanups_pop26_resize_out_feedback_stall_out_26,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_resize42(LOGICAL,190)@4
    i_unnamed_resize42_q <= i_acl_pop_i4_cleanups_pop26_resize_out_data_out and c_i4_1gr_q;

    -- i_unnamed_resize42_vt_select_0(BITSELECT,193)@4
    i_unnamed_resize42_vt_select_0_b <= i_unnamed_resize42_q(0 downto 0);

    -- i_unnamed_resize42_vt_join(BITJOIN,192)@4
    i_unnamed_resize42_vt_join_q <= i_cleanups_shl_resize_vt_const_3_q & i_unnamed_resize42_vt_select_0_b;

    -- i_first_cleanup_resize(LOGICAL,158)@4
    i_first_cleanup_resize_q <= "1" WHEN i_unnamed_resize42_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- redist9_i_first_cleanup_resize_q_1(DELAY,298)
    redist9_i_first_cleanup_resize_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_first_cleanup_resize_q, xout => redist9_i_first_cleanup_resize_q_1_q, clk => clock, aclr => resetn );

    -- redist4_i_unnamed_resize116_q_1(DELAY,293)
    redist4_i_unnamed_resize116_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_resize116_q, xout => redist4_i_unnamed_resize116_q_1_q, clk => clock, aclr => resetn );

    -- i_masked_resize(LOGICAL,165)@5 + 1
    i_masked_resize_qi <= redist4_i_unnamed_resize116_q_1_q and redist9_i_first_cleanup_resize_q_1_q;
    i_masked_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_masked_resize_qi, xout => i_masked_resize_q, clk => clock, aclr => resetn );

    -- redist2_i_xor_resize_q_2(DELAY,291)
    redist2_i_xor_resize_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_xor_resize_q, xout => redist2_i_xor_resize_q_2_q, clk => clock, aclr => resetn );

    -- dupName_0_c_i32_1gr_x(CONSTANT,13)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- i_add161_resize(ADD,112)@1
    i_add161_resize_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_col_0124_pop24_resize_out_data_out);
    i_add161_resize_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_add161_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add161_resize_a) + UNSIGNED(i_add161_resize_b));
    i_add161_resize_q <= i_add161_resize_o(32 downto 0);

    -- bgTrunc_i_add161_resize_sel_x(BITSELECT,2)@1
    bgTrunc_i_add161_resize_sel_x_b <= i_add161_resize_q(31 downto 0);

    -- c_i32_727(CONSTANT,75)
    c_i32_727_q <= "00000000000000000000001011010111";

    -- y1_uid268_i_cmp160_resize(BITSELECT,267)@1
    y1_uid268_i_cmp160_resize_b <= STD_LOGIC_VECTOR(c_i32_727_q(31 downto 16));

    -- x1_uid267_i_cmp160_resize(BITSELECT,266)@1
    x1_uid267_i_cmp160_resize_b <= STD_LOGIC_VECTOR(i_acl_pop_i32_col_0124_pop24_resize_out_data_out(31 downto 16));

    -- eq1_uid269_i_cmp160_resize(LOGICAL,268)@1
    eq1_uid269_i_cmp160_resize_q <= "1" WHEN x1_uid267_i_cmp160_resize_b = y1_uid268_i_cmp160_resize_b ELSE "0";

    -- y0_uid265_i_cmp160_resize(BITSELECT,264)@1
    y0_uid265_i_cmp160_resize_in <= c_i32_727_q(15 downto 0);
    y0_uid265_i_cmp160_resize_b <= y0_uid265_i_cmp160_resize_in(15 downto 0);

    -- x0_uid264_i_cmp160_resize(BITSELECT,263)@1
    x0_uid264_i_cmp160_resize_in <= i_acl_pop_i32_col_0124_pop24_resize_out_data_out(15 downto 0);
    x0_uid264_i_cmp160_resize_b <= x0_uid264_i_cmp160_resize_in(15 downto 0);

    -- eq0_uid266_i_cmp160_resize(LOGICAL,265)@1
    eq0_uid266_i_cmp160_resize_q <= "1" WHEN x0_uid264_i_cmp160_resize_b = y0_uid265_i_cmp160_resize_b ELSE "0";

    -- andEq_uid270_i_cmp160_resize(LOGICAL,269)@1
    andEq_uid270_i_cmp160_resize_q <= eq0_uid266_i_cmp160_resize_q and eq1_uid269_i_cmp160_resize_q;

    -- i_cond_resize(MUX,145)@1 + 1
    i_cond_resize_s <= andEq_uid270_i_cmp160_resize_q;
    i_cond_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cond_resize_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_cond_resize_s) IS
                WHEN "0" => i_cond_resize_q <= bgTrunc_i_add161_resize_sel_x_b;
                WHEN "1" => i_cond_resize_q <= c_i32_0gr_q;
                WHEN OTHERS => i_cond_resize_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_acl_push_i32_col_0124_push24_resize(BLACKBOX,105)@2
    -- out out_feedback_out_24@20000000
    -- out out_feedback_valid_out_24@20000000
    thei_acl_push_i32_col_0124_push24_resize : i_acl_push_i32_col_0124_push24_resize104
    PORT MAP (
        in_data_in => i_cond_resize_q,
        in_feedback_stall_in_24 => i_acl_pop_i32_col_0124_pop24_resize_out_feedback_stall_out_24,
        in_keep_going => redist17_i_acl_pipeline_keep_going_resize_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist24_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_24 => i_acl_push_i32_col_0124_push24_resize_out_feedback_out_24,
        out_feedback_valid_out_24 => i_acl_push_i32_col_0124_push24_resize_out_feedback_valid_out_24,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_col_0124_pop24_resize(BLACKBOX,94)@1
    -- out out_feedback_stall_out_24@20000000
    thei_acl_pop_i32_col_0124_pop24_resize : i_acl_pop_i32_col_0124_pop24_resize70
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c1_eni2_1,
        in_feedback_in_24 => i_acl_push_i32_col_0124_push24_resize_out_feedback_out_24,
        in_feedback_valid_in_24 => i_acl_push_i32_col_0124_push24_resize_out_feedback_valid_out_24,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_col_0124_pop24_resize_out_data_out,
        out_feedback_stall_out_24 => i_acl_pop_i32_col_0124_pop24_resize_out_feedback_stall_out_24,
        clock => clock,
        resetn => resetn
    );

    -- redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1(DELAY,305)
    redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_col_0124_pop24_resize_out_data_out, xout => redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,71)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp38_resize(COMPARE,141)@2 + 1
    i_cmp38_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp38_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q(31)) & redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q));
    i_cmp38_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp38_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp38_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp38_resize_a) - SIGNED(i_cmp38_resize_b));
        END IF;
    END PROCESS;
    i_cmp38_resize_c(0) <= i_cmp38_resize_o(33);

    -- redist11_i_cmp38_resize_c_3(DELAY,300)
    redist11_i_cmp38_resize_c_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp38_resize_c, xout => redist11_i_cmp38_resize_c_3_q, clk => clock, aclr => resetn );

    -- i_inc169_resize(ADD,163)@4
    i_inc169_resize_a <= STD_LOGIC_VECTOR("0" & redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1_q);
    i_inc169_resize_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_inc169_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc169_resize_a) + UNSIGNED(i_inc169_resize_b));
    i_inc169_resize_q <= i_inc169_resize_o(32 downto 0);

    -- bgTrunc_i_inc169_resize_sel_x(BITSELECT,7)@4
    bgTrunc_i_inc169_resize_sel_x_b <= i_inc169_resize_q(31 downto 0);

    -- i_acl_push_i32_i_0129_push19_resize(BLACKBOX,106)@4
    -- out out_feedback_out_19@20000000
    -- out out_feedback_valid_out_19@20000000
    thei_acl_push_i32_i_0129_push19_resize : i_acl_push_i32_i_0129_push19_resize109
    PORT MAP (
        in_data_in => bgTrunc_i_inc169_resize_sel_x_b,
        in_feedback_stall_in_19 => i_acl_pop_i32_i_0129_pop19_resize_out_feedback_stall_out_19,
        in_keep_going => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_19 => i_acl_push_i32_i_0129_push19_resize_out_feedback_out_19,
        out_feedback_valid_out_19 => i_acl_push_i32_i_0129_push19_resize_out_feedback_valid_out_19,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_i_0129_pop19_resize(BLACKBOX,95)@3
    -- out out_feedback_stall_out_19@20000000
    thei_acl_pop_i32_i_0129_pop19_resize : i_acl_pop_i32_i_0129_pop19_resize94
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q,
        in_feedback_in_19 => i_acl_push_i32_i_0129_push19_resize_out_feedback_out_19,
        in_feedback_valid_in_19 => i_acl_push_i32_i_0129_push19_resize_out_feedback_valid_out_19,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i32_i_0129_pop19_resize_out_data_out,
        out_feedback_stall_out_19 => i_acl_pop_i32_i_0129_pop19_resize_out_feedback_stall_out_19,
        clock => clock,
        resetn => resetn
    );

    -- redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1(DELAY,304)
    redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_i_0129_pop19_resize_out_data_out, xout => redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- c_i32_728(CONSTANT,76)
    c_i32_728_q <= "00000000000000000000001011011000";

    -- i_cmp36_resize(COMPARE,140)@4 + 1
    i_cmp36_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_728_q(31)) & c_i32_728_q));
    i_cmp36_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1_q(31)) & redist15_i_acl_pop_i32_i_0129_pop19_resize_out_data_out_1_q));
    i_cmp36_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp36_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp36_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp36_resize_a) - SIGNED(i_cmp36_resize_b));
        END IF;
    END PROCESS;
    i_cmp36_resize_c(0) <= i_cmp36_resize_o(33);

    -- i_reduction_resize_6_resize(LOGICAL,179)@5
    i_reduction_resize_6_resize_q <= i_cmp36_resize_c and redist11_i_cmp38_resize_c_3_q;

    -- c_i8_0gr(CONSTANT,84)
    c_i8_0gr_q <= "00000000";

    -- i_unnamed_resize92_vt_const_7(CONSTANT,199)
    i_unnamed_resize92_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,85)
    c_i8_1gr_q <= "00000001";

    -- i_ffwd_dst_ratio133760_resize(BLACKBOX,151)@3
    thei_ffwd_dst_ratio133760_resize : i_ffwd_dst_ratio133760_resize76
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_0_0 => i_ffwd_dst_ratio133760_resize_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_sub766_resize(BLACKBOX,155)@2
    thei_ffwd_dst_sub766_resize : i_ffwd_dst_sub766_resize59
    PORT MAP (
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_stall_in => GND_q,
        in_valid_in => redist24_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_3_0 => i_ffwd_dst_sub766_resize_out_dest_data_out_3_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_256(CONSTANT,74)
    c_i32_256_q <= "11111111111111111111111100000000";

    -- i_sub25_resize(ADD,184)@3
    i_sub25_resize_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add22_resize_sel_x_b);
    i_sub25_resize_b <= STD_LOGIC_VECTOR("0" & c_i32_256_q);
    i_sub25_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub25_resize_a) + UNSIGNED(i_sub25_resize_b));
    i_sub25_resize_q <= i_sub25_resize_o(32 downto 0);

    -- bgTrunc_i_sub25_resize_sel_x(BITSELECT,9)@3
    bgTrunc_i_sub25_resize_sel_x_b <= i_sub25_resize_q(31 downto 0);

    -- i_reduction_resize_0_resize(MUX,176)@3
    i_reduction_resize_0_resize_s <= andEq_uid284_i_cmp19_resize_q;
    i_reduction_resize_0_resize_combproc: PROCESS (i_reduction_resize_0_resize_s, i_accumrow_0125_replace_phi_resize_q, bgTrunc_i_add22_resize_sel_x_b)
    BEGIN
        CASE (i_reduction_resize_0_resize_s) IS
            WHEN "0" => i_reduction_resize_0_resize_q <= i_accumrow_0125_replace_phi_resize_q;
            WHEN "1" => i_reduction_resize_0_resize_q <= bgTrunc_i_add22_resize_sel_x_b;
            WHEN OTHERS => i_reduction_resize_0_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_selcond_resize_2_demorgan_resize(LOGICAL,183)@3
    i_selcond_resize_2_demorgan_resize_q <= andEq_uid284_i_cmp19_resize_q and i_cmp23_resize_c;

    -- i_reduction_resize_1_resize(MUX,177)@3
    i_reduction_resize_1_resize_s <= i_selcond_resize_2_demorgan_resize_q;
    i_reduction_resize_1_resize_combproc: PROCESS (i_reduction_resize_1_resize_s, i_reduction_resize_0_resize_q, bgTrunc_i_sub25_resize_sel_x_b)
    BEGIN
        CASE (i_reduction_resize_1_resize_s) IS
            WHEN "0" => i_reduction_resize_1_resize_q <= i_reduction_resize_0_resize_q;
            WHEN "1" => i_reduction_resize_1_resize_q <= bgTrunc_i_sub25_resize_sel_x_b;
            WHEN OTHERS => i_reduction_resize_1_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_accumrow_0125_push23_resize(BLACKBOX,104)@3
    -- out out_feedback_out_23@20000000
    -- out out_feedback_valid_out_23@20000000
    thei_acl_push_i32_accumrow_0125_push23_resize : i_acl_push_i32_accumrow_0125_push23_resize78
    PORT MAP (
        in_data_in => i_reduction_resize_1_resize_q,
        in_feedback_stall_in_23 => i_acl_pop_i32_accumrow_0125_pop23_resize_out_feedback_stall_out_23,
        in_keep_going => redist18_i_acl_pipeline_keep_going_resize_out_data_out_2_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_23 => i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_out_23,
        out_feedback_valid_out_23 => i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_valid_out_23,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_accumrow_0125_pop23_resize(BLACKBOX,93)@2
    -- out out_feedback_stall_out_23@20000000
    thei_acl_pop_i32_accumrow_0125_pop23_resize : i_acl_pop_i32_accumrow_0125_pop23_resize61
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist21_sync_in_aunroll_x_in_c1_eni2_1_1_q,
        in_feedback_in_23 => i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_out_23,
        in_feedback_valid_in_23 => i_acl_push_i32_accumrow_0125_push23_resize_out_feedback_valid_out_23,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist24_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_accumrow_0125_pop23_resize_out_data_out,
        out_feedback_stall_out_23 => i_acl_pop_i32_accumrow_0125_pop23_resize_out_feedback_stall_out_23,
        clock => clock,
        resetn => resetn
    );

    -- i_accumrow_0125_replace_phi_resize(MUX,88)@2 + 1
    i_accumrow_0125_replace_phi_resize_s <= redist21_sync_in_aunroll_x_in_c1_eni2_1_1_q;
    i_accumrow_0125_replace_phi_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_accumrow_0125_replace_phi_resize_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_accumrow_0125_replace_phi_resize_s) IS
                WHEN "0" => i_accumrow_0125_replace_phi_resize_q <= i_acl_pop_i32_accumrow_0125_pop23_resize_out_data_out;
                WHEN "1" => i_accumrow_0125_replace_phi_resize_q <= i_ffwd_dst_sub766_resize_out_dest_data_out_3_0;
                WHEN OTHERS => i_accumrow_0125_replace_phi_resize_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add22_resize(ADD,117)@3
    i_add22_resize_a <= STD_LOGIC_VECTOR("0" & i_accumrow_0125_replace_phi_resize_q);
    i_add22_resize_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_ratio133760_resize_out_dest_data_out_0_0);
    i_add22_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add22_resize_a) + UNSIGNED(i_add22_resize_b));
    i_add22_resize_q <= i_add22_resize_o(32 downto 0);

    -- bgTrunc_i_add22_resize_sel_x(BITSELECT,3)@3
    bgTrunc_i_add22_resize_sel_x_b <= i_add22_resize_q(31 downto 0);

    -- c_i32_255(CONSTANT,73)
    c_i32_255_q <= "00000000000000000000000011111111";

    -- i_cmp23_resize(COMPARE,137)@3
    i_cmp23_resize_a <= STD_LOGIC_VECTOR("00" & c_i32_255_q);
    i_cmp23_resize_b <= STD_LOGIC_VECTOR("00" & bgTrunc_i_add22_resize_sel_x_b);
    i_cmp23_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp23_resize_a) - UNSIGNED(i_cmp23_resize_b));
    i_cmp23_resize_c(0) <= i_cmp23_resize_o(33);

    -- i_write_y_1_resize_sel_x(BITSELECT,56)@3
    i_write_y_1_resize_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp23_resize_c(0 downto 0)), 8));

    -- i_write_y_1_resize_vt_select_0(BITSELECT,205)@3
    i_write_y_1_resize_vt_select_0_b <= i_write_y_1_resize_sel_x_b(0 downto 0);

    -- i_write_y_1_resize_vt_join(BITJOIN,204)@3
    i_write_y_1_resize_vt_join_q <= i_unnamed_resize92_vt_const_7_q & i_write_y_1_resize_vt_select_0_b;

    -- i_acl_push_i8_write_y_0128_push20_resize(BLACKBOX,111)@3
    -- out out_feedback_out_20@20000000
    -- out out_feedback_valid_out_20@20000000
    thei_acl_push_i8_write_y_0128_push20_resize : i_acl_push_i8_write_y_0128_push20_resize86
    PORT MAP (
        in_data_in => i_acl_752_resize_q,
        in_feedback_stall_in_20 => i_acl_pop_i8_write_y_0128_pop20_resize_out_feedback_stall_out_20,
        in_keep_going => redist18_i_acl_pipeline_keep_going_resize_out_data_out_2_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_20 => i_acl_push_i8_write_y_0128_push20_resize_out_feedback_out_20,
        out_feedback_valid_out_20 => i_acl_push_i8_write_y_0128_push20_resize_out_feedback_valid_out_20,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_write_y_0128_pop20_resize(BLACKBOX,100)@3
    -- out out_feedback_stall_out_20@20000000
    thei_acl_pop_i8_write_y_0128_pop20_resize : i_acl_pop_i8_write_y_0128_pop20_resize84
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q,
        in_feedback_in_20 => i_acl_push_i8_write_y_0128_push20_resize_out_feedback_out_20,
        in_feedback_valid_in_20 => i_acl_push_i8_write_y_0128_push20_resize_out_feedback_valid_out_20,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_write_y_0128_pop20_resize_out_data_out,
        out_feedback_stall_out_20 => i_acl_pop_i8_write_y_0128_pop20_resize_out_feedback_stall_out_20,
        clock => clock,
        resetn => resetn
    );

    -- y1_uid275_i_cmp162_resize(BITSELECT,274)@2
    y1_uid275_i_cmp162_resize_b <= STD_LOGIC_VECTOR(c_i32_0gr_q(31 downto 16));

    -- redist0_x1_uid267_i_cmp160_resize_b_1(DELAY,289)
    redist0_x1_uid267_i_cmp160_resize_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => x1_uid267_i_cmp160_resize_b, xout => redist0_x1_uid267_i_cmp160_resize_b_1_q, clk => clock, aclr => resetn );

    -- eq1_uid283_i_cmp19_resize(LOGICAL,282)@2 + 1
    eq1_uid283_i_cmp19_resize_qi <= "1" WHEN redist0_x1_uid267_i_cmp160_resize_b_1_q = y1_uid275_i_cmp162_resize_b ELSE "0";
    eq1_uid283_i_cmp19_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => eq1_uid283_i_cmp19_resize_qi, xout => eq1_uid283_i_cmp19_resize_q, clk => clock, aclr => resetn );

    -- y0_uid272_i_cmp162_resize(BITSELECT,271)@2
    y0_uid272_i_cmp162_resize_in <= c_i32_0gr_q(15 downto 0);
    y0_uid272_i_cmp162_resize_b <= y0_uid272_i_cmp162_resize_in(15 downto 0);

    -- redist1_x0_uid264_i_cmp160_resize_b_1(DELAY,290)
    redist1_x0_uid264_i_cmp160_resize_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => x0_uid264_i_cmp160_resize_b, xout => redist1_x0_uid264_i_cmp160_resize_b_1_q, clk => clock, aclr => resetn );

    -- eq0_uid280_i_cmp19_resize(LOGICAL,279)@2 + 1
    eq0_uid280_i_cmp19_resize_qi <= "1" WHEN redist1_x0_uid264_i_cmp160_resize_b_1_q = y0_uid272_i_cmp162_resize_b ELSE "0";
    eq0_uid280_i_cmp19_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => eq0_uid280_i_cmp19_resize_qi, xout => eq0_uid280_i_cmp19_resize_q, clk => clock, aclr => resetn );

    -- andEq_uid284_i_cmp19_resize(LOGICAL,283)@3
    andEq_uid284_i_cmp19_resize_q <= eq0_uid280_i_cmp19_resize_q and eq1_uid283_i_cmp19_resize_q;

    -- i_acl_752_resize(MUX,90)@3
    i_acl_752_resize_s <= andEq_uid284_i_cmp19_resize_q;
    i_acl_752_resize_combproc: PROCESS (i_acl_752_resize_s, i_acl_pop_i8_write_y_0128_pop20_resize_out_data_out, i_write_y_1_resize_vt_join_q)
    BEGIN
        CASE (i_acl_752_resize_s) IS
            WHEN "0" => i_acl_752_resize_q <= i_acl_pop_i8_write_y_0128_pop20_resize_out_data_out;
            WHEN "1" => i_acl_752_resize_q <= i_write_y_1_resize_vt_join_q;
            WHEN OTHERS => i_acl_752_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_resize92(LOGICAL,198)@3
    i_unnamed_resize92_q <= i_acl_752_resize_q and c_i8_1gr_q;

    -- i_unnamed_resize92_vt_select_0(BITSELECT,201)@3
    i_unnamed_resize92_vt_select_0_b <= i_unnamed_resize92_q(0 downto 0);

    -- redist3_i_unnamed_resize92_vt_select_0_b_1(DELAY,292)
    redist3_i_unnamed_resize92_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_resize92_vt_select_0_b, xout => redist3_i_unnamed_resize92_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_resize92_vt_join(BITJOIN,200)@4
    i_unnamed_resize92_vt_join_q <= i_unnamed_resize92_vt_const_7_q & redist3_i_unnamed_resize92_vt_select_0_b_1_q;

    -- i_tobool34_resize(LOGICAL,188)@4 + 1
    i_tobool34_resize_qi <= "1" WHEN i_unnamed_resize92_vt_join_q /= c_i8_0gr_q ELSE "0";
    i_tobool34_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool34_resize_qi, xout => i_tobool34_resize_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_ratio133761_resize(BLACKBOX,152)@3
    thei_ffwd_dst_ratio133761_resize : i_ffwd_dst_ratio133761_resize88
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_0_0 => i_ffwd_dst_ratio133761_resize_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_sub765_resize(BLACKBOX,154)@3
    thei_ffwd_dst_sub765_resize : i_ffwd_dst_sub765_resize80
    PORT MAP (
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_3_0 => i_ffwd_dst_sub765_resize_out_dest_data_out_3_0,
        clock => clock,
        resetn => resetn
    );

    -- i_sub31_resize(ADD,186)@4
    i_sub31_resize_a <= STD_LOGIC_VECTOR("0" & redist29_bgTrunc_i_add28_resize_sel_x_b_1_q);
    i_sub31_resize_b <= STD_LOGIC_VECTOR("0" & c_i32_256_q);
    i_sub31_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub31_resize_a) + UNSIGNED(i_sub31_resize_b));
    i_sub31_resize_q <= i_sub31_resize_o(32 downto 0);

    -- bgTrunc_i_sub31_resize_sel_x(BITSELECT,10)@4
    bgTrunc_i_sub31_resize_sel_x_b <= i_sub31_resize_q(31 downto 0);

    -- i_sub31_add28_resize(MUX,185)@4
    i_sub31_add28_resize_s <= i_cmp29_resize_c;
    i_sub31_add28_resize_combproc: PROCESS (i_sub31_add28_resize_s, redist29_bgTrunc_i_add28_resize_sel_x_b_1_q, bgTrunc_i_sub31_resize_sel_x_b)
    BEGIN
        CASE (i_sub31_add28_resize_s) IS
            WHEN "0" => i_sub31_add28_resize_q <= redist29_bgTrunc_i_add28_resize_sel_x_b_1_q;
            WHEN "1" => i_sub31_add28_resize_q <= bgTrunc_i_sub31_resize_sel_x_b;
            WHEN OTHERS => i_sub31_add28_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_accumcolumn_0126_push22_resize(BLACKBOX,103)@4
    -- out out_feedback_out_22@20000000
    -- out out_feedback_valid_out_22@20000000
    thei_acl_push_i32_accumcolumn_0126_push22_resize : i_acl_push_i32_accumcolumn_0126_push22_resize90
    PORT MAP (
        in_data_in => i_sub31_add28_resize_q,
        in_feedback_stall_in_22 => i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_feedback_stall_out_22,
        in_keep_going => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_22 => i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_out_22,
        out_feedback_valid_out_22 => i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_valid_out_22,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_accumcolumn_0126_pop22_resize(BLACKBOX,92)@3
    -- out out_feedback_stall_out_22@20000000
    thei_acl_pop_i32_accumcolumn_0126_pop22_resize : i_acl_pop_i32_accumcolumn_0126_pop22_resize82
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q,
        in_feedback_in_22 => i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_out_22,
        in_feedback_valid_in_22 => i_acl_push_i32_accumcolumn_0126_push22_resize_out_feedback_valid_out_22,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_data_out,
        out_feedback_stall_out_22 => i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_feedback_stall_out_22,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_751_resize(MUX,89)@3
    i_acl_751_resize_s <= andEq_uid284_i_cmp19_resize_q;
    i_acl_751_resize_combproc: PROCESS (i_acl_751_resize_s, i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_data_out, i_ffwd_dst_sub765_resize_out_dest_data_out_3_0)
    BEGIN
        CASE (i_acl_751_resize_s) IS
            WHEN "0" => i_acl_751_resize_q <= i_acl_pop_i32_accumcolumn_0126_pop22_resize_out_data_out;
            WHEN "1" => i_acl_751_resize_q <= i_ffwd_dst_sub765_resize_out_dest_data_out_3_0;
            WHEN OTHERS => i_acl_751_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add28_resize(ADD,118)@3
    i_add28_resize_a <= STD_LOGIC_VECTOR("0" & i_acl_751_resize_q);
    i_add28_resize_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_ratio133761_resize_out_dest_data_out_0_0);
    i_add28_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add28_resize_a) + UNSIGNED(i_add28_resize_b));
    i_add28_resize_q <= i_add28_resize_o(32 downto 0);

    -- bgTrunc_i_add28_resize_sel_x(BITSELECT,4)@3
    bgTrunc_i_add28_resize_sel_x_b <= i_add28_resize_q(31 downto 0);

    -- redist29_bgTrunc_i_add28_resize_sel_x_b_1(DELAY,318)
    redist29_bgTrunc_i_add28_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add28_resize_sel_x_b, xout => redist29_bgTrunc_i_add28_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp29_resize(COMPARE,138)@4
    i_cmp29_resize_a <= STD_LOGIC_VECTOR("00" & c_i32_255_q);
    i_cmp29_resize_b <= STD_LOGIC_VECTOR("00" & redist29_bgTrunc_i_add28_resize_sel_x_b_1_q);
    i_cmp29_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp29_resize_a) - UNSIGNED(i_cmp29_resize_b));
    i_cmp29_resize_c(0) <= i_cmp29_resize_o(33);

    -- redist12_i_cmp29_resize_c_1(DELAY,301)
    redist12_i_cmp29_resize_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp29_resize_c, xout => redist12_i_cmp29_resize_c_1_q, clk => clock, aclr => resetn );

    -- i_reduction_resize_5_resize(LOGICAL,178)@5
    i_reduction_resize_5_resize_q <= redist12_i_cmp29_resize_c_1_q and i_tobool34_resize_q;

    -- i_reduction_resize_8_resize(LOGICAL,181)@5 + 1
    i_reduction_resize_8_resize_qi <= i_reduction_resize_5_resize_q and i_reduction_resize_6_resize_q;
    i_reduction_resize_8_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_resize_8_resize_qi, xout => i_reduction_resize_8_resize_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp123767_resize(BLACKBOX,147)@4
    thei_ffwd_dst_cmp123767_resize : i_ffwd_dst_cmp123767_resize101
    PORT MAP (
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_4_0 => i_ffwd_dst_cmp123767_resize_out_dest_data_out_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_cols135764_resize(BLACKBOX,150)@3
    thei_ffwd_dst_cols135764_resize : i_ffwd_dst_cols135764_resize98
    PORT MAP (
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_2_0 => i_ffwd_dst_cols135764_resize_out_dest_data_out_2_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,72)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_sub40_resize(ADD,187)@2
    i_sub40_resize_a <= STD_LOGIC_VECTOR("0" & redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q);
    i_sub40_resize_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_sub40_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub40_resize_a) + UNSIGNED(i_sub40_resize_b));
    i_sub40_resize_q <= i_sub40_resize_o(32 downto 0);

    -- bgTrunc_i_sub40_resize_sel_x(BITSELECT,11)@2
    bgTrunc_i_sub40_resize_sel_x_b <= i_sub40_resize_q(31 downto 0);

    -- redist28_bgTrunc_i_sub40_resize_sel_x_b_1(DELAY,317)
    redist28_bgTrunc_i_sub40_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub40_resize_sel_x_b, xout => redist28_bgTrunc_i_sub40_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp41_resize(COMPARE,143)@3 + 1
    i_cmp41_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist28_bgTrunc_i_sub40_resize_sel_x_b_1_q(31)) & redist28_bgTrunc_i_sub40_resize_sel_x_b_1_q));
    i_cmp41_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_ffwd_dst_cols135764_resize_out_dest_data_out_2_0(31)) & i_ffwd_dst_cols135764_resize_out_dest_data_out_2_0));
    i_cmp41_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp41_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp41_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp41_resize_a) - SIGNED(i_cmp41_resize_b));
        END IF;
    END PROCESS;
    i_cmp41_resize_c(0) <= i_cmp41_resize_o(33);

    -- i_reduction_resize_7_resize(LOGICAL,180)@4 + 1
    i_reduction_resize_7_resize_qi <= i_cmp41_resize_c and i_ffwd_dst_cmp123767_resize_out_dest_data_out_4_0;
    i_reduction_resize_7_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_resize_7_resize_qi, xout => i_reduction_resize_7_resize_q, clk => clock, aclr => resetn );

    -- redist6_i_reduction_resize_7_resize_q_2(DELAY,295)
    redist6_i_reduction_resize_7_resize_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_resize_7_resize_q, xout => redist6_i_reduction_resize_7_resize_q_2_q, clk => clock, aclr => resetn );

    -- i_reduction_resize_9_resize(LOGICAL,182)@6
    i_reduction_resize_9_resize_q <= redist6_i_reduction_resize_7_resize_q_2_q and i_reduction_resize_8_resize_q;

    -- i_cmp123_phi_decision755_xor756_or_resize(LOGICAL,131)@6
    i_cmp123_phi_decision755_xor756_or_resize_q <= i_reduction_resize_9_resize_q xor VCC_q;

    -- i_first_cleanup_xor770_or_resize(LOGICAL,159)@6
    i_first_cleanup_xor770_or_resize_q <= i_cmp123_phi_decision755_xor756_or_resize_q or redist2_i_xor_resize_q_2_q;

    -- i_mul56_resize_vt_const_31(CONSTANT,167)
    i_mul56_resize_vt_const_31_q <= "0000000000000000";

    -- i_mul56_resize_multconst_x(CONSTANT,47)
    i_mul56_resize_multconst_x_q <= "000000000000000000000000000000000000000000000000";

    -- redist7_i_reduction_resize_1_resize_q_1(DELAY,296)
    redist7_i_reduction_resize_1_resize_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_resize_1_resize_q, xout => redist7_i_reduction_resize_1_resize_q_1_q, clk => clock, aclr => resetn );

    -- i_and54_resize(LOGICAL,119)@4
    i_and54_resize_q <= redist7_i_reduction_resize_1_resize_q_1_q and c_i32_255_q;

    -- i_and54_resize_vt_select_7(BITSELECT,122)@4
    i_and54_resize_vt_select_7_b <= i_and54_resize_q(7 downto 0);

    -- i_and55_resize(LOGICAL,123)@4
    i_and55_resize_q <= i_sub31_add28_resize_q and c_i32_255_q;

    -- i_and55_resize_vt_select_7(BITSELECT,126)@4
    i_and55_resize_vt_select_7_b <= i_and55_resize_q(7 downto 0);

    -- i_mul56_resize(MULT,166)@4 + 2
    i_mul56_resize_pr <= UNSIGNED(UNSIGNED(i_mul56_resize_a0) * UNSIGNED(i_mul56_resize_b0));
    i_mul56_resize_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul56_resize_a0 <= (others => '0');
            i_mul56_resize_b0 <= (others => '0');
            i_mul56_resize_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul56_resize_a0 <= i_and55_resize_vt_select_7_b;
            i_mul56_resize_b0 <= i_and54_resize_vt_select_7_b;
            i_mul56_resize_s1 <= STD_LOGIC_VECTOR(i_mul56_resize_pr);
        END IF;
    END PROCESS;
    i_mul56_resize_q <= i_mul56_resize_s1;

    -- i_mul56_resize_extender_x(BITJOIN,46)@6
    i_mul56_resize_extender_x_q <= i_mul56_resize_multconst_x_q & i_mul56_resize_q;

    -- bgTrunc_i_mul56_resize_sel_x(BITSELECT,8)@6
    bgTrunc_i_mul56_resize_sel_x_b <= i_mul56_resize_extender_x_q(31 downto 0);

    -- i_mul56_resize_vt_select_15(BITSELECT,169)@6
    i_mul56_resize_vt_select_15_b <= bgTrunc_i_mul56_resize_sel_x_b(15 downto 0);

    -- i_mul56_resize_vt_join(BITJOIN,168)@6
    i_mul56_resize_vt_join_q <= i_mul56_resize_vt_const_31_q & i_mul56_resize_vt_select_15_b;

    -- redist5_i_sub31_add28_resize_q_2(DELAY,294)
    redist5_i_sub31_add28_resize_q_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sub31_add28_resize_q, xout => redist5_i_sub31_add28_resize_q_2_q, clk => clock, aclr => resetn );

    -- redist8_i_reduction_resize_1_resize_q_3(DELAY,297)
    redist8_i_reduction_resize_1_resize_q_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_reduction_resize_1_resize_q_1_q, xout => redist8_i_reduction_resize_1_resize_q_3_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp123768_resize(BLACKBOX,148)@6
    thei_ffwd_dst_cmp123768_resize : i_ffwd_dst_cmp123768_resize73
    PORT MAP (
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_stall_in => GND_q,
        in_valid_in => redist27_sync_in_aunroll_x_in_i_valid_5_q,
        out_dest_data_out_4_0 => i_ffwd_dst_cmp123768_resize_out_dest_data_out_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp123_phi_decision755_xor_or_demorgan_resize(LOGICAL,132)@6
    i_cmp123_phi_decision755_xor_or_demorgan_resize_q <= i_or_cond_resize_q and i_ffwd_dst_cmp123768_resize_out_dest_data_out_4_0;

    -- i_cmp123_phi_decision755_xor_or_resize(LOGICAL,133)@6
    i_cmp123_phi_decision755_xor_or_resize_q <= i_cmp123_phi_decision755_xor_or_demorgan_resize_q xor VCC_q;

    -- i_first_cleanup_xor_or_resize(LOGICAL,160)@6
    i_first_cleanup_xor_or_resize_q <= i_cmp123_phi_decision755_xor_or_resize_q or redist2_i_xor_resize_q_2_q;

    -- i_ffwd_dst_cols135763_resize(BLACKBOX,149)@2
    thei_ffwd_dst_cols135763_resize : i_ffwd_dst_cols135763_resize68
    PORT MAP (
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_stall_in => GND_q,
        in_valid_in => redist24_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_2_0 => i_ffwd_dst_cols135763_resize_out_dest_data_out_2_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp3_resize(COMPARE,142)@2 + 1
    i_cmp3_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q(31)) & redist16_i_acl_pop_i32_col_0124_pop24_resize_out_data_out_1_q));
    i_cmp3_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_ffwd_dst_cols135763_resize_out_dest_data_out_2_0(31)) & i_ffwd_dst_cols135763_resize_out_dest_data_out_2_0));
    i_cmp3_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp3_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp3_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp3_resize_a) - SIGNED(i_cmp3_resize_b));
        END IF;
    END PROCESS;
    i_cmp3_resize_c(0) <= i_cmp3_resize_o(33);

    -- redist10_i_cmp3_resize_c_3(DELAY,299)
    redist10_i_cmp3_resize_c_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp3_resize_c, xout => redist10_i_cmp3_resize_c_3_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_rows134762_resize(BLACKBOX,153)@4
    thei_ffwd_dst_rows134762_resize : i_ffwd_dst_rows134762_resize63
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_1_0 => i_ffwd_dst_rows134762_resize_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_add164_resize_vt_const_31(CONSTANT,114)
    i_add164_resize_vt_const_31_q <= "0000000000000000000000000000000";

    -- x1_uid274_i_cmp162_resize(BITSELECT,273)@2
    x1_uid274_i_cmp162_resize_b <= STD_LOGIC_VECTOR(i_cond_resize_q(31 downto 16));

    -- eq1_uid276_i_cmp162_resize(LOGICAL,275)@2 + 1
    eq1_uid276_i_cmp162_resize_qi <= "1" WHEN x1_uid274_i_cmp162_resize_b = y1_uid275_i_cmp162_resize_b ELSE "0";
    eq1_uid276_i_cmp162_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => eq1_uid276_i_cmp162_resize_qi, xout => eq1_uid276_i_cmp162_resize_q, clk => clock, aclr => resetn );

    -- x0_uid271_i_cmp162_resize(BITSELECT,270)@2
    x0_uid271_i_cmp162_resize_in <= i_cond_resize_q(15 downto 0);
    x0_uid271_i_cmp162_resize_b <= x0_uid271_i_cmp162_resize_in(15 downto 0);

    -- eq0_uid273_i_cmp162_resize(LOGICAL,272)@2 + 1
    eq0_uid273_i_cmp162_resize_qi <= "1" WHEN x0_uid271_i_cmp162_resize_b = y0_uid272_i_cmp162_resize_b ELSE "0";
    eq0_uid273_i_cmp162_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => eq0_uid273_i_cmp162_resize_qi, xout => eq0_uid273_i_cmp162_resize_q, clk => clock, aclr => resetn );

    -- andEq_uid277_i_cmp162_resize(LOGICAL,276)@3
    andEq_uid277_i_cmp162_resize_q <= eq0_uid273_i_cmp162_resize_q and eq1_uid276_i_cmp162_resize_q;

    -- i_add164_resize_sel_x(BITSELECT,44)@3
    i_add164_resize_sel_x_b <= std_logic_vector(resize(unsigned(andEq_uid277_i_cmp162_resize_q(0 downto 0)), 32));

    -- i_add164_resize_vt_select_0(BITSELECT,116)@3
    i_add164_resize_vt_select_0_b <= i_add164_resize_sel_x_b(0 downto 0);

    -- redist13_i_add164_resize_vt_select_0_b_1(DELAY,302)
    redist13_i_add164_resize_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_add164_resize_vt_select_0_b, xout => redist13_i_add164_resize_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_add164_resize_vt_join(BITJOIN,115)@4
    i_add164_resize_vt_join_q <= i_add164_resize_vt_const_31_q & redist13_i_add164_resize_vt_select_0_b_1_q;

    -- i_cond167_resize(ADD,144)@4
    i_cond167_resize_a <= STD_LOGIC_VECTOR("0" & i_add164_resize_vt_join_q);
    i_cond167_resize_b <= STD_LOGIC_VECTOR("0" & redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1_q);
    i_cond167_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cond167_resize_a) + UNSIGNED(i_cond167_resize_b));
    i_cond167_resize_q <= i_cond167_resize_o(32 downto 0);

    -- bgTrunc_i_cond167_resize_sel_x(BITSELECT,5)@4
    bgTrunc_i_cond167_resize_sel_x_b <= i_cond167_resize_q(31 downto 0);

    -- i_acl_push_i32_row_0127_push21_resize(BLACKBOX,107)@4
    -- out out_feedback_out_21@20000000
    -- out out_feedback_valid_out_21@20000000
    thei_acl_push_i32_row_0127_push21_resize : i_acl_push_i32_row_0127_push21_resize107
    PORT MAP (
        in_data_in => bgTrunc_i_cond167_resize_sel_x_b,
        in_feedback_stall_in_21 => i_acl_pop_i32_row_0127_pop21_resize_out_feedback_stall_out_21,
        in_keep_going => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist26_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_21 => i_acl_push_i32_row_0127_push21_resize_out_feedback_out_21,
        out_feedback_valid_out_21 => i_acl_push_i32_row_0127_push21_resize_out_feedback_valid_out_21,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_row_0127_pop21_resize(BLACKBOX,96)@3
    -- out out_feedback_stall_out_21@20000000
    thei_acl_pop_i32_row_0127_pop21_resize : i_acl_pop_i32_row_0127_pop21_resize65
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist22_sync_in_aunroll_x_in_c1_eni2_1_2_q,
        in_feedback_in_21 => i_acl_push_i32_row_0127_push21_resize_out_feedback_out_21,
        in_feedback_valid_in_21 => i_acl_push_i32_row_0127_push21_resize_out_feedback_valid_out_21,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i32_row_0127_pop21_resize_out_data_out,
        out_feedback_stall_out_21 => i_acl_pop_i32_row_0127_pop21_resize_out_feedback_stall_out_21,
        clock => clock,
        resetn => resetn
    );

    -- redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1(DELAY,303)
    redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_row_0127_pop21_resize_out_data_out, xout => redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_cmp2_resize(COMPARE,139)@4 + 1
    i_cmp2_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1_q(31)) & redist14_i_acl_pop_i32_row_0127_pop21_resize_out_data_out_1_q));
    i_cmp2_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_ffwd_dst_rows134762_resize_out_dest_data_out_1_0(31)) & i_ffwd_dst_rows134762_resize_out_dest_data_out_1_0));
    i_cmp2_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp2_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp2_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp2_resize_a) - SIGNED(i_cmp2_resize_b));
        END IF;
    END PROCESS;
    i_cmp2_resize_c(0) <= i_cmp2_resize_o(33);

    -- i_or_cond_resize(LOGICAL,174)@5 + 1
    i_or_cond_resize_qi <= i_cmp2_resize_c and redist10_i_cmp3_resize_c_3_q;
    i_or_cond_resize_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or_cond_resize_qi, xout => i_or_cond_resize_q, clk => clock, aclr => resetn );

    -- redist20_i_acl_pipeline_keep_going_resize_out_data_out_5(DELAY,309)
    redist20_i_acl_pipeline_keep_going_resize_out_data_out_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_i_acl_pipeline_keep_going_resize_out_data_out_3_q, xout => redist20_i_acl_pipeline_keep_going_resize_out_data_out_5_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,58)@6
    out_c1_exi8_0 <= GND_q;
    out_c1_exi8_1 <= redist20_i_acl_pipeline_keep_going_resize_out_data_out_5_q;
    out_c1_exi8_2 <= i_or_cond_resize_q;
    out_c1_exi8_3 <= i_first_cleanup_xor_or_resize_q;
    out_c1_exi8_4 <= redist8_i_reduction_resize_1_resize_q_3_q;
    out_c1_exi8_5 <= redist5_i_sub31_add28_resize_q_2_q;
    out_c1_exi8_6 <= i_mul56_resize_vt_join_q;
    out_c1_exi8_7 <= i_first_cleanup_xor770_or_resize_q;
    out_c1_exi8_8 <= i_masked_resize_q;
    out_o_valid <= redist27_sync_in_aunroll_x_in_i_valid_5_q;

    -- ext_sig_sync_out(GPOUT,87)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out <= i_acl_pipeline_keep_going_resize_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out <= i_acl_pipeline_keep_going_resize_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,220)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_resize_out_pipeline_valid_out;

END normal;
