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

-- VHDL created from i_sfc_logic_c0_for_body_resize_c0_enter790_resize124
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

entity i_sfc_logic_c0_for_body_resize_c0_enter790_resize124 is
    port (
        in_c0_eni7_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni7_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni7_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni7_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni7_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni7_5 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni7_6 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni7_7 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi1791_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi1791_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_resize_c0_enter790_resize124;

architecture normal of i_sfc_logic_c0_for_body_resize_c0_enter790_resize124 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i11_coalesce_counter_pop27_resize126 is
        port (
            in_data_in : in std_logic_vector(10 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_27 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(10 downto 0);  -- Fixed Point
            out_feedback_stall_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_0_0_0_1_pop18_resize166 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_18 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_0_0_1_1_pop17_resize170 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_17 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_0_0_2_1_pop16_resize174 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_16 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_0_0_3_1_pop15_resize178 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_15 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_5 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_4 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_729_0_0_1_pop14_resize132 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_14 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_729_0_1_1_pop13_resize138 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_13 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_729_0_2_1_pop12_resize144 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_12 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i8_buf_729_0_3_1_pop11_resize150 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_11 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i11_coalesce_counter_push27_resize154 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(10 downto 0);  -- Fixed Point
            in_feedback_stall_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(10 downto 0);  -- Fixed Point
            out_feedback_out_27 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_0_0_0_1_push18_resize168 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_18 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_0_0_1_1_push17_resize172 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_17 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_0_0_2_1_push16_resize176 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_16 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_0_0_3_1_push15_resize180 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_15 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_5 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152 is
        port (
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_729_0_0_1_push14_resize164 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_14 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_729_0_1_1_push13_resize162 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_13 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_729_0_2_1_push12_resize160 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i8_buf_729_0_3_1_push11_resize158 is
        port (
            in_c0_ene2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_stall_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_out_11 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add107_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add107_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add107_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add107_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add88_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add88_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add88_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add88_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add95_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add95_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add95_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add95_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul106_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul106_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul106_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul106_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul75_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul75_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul75_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul75_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul87_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul87_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul87_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul87_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_next_coalesce_resize_sel_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal bgTrunc_i_sub103_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub103_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub103_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub103_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub71_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub71_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub71_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub71_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub83_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub83_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub83_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub83_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub99_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub99_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub99_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub99_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp_1_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp_2_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp_3_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_i_and105_resize_vt_join_narrowed_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_i_and73_resize_vt_join_narrowed_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal dupName_0_i_and85_resize_vt_join_narrowed_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal dupName_0_c_i11_1gr_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv10_i28_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i42_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i56_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv12_resize_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv15_i29_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i43_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i57_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i27_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i41_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i55_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv6_resize_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv_i26_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i40_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i54_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_resize_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_resize_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul106_1_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul106_1_resize_multconst_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_mul106_2_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul106_3_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul106_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul75_1_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul75_1_resize_multconst_x_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_2_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul75_3_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul75_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul87_1_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul87_2_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul87_3_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul87_resize_extender_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_vec_3_join_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_reduction_resize_4_compressed_resize_resize191_reduction_resize_4_shuffle_join_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i11_1gr_q : STD_LOGIC_VECTOR (10 downto 0);
    signal c_i11_726_q : STD_LOGIC_VECTOR (10 downto 0);
    signal c_i32_65535_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_67108863_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_747_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_747_resize_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_748_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_748_resize_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_749_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_749_resize_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_resize_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_resize_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out : STD_LOGIC_VECTOR (10 downto 0);
    signal i_acl_pop_i11_coalesce_counter_pop27_resize_out_feedback_stall_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_feedback_stall_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_feedback_stall_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_feedback_stall_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_feedback_stall_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_feedback_stall_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_feedback_stall_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_feedback_stall_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_feedback_stall_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_feedback_stall_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_feedback_stall_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_out_27 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_valid_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_out_18 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_valid_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_out_17 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_valid_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_out_16 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_valid_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_out_15 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_valid_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_out_7 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_out_5 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_valid_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_out_4 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_out_14 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_valid_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_out_13 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_valid_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_out_12 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_out_11 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_valid_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add107_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add95_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_and104_1_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and104_1_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and104_2_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and104_2_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and104_3_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and104_3_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and104_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and104_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and105_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and105_resize_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and105_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and105_resize_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and72_1_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and72_1_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and72_2_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and72_2_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and72_3_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and72_3_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and72_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and72_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and73_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and73_resize_vt_const_31_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and73_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and73_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and84_1_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and84_1_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and84_2_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and84_2_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and84_3_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and84_3_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and84_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and84_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and85_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and85_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and85_resize_vt_select_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal i_coalesce_counter_lobit_resize_vt_const_10_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_coalesce_counter_lobit_resize_vt_join_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_coalesce_counter_lobit_resize_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv10_i28_resize_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_conv10_i28_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i28_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv10_i42_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i42_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv10_i56_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i56_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv10_i_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv15_i29_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i29_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv15_i43_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i43_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv15_i57_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i57_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv15_i_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv15_i_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv5_i27_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i27_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv5_i41_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i41_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv5_i55_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i55_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv5_i_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv5_i_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv_i26_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i26_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv_i40_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i40_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv_i54_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i54_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv_i_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_resize_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul64_1_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul64_1_resize_vt_select_23_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul64_2_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul64_2_resize_vt_select_23_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul64_3_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul64_3_resize_vt_select_23_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul64_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul64_resize_vt_select_23_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_next_coalesce_resize_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_next_coalesce_resize_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_next_coalesce_resize_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_next_coalesce_resize_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_next_coalesce_select_resize_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_select_resize_vt_join_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_next_coalesce_select_resize_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_not_select781_resize_a : STD_LOGIC_VECTOR (12 downto 0);
    signal i_not_select781_resize_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_not_select781_resize_o : STD_LOGIC_VECTOR (12 downto 0);
    signal i_not_select781_resize_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr10_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr10_resize_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_resize_vt_select_23_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_sub103_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub103_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub71_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub83_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub99_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp120_1_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp120_1_resize_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_tmp120_2_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp120_2_resize_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_tmp120_3_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp120_3_resize_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_tmp120_resize_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp120_resize_vt_select_31_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_tmp_1_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_1_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_1_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_1_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_2_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_2_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_2_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_2_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_3_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_3_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_3_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_3_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_resize_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_resize_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_resize_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_resize_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1Rng8_uid609_i_coalesce_counter_lobit_resize_resize128_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid611_i_coalesce_counter_lobit_resize_resize128_shift_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage1Idx1Rng2_uid614_i_coalesce_counter_lobit_resize_resize128_shift_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1_uid616_i_coalesce_counter_lobit_resize_resize128_shift_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid625_i_mul64_1_resize_resize184_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid634_i_mul64_2_resize_resize186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid643_i_mul64_3_resize_resize188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1_uid652_i_mul64_resize_resize182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid659_i_shr10_resize_resize157_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid661_i_shr10_resize_resize157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid668_i_shr_resize_resize156_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid670_i_shr_resize_resize156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid679_i_tmp120_1_resize_resize185_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid688_i_tmp120_2_resize_resize187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid697_i_tmp120_3_resize_resize189_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx1_uid706_i_tmp120_resize_resize183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul106_1_resize_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_1_resize_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_1_resize_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_1_resize_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_1_resize_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_1_resize_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_2_resize_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_2_resize_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_2_resize_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_2_resize_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_2_resize_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_2_resize_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_3_resize_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_3_resize_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_3_resize_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_3_resize_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_3_resize_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_3_resize_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_resize_align_7_q : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_resize_align_7_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal i_mul106_resize_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_resize_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_resize_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul106_resize_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal i_mul75_1_resize_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_1_resize_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_1_resize_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_1_resize_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_1_resize_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul75_1_resize_bs7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul75_1_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_1_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul75_1_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_1_resize_bs11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_1_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_2_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul75_2_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_2_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_2_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_2_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul75_2_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_2_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_2_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_3_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul75_3_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_3_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_3_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_3_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul75_3_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_3_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_3_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul75_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul75_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul75_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_1_resize_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_1_resize_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_1_resize_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_1_resize_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_1_resize_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul87_1_resize_bs7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul87_1_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_1_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul87_1_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_1_resize_bs11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_1_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_2_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul87_2_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_2_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_2_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_2_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul87_2_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_2_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_2_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_3_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul87_3_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_3_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_3_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_3_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul87_3_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_3_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_3_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_resize_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul87_resize_im10_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_resize_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_resize_im10_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_resize_im10_pr : UNSIGNED (15 downto 0);
    signal i_mul87_resize_im10_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_mul87_resize_align_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul87_resize_align_14_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_1_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_2_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_3_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul75_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul75_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul75_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_1_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_2_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_3_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul87_resize_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_resize_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_resize_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal i_mul87_resize_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_resize_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_resize_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_resize_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_resize_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_mul87_resize_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_resize_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_resize_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (53 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b : STD_LOGIC_VECTOR (43 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_mul106_1_resize_im0_cma_reset : std_logic;
    type i_mul106_1_resize_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul106_1_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul106_1_resize_im0_cma_a0 : signal is true;
    type i_mul106_1_resize_im0_cma_c0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal i_mul106_1_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_1_resize_im0_cma_c0 : signal is true;
    type i_mul106_1_resize_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(33 downto 0);
    signal i_mul106_1_resize_im0_cma_p : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_u : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_w : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_x : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_y : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_s : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im0_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_1_resize_im0_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_1_resize_im0_cma_ena0 : std_logic;
    signal i_mul106_1_resize_im0_cma_ena1 : std_logic;
    signal i_mul106_1_resize_im3_cma_reset : std_logic;
    signal i_mul106_1_resize_im3_cma_a0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_1_resize_im3_cma_a0 : signal is true;
    type i_mul106_1_resize_im3_cma_c0type is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal i_mul106_1_resize_im3_cma_c0 : i_mul106_1_resize_im3_cma_c0type(0 to 0);
    attribute preserve of i_mul106_1_resize_im3_cma_c0 : signal is true;
    type i_mul106_1_resize_im3_cma_ptype is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal i_mul106_1_resize_im3_cma_p : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_u : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_w : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_x : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_y : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_s : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_1_resize_im3_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul106_1_resize_im3_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul106_1_resize_im3_cma_ena0 : std_logic;
    signal i_mul106_1_resize_im3_cma_ena1 : std_logic;
    signal i_mul106_2_resize_im0_cma_reset : std_logic;
    signal i_mul106_2_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul106_2_resize_im0_cma_a0 : signal is true;
    signal i_mul106_2_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_2_resize_im0_cma_c0 : signal is true;
    signal i_mul106_2_resize_im0_cma_p : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_u : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_w : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_x : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_y : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_s : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im0_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_2_resize_im0_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_2_resize_im0_cma_ena0 : std_logic;
    signal i_mul106_2_resize_im0_cma_ena1 : std_logic;
    signal i_mul106_2_resize_im3_cma_reset : std_logic;
    signal i_mul106_2_resize_im3_cma_a0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_2_resize_im3_cma_a0 : signal is true;
    signal i_mul106_2_resize_im3_cma_c0 : i_mul106_1_resize_im3_cma_c0type(0 to 0);
    attribute preserve of i_mul106_2_resize_im3_cma_c0 : signal is true;
    signal i_mul106_2_resize_im3_cma_p : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_u : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_w : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_x : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_y : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_s : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_2_resize_im3_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul106_2_resize_im3_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul106_2_resize_im3_cma_ena0 : std_logic;
    signal i_mul106_2_resize_im3_cma_ena1 : std_logic;
    signal i_mul106_3_resize_im0_cma_reset : std_logic;
    signal i_mul106_3_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul106_3_resize_im0_cma_a0 : signal is true;
    signal i_mul106_3_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_3_resize_im0_cma_c0 : signal is true;
    signal i_mul106_3_resize_im0_cma_p : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_u : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_w : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_x : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_y : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_s : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im0_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_3_resize_im0_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_3_resize_im0_cma_ena0 : std_logic;
    signal i_mul106_3_resize_im0_cma_ena1 : std_logic;
    signal i_mul106_3_resize_im3_cma_reset : std_logic;
    signal i_mul106_3_resize_im3_cma_a0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_3_resize_im3_cma_a0 : signal is true;
    signal i_mul106_3_resize_im3_cma_c0 : i_mul106_1_resize_im3_cma_c0type(0 to 0);
    attribute preserve of i_mul106_3_resize_im3_cma_c0 : signal is true;
    signal i_mul106_3_resize_im3_cma_p : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_u : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_w : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_x : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_y : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_s : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_3_resize_im3_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul106_3_resize_im3_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul106_3_resize_im3_cma_ena0 : std_logic;
    signal i_mul106_3_resize_im3_cma_ena1 : std_logic;
    signal i_mul106_resize_im0_cma_reset : std_logic;
    signal i_mul106_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul106_resize_im0_cma_a0 : signal is true;
    signal i_mul106_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_resize_im0_cma_c0 : signal is true;
    signal i_mul106_resize_im0_cma_p : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_u : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_w : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_x : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_y : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_s : i_mul106_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul106_resize_im0_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_resize_im0_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul106_resize_im0_cma_ena0 : std_logic;
    signal i_mul106_resize_im0_cma_ena1 : std_logic;
    signal i_mul106_resize_im3_cma_reset : std_logic;
    signal i_mul106_resize_im3_cma_a0 : i_mul106_1_resize_im0_cma_c0type(0 to 0);
    attribute preserve of i_mul106_resize_im3_cma_a0 : signal is true;
    signal i_mul106_resize_im3_cma_c0 : i_mul106_1_resize_im3_cma_c0type(0 to 0);
    attribute preserve of i_mul106_resize_im3_cma_c0 : signal is true;
    signal i_mul106_resize_im3_cma_p : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_u : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_w : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_x : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_y : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_s : i_mul106_1_resize_im3_cma_ptype(0 to 0);
    signal i_mul106_resize_im3_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal i_mul106_resize_im3_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_mul106_resize_im3_cma_ena0 : std_logic;
    signal i_mul106_resize_im3_cma_ena1 : std_logic;
    signal i_mul75_1_resize_im0_cma_reset : std_logic;
    signal i_mul75_1_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_1_resize_im0_cma_a0 : signal is true;
    signal i_mul75_1_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_1_resize_im0_cma_c0 : signal is true;
    type i_mul75_1_resize_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul75_1_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_1_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_1_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_1_resize_im0_cma_ena0 : std_logic;
    signal i_mul75_1_resize_im0_cma_ena1 : std_logic;
    signal i_mul75_2_resize_im0_cma_reset : std_logic;
    signal i_mul75_2_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_2_resize_im0_cma_a0 : signal is true;
    signal i_mul75_2_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_2_resize_im0_cma_c0 : signal is true;
    signal i_mul75_2_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_2_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_2_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_2_resize_im0_cma_ena0 : std_logic;
    signal i_mul75_2_resize_im0_cma_ena1 : std_logic;
    signal i_mul75_3_resize_im0_cma_reset : std_logic;
    signal i_mul75_3_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_3_resize_im0_cma_a0 : signal is true;
    signal i_mul75_3_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_3_resize_im0_cma_c0 : signal is true;
    signal i_mul75_3_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_3_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_3_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_3_resize_im0_cma_ena0 : std_logic;
    signal i_mul75_3_resize_im0_cma_ena1 : std_logic;
    signal i_mul75_resize_im0_cma_reset : std_logic;
    signal i_mul75_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_resize_im0_cma_a0 : signal is true;
    signal i_mul75_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul75_resize_im0_cma_c0 : signal is true;
    signal i_mul75_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul75_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul75_resize_im0_cma_ena0 : std_logic;
    signal i_mul75_resize_im0_cma_ena1 : std_logic;
    signal i_mul87_1_resize_im0_cma_reset : std_logic;
    signal i_mul87_1_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_1_resize_im0_cma_a0 : signal is true;
    signal i_mul87_1_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_1_resize_im0_cma_c0 : signal is true;
    signal i_mul87_1_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_1_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_1_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_1_resize_im0_cma_ena0 : std_logic;
    signal i_mul87_1_resize_im0_cma_ena1 : std_logic;
    signal i_mul87_2_resize_im0_cma_reset : std_logic;
    signal i_mul87_2_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_2_resize_im0_cma_a0 : signal is true;
    signal i_mul87_2_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_2_resize_im0_cma_c0 : signal is true;
    signal i_mul87_2_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_2_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_2_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_2_resize_im0_cma_ena0 : std_logic;
    signal i_mul87_2_resize_im0_cma_ena1 : std_logic;
    signal i_mul87_3_resize_im0_cma_reset : std_logic;
    signal i_mul87_3_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_3_resize_im0_cma_a0 : signal is true;
    signal i_mul87_3_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_3_resize_im0_cma_c0 : signal is true;
    signal i_mul87_3_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_3_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_3_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_3_resize_im0_cma_ena0 : std_logic;
    signal i_mul87_3_resize_im0_cma_ena1 : std_logic;
    signal i_mul87_resize_im0_cma_reset : std_logic;
    signal i_mul87_resize_im0_cma_a0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_resize_im0_cma_a0 : signal is true;
    signal i_mul87_resize_im0_cma_c0 : i_mul106_1_resize_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul87_resize_im0_cma_c0 : signal is true;
    signal i_mul87_resize_im0_cma_p : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_u : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_w : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_x : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_y : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_s : i_mul75_1_resize_im0_cma_ptype(0 to 0);
    signal i_mul87_resize_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_resize_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul87_resize_im0_cma_ena0 : std_logic;
    signal i_mul87_resize_im0_cma_ena1 : std_logic;
    signal i_mul75_1_resize_ma3_cma_reset : std_logic;
    type i_mul75_1_resize_ma3_cma_a0type is array(NATURAL range <>) of UNSIGNED(7 downto 0);
    signal i_mul75_1_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul75_1_resize_ma3_cma_a0 : signal is true;
    type i_mul75_1_resize_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul75_1_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul75_1_resize_ma3_cma_c0 : signal is true;
    type i_mul75_1_resize_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(8 downto 0);
    signal i_mul75_1_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    type i_mul75_1_resize_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal i_mul75_1_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    type i_mul75_1_resize_ma3_cma_utype is array(NATURAL range <>) of SIGNED(28 downto 0);
    signal i_mul75_1_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul75_1_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_1_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_1_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_1_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_1_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_1_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_1_resize_ma3_cma_ena0 : std_logic;
    signal i_mul75_1_resize_ma3_cma_ena1 : std_logic;
    signal i_mul75_2_resize_ma3_cma_reset : std_logic;
    signal i_mul75_2_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul75_2_resize_ma3_cma_a0 : signal is true;
    signal i_mul75_2_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul75_2_resize_ma3_cma_c0 : signal is true;
    signal i_mul75_2_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul75_2_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul75_2_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul75_2_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_2_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_2_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_2_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_2_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_2_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_2_resize_ma3_cma_ena0 : std_logic;
    signal i_mul75_2_resize_ma3_cma_ena1 : std_logic;
    signal i_mul75_3_resize_ma3_cma_reset : std_logic;
    signal i_mul75_3_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul75_3_resize_ma3_cma_a0 : signal is true;
    signal i_mul75_3_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul75_3_resize_ma3_cma_c0 : signal is true;
    signal i_mul75_3_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul75_3_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul75_3_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul75_3_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_3_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_3_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_3_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_3_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_3_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_3_resize_ma3_cma_ena0 : std_logic;
    signal i_mul75_3_resize_ma3_cma_ena1 : std_logic;
    signal i_mul75_resize_ma3_cma_reset : std_logic;
    signal i_mul75_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul75_resize_ma3_cma_a0 : signal is true;
    signal i_mul75_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul75_resize_ma3_cma_c0 : signal is true;
    signal i_mul75_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul75_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul75_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul75_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul75_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul75_resize_ma3_cma_ena0 : std_logic;
    signal i_mul75_resize_ma3_cma_ena1 : std_logic;
    signal i_mul87_1_resize_ma3_cma_reset : std_logic;
    signal i_mul87_1_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul87_1_resize_ma3_cma_a0 : signal is true;
    signal i_mul87_1_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul87_1_resize_ma3_cma_c0 : signal is true;
    signal i_mul87_1_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul87_1_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul87_1_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul87_1_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_1_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_1_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_1_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_1_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_1_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_1_resize_ma3_cma_ena0 : std_logic;
    signal i_mul87_1_resize_ma3_cma_ena1 : std_logic;
    signal i_mul87_2_resize_ma3_cma_reset : std_logic;
    signal i_mul87_2_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul87_2_resize_ma3_cma_a0 : signal is true;
    signal i_mul87_2_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul87_2_resize_ma3_cma_c0 : signal is true;
    signal i_mul87_2_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul87_2_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul87_2_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul87_2_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_2_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_2_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_2_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_2_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_2_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_2_resize_ma3_cma_ena0 : std_logic;
    signal i_mul87_2_resize_ma3_cma_ena1 : std_logic;
    signal i_mul87_3_resize_ma3_cma_reset : std_logic;
    signal i_mul87_3_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul87_3_resize_ma3_cma_a0 : signal is true;
    signal i_mul87_3_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul87_3_resize_ma3_cma_c0 : signal is true;
    signal i_mul87_3_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul87_3_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul87_3_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul87_3_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_3_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_3_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_3_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_3_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_3_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_3_resize_ma3_cma_ena0 : std_logic;
    signal i_mul87_3_resize_ma3_cma_ena1 : std_logic;
    signal i_mul87_resize_ma3_cma_reset : std_logic;
    signal i_mul87_resize_ma3_cma_a0 : i_mul75_1_resize_ma3_cma_a0type(0 to 1);
    attribute preserve of i_mul87_resize_ma3_cma_a0 : signal is true;
    signal i_mul87_resize_ma3_cma_c0 : i_mul75_1_resize_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul87_resize_ma3_cma_c0 : signal is true;
    signal i_mul87_resize_ma3_cma_l : i_mul75_1_resize_ma3_cma_ltype(0 to 1);
    signal i_mul87_resize_ma3_cma_p : i_mul75_1_resize_ma3_cma_ptype(0 to 1);
    signal i_mul87_resize_ma3_cma_u : i_mul75_1_resize_ma3_cma_utype(0 to 1);
    signal i_mul87_resize_ma3_cma_w : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_resize_ma3_cma_x : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_resize_ma3_cma_y : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_resize_ma3_cma_s : i_mul75_1_resize_ma3_cma_utype(0 to 0);
    signal i_mul87_resize_ma3_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_resize_ma3_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul87_resize_ma3_cma_ena0 : std_logic;
    signal i_mul87_resize_ma3_cma_ena1 : std_logic;
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in : STD_LOGIC_VECTOR (119 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul106_1_resize_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul106_1_resize_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul106_2_resize_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul106_2_resize_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul106_3_resize_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul106_3_resize_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul106_resize_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul106_resize_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_1_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_2_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_2_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_3_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_3_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul75_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_1_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_2_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_2_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_3_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_3_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_resize_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul87_resize_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist4_i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist5_i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist8_i_mul87_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist9_i_mul87_3_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist10_i_mul87_2_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist11_i_mul87_1_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist12_i_mul75_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist13_i_mul75_3_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist14_i_mul75_2_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist15_i_mul75_1_resize_ma3_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist16_i_mul87_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist17_i_mul87_3_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist18_i_mul87_2_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist19_i_mul87_1_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist20_i_mul75_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist21_i_mul75_3_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist22_i_mul75_2_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist23_i_mul75_1_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist24_i_mul106_resize_im3_cma_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist25_i_mul106_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist26_i_mul106_3_resize_im3_cma_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist27_i_mul106_3_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist28_i_mul106_2_resize_im3_cma_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist29_i_mul106_2_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist30_i_mul106_1_resize_im3_cma_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist31_i_mul106_1_resize_im0_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist76_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist85_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist94_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist103_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist104_i_mul87_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist105_i_mul87_3_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist106_i_mul87_2_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist107_i_mul87_1_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist108_i_mul75_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist109_i_mul75_3_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist110_i_mul75_2_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist111_i_mul75_1_resize_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (43 downto 0);
    signal redist112_i_mul87_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist113_i_mul87_3_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist114_i_mul87_2_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist115_i_mul87_1_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist116_i_mul75_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist117_i_mul75_3_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist118_i_mul75_2_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist119_i_mul75_1_resize_im10_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist120_i_tmp120_resize_vt_select_31_b_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist121_i_tmp120_3_resize_vt_select_31_b_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist122_i_tmp120_2_resize_vt_select_31_b_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist123_i_tmp120_1_resize_vt_select_31_b_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist128_i_conv_i_resize_vt_select_7_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist129_i_conv_i40_resize_vt_join_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist130_i_conv5_i41_resize_vt_join_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist131_i_conv15_i_resize_vt_select_7_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist132_i_conv15_i43_resize_vt_join_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_i_conv10_i42_resize_vt_join_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist135_i_and84_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist136_i_and84_3_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist137_i_and84_2_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist138_i_and84_1_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist140_i_and72_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist141_i_and72_3_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist142_i_and72_2_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist143_i_and72_1_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist145_i_and104_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist146_i_and104_3_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist147_i_and104_2_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist148_i_and104_1_resize_vt_select_25_b_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist149_i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist150_i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist157_i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist158_i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist160_i_acl_resize_q_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist161_i_acl_748_resize_q_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist162_i_acl_747_resize_q_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist168_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist169_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist170_sync_in_aunroll_x_in_i_valid_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist171_i_conv_resize_sel_x_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist172_i_conv6_resize_sel_x_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist173_i_conv12_resize_sel_x_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist174_bgTrunc_i_sub99_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist175_bgTrunc_i_sub99_3_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist176_bgTrunc_i_sub99_2_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist177_bgTrunc_i_sub99_1_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist178_bgTrunc_i_mul106_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist179_bgTrunc_i_mul106_3_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist180_bgTrunc_i_mul106_2_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist181_bgTrunc_i_mul106_1_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist182_bgTrunc_i_add95_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist183_bgTrunc_i_add95_3_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist184_bgTrunc_i_add95_2_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist185_bgTrunc_i_add95_1_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist186_bgTrunc_i_add88_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist187_bgTrunc_i_add88_3_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist188_bgTrunc_i_add88_2_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist189_bgTrunc_i_add88_1_resize_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_inputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_reset0 : std_logic;
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i : signal is true;
    signal redist124_i_mul64_resize_vt_select_23_b_7_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only : boolean;
    attribute preserve_syn_only of redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q : signal is true;
    signal redist124_i_mul64_resize_vt_select_23_b_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_inputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_reset0 : std_logic;
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i : signal is true;
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q : signal is true;
    signal redist125_i_mul64_3_resize_vt_select_23_b_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_inputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_reset0 : std_logic;
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i : signal is true;
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q : signal is true;
    signal redist126_i_mul64_2_resize_vt_select_23_b_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_inputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_reset0 : std_logic;
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i : signal is true;
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q : signal is true;
    signal redist127_i_mul64_1_resize_vt_select_23_b_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_reset0 : std_logic;
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_ia : STD_LOGIC_VECTOR (25 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_iq : STD_LOGIC_VECTOR (25 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i : signal is true;
    signal redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq : std_logic;
    attribute preserve of redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq : signal is true;
    signal redist134_i_and85_resize_vt_select_25_b_4_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q : signal is true;
    signal redist134_i_and85_resize_vt_select_25_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_reset0 : std_logic;
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_ia : STD_LOGIC_VECTOR (25 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_iq : STD_LOGIC_VECTOR (25 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i : signal is true;
    signal redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq : std_logic;
    attribute preserve of redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq : signal is true;
    signal redist139_i_and73_resize_vt_select_25_b_4_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q : signal is true;
    signal redist139_i_and73_resize_vt_select_25_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_reset0 : std_logic;
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i : signal is true;
    signal redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq : signal is true;
    signal redist144_i_and105_resize_vt_select_15_b_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only of redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q : signal is true;
    signal redist144_i_and105_resize_vt_select_15_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist168_sync_in_aunroll_x_in_i_valid_2(DELAY,1386)
    redist168_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist168_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist169_sync_in_aunroll_x_in_i_valid_3(DELAY,1387)
    redist169_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist168_sync_in_aunroll_x_in_i_valid_2_q, xout => redist169_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist170_sync_in_aunroll_x_in_i_valid_11(DELAY,1388)
    redist170_sync_in_aunroll_x_in_i_valid_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist169_sync_in_aunroll_x_in_i_valid_3_q, xout => redist170_sync_in_aunroll_x_in_i_valid_11_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x(BITSELECT,695)@18
    leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_in <= bgTrunc_i_tmp_3_resize_sel_x_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_b <= leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid697_i_tmp120_3_resize_resize189_shift_x(BITJOIN,696)@18
    leftShiftStage0Idx1_uid697_i_tmp120_3_resize_resize189_shift_x_q <= leftShiftStage0Idx1Rng8_uid696_i_tmp120_3_resize_resize189_shift_x_b & c_i8_0gr_q;

    -- i_mul75_1_resize_multconst_x(CONSTANT,133)
    i_mul75_1_resize_multconst_x_q <= "000000000000";

    -- i_and73_resize_vt_const_31(CONSTANT,438)
    i_and73_resize_vt_const_31_q <= "000000";

    -- redist139_i_and73_resize_vt_select_25_b_4_notEnable(LOGICAL,1472)
    redist139_i_and73_resize_vt_select_25_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist139_i_and73_resize_vt_select_25_b_4_nor(LOGICAL,1473)
    redist139_i_and73_resize_vt_select_25_b_4_nor_q <= not (redist139_i_and73_resize_vt_select_25_b_4_notEnable_q or redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q);

    -- redist139_i_and73_resize_vt_select_25_b_4_mem_last(CONSTANT,1469)
    redist139_i_and73_resize_vt_select_25_b_4_mem_last_q <= "01";

    -- redist139_i_and73_resize_vt_select_25_b_4_cmp(LOGICAL,1470)
    redist139_i_and73_resize_vt_select_25_b_4_cmp_q <= "1" WHEN redist139_i_and73_resize_vt_select_25_b_4_mem_last_q = redist139_i_and73_resize_vt_select_25_b_4_rdcnt_q ELSE "0";

    -- redist139_i_and73_resize_vt_select_25_b_4_cmpReg(REG,1471)
    redist139_i_and73_resize_vt_select_25_b_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist139_i_and73_resize_vt_select_25_b_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist139_i_and73_resize_vt_select_25_b_4_cmpReg_q <= STD_LOGIC_VECTOR(redist139_i_and73_resize_vt_select_25_b_4_cmp_q);
        END IF;
    END PROCESS;

    -- redist139_i_and73_resize_vt_select_25_b_4_sticky_ena(REG,1474)
    redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist139_i_and73_resize_vt_select_25_b_4_nor_q = "1") THEN
                redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist139_i_and73_resize_vt_select_25_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist139_i_and73_resize_vt_select_25_b_4_enaAnd(LOGICAL,1475)
    redist139_i_and73_resize_vt_select_25_b_4_enaAnd_q <= redist139_i_and73_resize_vt_select_25_b_4_sticky_ena_q and VCC_q;

    -- redist139_i_and73_resize_vt_select_25_b_4_rdcnt(COUNTER,1467)
    -- low=0, high=2, step=1, init=0
    redist139_i_and73_resize_vt_select_25_b_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq <= '1';
            ELSE
                redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq <= '0';
            END IF;
            IF (redist139_i_and73_resize_vt_select_25_b_4_rdcnt_eq = '1') THEN
                redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i <= redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i + 2;
            ELSE
                redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i <= redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist139_i_and73_resize_vt_select_25_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist139_i_and73_resize_vt_select_25_b_4_rdcnt_i, 2)));

    -- c_i32_67108863(CONSTANT,355)
    c_i32_67108863_q <= "00000011111111111111111111111111";

    -- i_and73_resize(LOGICAL,437)@9
    i_and73_resize_q <= in_c0_eni7_5 and c_i32_67108863_q;

    -- i_and73_resize_vt_select_25(BITSELECT,440)@9
    i_and73_resize_vt_select_25_b <= i_and73_resize_q(25 downto 0);

    -- redist139_i_and73_resize_vt_select_25_b_4_wraddr(REG,1468)
    redist139_i_and73_resize_vt_select_25_b_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist139_i_and73_resize_vt_select_25_b_4_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist139_i_and73_resize_vt_select_25_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist139_i_and73_resize_vt_select_25_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist139_i_and73_resize_vt_select_25_b_4_mem(DUALMEM,1466)
    redist139_i_and73_resize_vt_select_25_b_4_mem_ia <= STD_LOGIC_VECTOR(i_and73_resize_vt_select_25_b);
    redist139_i_and73_resize_vt_select_25_b_4_mem_aa <= redist139_i_and73_resize_vt_select_25_b_4_wraddr_q;
    redist139_i_and73_resize_vt_select_25_b_4_mem_ab <= redist139_i_and73_resize_vt_select_25_b_4_rdcnt_q;
    redist139_i_and73_resize_vt_select_25_b_4_mem_reset0 <= not (resetn);
    redist139_i_and73_resize_vt_select_25_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 26,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 26,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist139_i_and73_resize_vt_select_25_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist139_i_and73_resize_vt_select_25_b_4_mem_reset0,
        clock1 => clock,
        address_a => redist139_i_and73_resize_vt_select_25_b_4_mem_aa,
        data_a => redist139_i_and73_resize_vt_select_25_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist139_i_and73_resize_vt_select_25_b_4_mem_ab,
        q_b => redist139_i_and73_resize_vt_select_25_b_4_mem_iq
    );
    redist139_i_and73_resize_vt_select_25_b_4_mem_q <= redist139_i_and73_resize_vt_select_25_b_4_mem_iq(25 downto 0);

    -- i_and73_resize_vt_join(BITJOIN,439)@13
    i_and73_resize_vt_join_q <= i_and73_resize_vt_const_31_q & redist139_i_and73_resize_vt_select_25_b_4_mem_q;

    -- dupName_0_i_and73_resize_vt_join_narrowed_x(BITSELECT,48)@13
    dupName_0_i_and73_resize_vt_join_narrowed_x_b <= i_and73_resize_vt_join_q(25 downto 0);

    -- i_mul75_1_resize_bs4(BITSELECT,817)@13
    i_mul75_1_resize_bs4_in <= STD_LOGIC_VECTOR(dupName_0_i_and73_resize_vt_join_narrowed_x_b(17 downto 0));
    i_mul75_1_resize_bs4_b <= STD_LOGIC_VECTOR(i_mul75_1_resize_bs4_in(17 downto 0));

    -- i_mul75_1_resize_bjA5(BITJOIN,818)@13
    i_mul75_1_resize_bjA5_q <= GND_q & i_mul75_1_resize_bs4_b;

    -- i_conv10_i28_resize_vt_const_31(CONSTANT,465)
    i_conv10_i28_resize_vt_const_31_q <= "000000000000000000000000";

    -- redist165_sync_in_aunroll_x_in_c0_eni7_2_2(DELAY,1383)
    redist165_sync_in_aunroll_x_in_c0_eni7_2_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni7_2, xout => redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_729_0_3_1_push11_resize(BLACKBOX,388)@11
    -- out out_feedback_out_11@20000000
    -- out out_feedback_valid_out_11@20000000
    thei_acl_push_i8_buf_729_0_3_1_push11_resize : i_acl_push_i8_buf_729_0_3_1_push11_resize158
    PORT MAP (
        in_c0_ene2 => redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q,
        in_data_in => i_acl_resize_q,
        in_feedback_stall_in_11 => i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_feedback_stall_out_11,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_11 => i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_out_11,
        out_feedback_valid_out_11 => i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_valid_out_11,
        clock => clock,
        resetn => resetn
    );

    -- redist163_sync_in_aunroll_x_in_c0_eni7_1_2(DELAY,1381)
    redist163_sync_in_aunroll_x_in_c0_eni7_1_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni7_1, xout => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i8_buf_729_0_3_1_pop11_resize(BLACKBOX,375)@11
    -- out out_feedback_stall_out_11@20000000
    thei_acl_pop_i8_buf_729_0_3_1_pop11_resize : i_acl_pop_i8_buf_729_0_3_1_pop11_resize150
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q,
        in_feedback_in_11 => i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_out_11,
        in_feedback_valid_in_11 => i_acl_push_i8_buf_729_0_3_1_push11_resize_out_feedback_valid_out_11,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out,
        out_feedback_stall_out_11 => i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_feedback_stall_out_11,
        clock => clock,
        resetn => resetn
    );

    -- redist167_sync_in_aunroll_x_in_c0_eni7_4_2(DELAY,1385)
    redist167_sync_in_aunroll_x_in_c0_eni7_4_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni7_4, xout => redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q, clk => clock, aclr => resetn );

    -- i_acl_resize(MUX,362)@11
    i_acl_resize_s <= redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q;
    i_acl_resize_combproc: PROCESS (i_acl_resize_s, i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out, c_i8_0gr_q)
    BEGIN
        CASE (i_acl_resize_s) IS
            WHEN "0" => i_acl_resize_q <= i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out;
            WHEN "1" => i_acl_resize_q <= c_i8_0gr_q;
            WHEN OTHERS => i_acl_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist160_i_acl_resize_q_1(DELAY,1378)
    redist160_i_acl_resize_q_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_resize_q, xout => redist160_i_acl_resize_q_1_q, clk => clock, aclr => resetn );

    -- i_conv15_i29_resize_sel_x(BITSELECT,94)@12
    i_conv15_i29_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist160_i_acl_resize_q_1_q(7 downto 0)), 32));

    -- i_conv15_i29_resize_vt_select_7(BITSELECT,484)@12
    i_conv15_i29_resize_vt_select_7_b <= i_conv15_i29_resize_sel_x_b(7 downto 0);

    -- i_conv15_i29_resize_vt_join(BITJOIN,483)@12
    i_conv15_i29_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv15_i29_resize_vt_select_7_b;

    -- i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize(BLACKBOX,384)@11
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize : i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152
    PORT MAP (
        in_data_in => i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out,
        in_feedback_stall_in_4 => i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_feedback_stall_out_4,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_4 => i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_coalesce_counter_lobit_resize_vt_const_10(CONSTANT,461)
    i_coalesce_counter_lobit_resize_vt_const_10_q <= "0000000000";

    -- c_i11_1gr(CONSTANT,350)
    c_i11_1gr_q <= "00000000001";

    -- rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x(CONSTANT,614)
    rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= "00";

    -- rightShiftStage1Idx1Rng2_uid614_i_coalesce_counter_lobit_resize_resize128_shift_x(BITSELECT,613)@9
    rightShiftStage1Idx1Rng2_uid614_i_coalesce_counter_lobit_resize_resize128_shift_x_b <= rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q(10 downto 2);

    -- rightShiftStage1Idx1_uid616_i_coalesce_counter_lobit_resize_resize128_shift_x(BITJOIN,615)@9
    rightShiftStage1Idx1_uid616_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & rightShiftStage1Idx1Rng2_uid614_i_coalesce_counter_lobit_resize_resize128_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid609_i_coalesce_counter_lobit_resize_resize128_shift_x(BITSELECT,608)@9
    rightShiftStage0Idx1Rng8_uid609_i_coalesce_counter_lobit_resize_resize128_shift_x_b <= i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out(10 downto 8);

    -- rightShiftStage0Idx1_uid611_i_coalesce_counter_lobit_resize_resize128_shift_x(BITJOIN,610)@9
    rightShiftStage0Idx1_uid611_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid609_i_coalesce_counter_lobit_resize_resize128_shift_x_b;

    -- rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x(MUX,612)@9
    rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_s <= VCC_q;
    rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_combproc: PROCESS (rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_s, i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out, rightShiftStage0Idx1_uid611_i_coalesce_counter_lobit_resize_resize128_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out;
            WHEN "1" => rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= rightShiftStage0Idx1_uid611_i_coalesce_counter_lobit_resize_resize128_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x(MUX,617)@9
    rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_s <= VCC_q;
    rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_combproc: PROCESS (rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_s, rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q, rightShiftStage1Idx1_uid616_i_coalesce_counter_lobit_resize_resize128_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= rightShiftStage0_uid613_i_coalesce_counter_lobit_resize_resize128_shift_x_q;
            WHEN "1" => rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= rightShiftStage1Idx1_uid616_i_coalesce_counter_lobit_resize_resize128_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_coalesce_counter_lobit_resize_vt_select_0(BITSELECT,463)@9
    i_coalesce_counter_lobit_resize_vt_select_0_b <= rightShiftStage1_uid618_i_coalesce_counter_lobit_resize_resize128_shift_x_q(0 downto 0);

    -- i_coalesce_counter_lobit_resize_vt_join(BITJOIN,462)@9
    i_coalesce_counter_lobit_resize_vt_join_q <= i_coalesce_counter_lobit_resize_vt_const_10_q & i_coalesce_counter_lobit_resize_vt_select_0_b;

    -- i_next_coalesce_select_resize(LOGICAL,560)@9
    i_next_coalesce_select_resize_q <= i_coalesce_counter_lobit_resize_vt_join_q xor c_i11_1gr_q;

    -- i_next_coalesce_select_resize_vt_select_0(BITSELECT,563)@9
    i_next_coalesce_select_resize_vt_select_0_b <= i_next_coalesce_select_resize_q(0 downto 0);

    -- i_next_coalesce_select_resize_vt_join(BITJOIN,562)@9
    i_next_coalesce_select_resize_vt_join_q <= i_coalesce_counter_lobit_resize_vt_const_10_q & i_next_coalesce_select_resize_vt_select_0_b;

    -- i_next_coalesce_resize(SUB,559)@9
    i_next_coalesce_resize_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out);
    i_next_coalesce_resize_b <= STD_LOGIC_VECTOR("0" & i_next_coalesce_select_resize_vt_join_q);
    i_next_coalesce_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_next_coalesce_resize_a) - UNSIGNED(i_next_coalesce_resize_b));
    i_next_coalesce_resize_q <= i_next_coalesce_resize_o(11 downto 0);

    -- bgTrunc_i_next_coalesce_resize_sel_x(BITSELECT,26)@9
    bgTrunc_i_next_coalesce_resize_sel_x_b <= STD_LOGIC_VECTOR(i_next_coalesce_resize_q(10 downto 0));

    -- i_acl_push_i11_coalesce_counter_push27_resize(BLACKBOX,376)@9
    -- out out_feedback_out_27@20000000
    -- out out_feedback_valid_out_27@20000000
    thei_acl_push_i11_coalesce_counter_push27_resize : i_acl_push_i11_coalesce_counter_push27_resize154
    PORT MAP (
        in_c0_ene2 => in_c0_eni7_2,
        in_data_in => bgTrunc_i_next_coalesce_resize_sel_x_b,
        in_feedback_stall_in_27 => i_acl_pop_i11_coalesce_counter_pop27_resize_out_feedback_stall_out_27,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_27 => i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_out_27,
        out_feedback_valid_out_27 => i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_valid_out_27,
        clock => clock,
        resetn => resetn
    );

    -- c_i11_726(CONSTANT,351)
    c_i11_726_q <= "01011010110";

    -- i_acl_pop_i11_coalesce_counter_pop27_resize(BLACKBOX,363)@9
    -- out out_feedback_stall_out_27@20000000
    thei_acl_pop_i11_coalesce_counter_pop27_resize : i_acl_pop_i11_coalesce_counter_pop27_resize126
    PORT MAP (
        in_data_in => c_i11_726_q,
        in_dir => in_c0_eni7_1,
        in_feedback_in_27 => i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_out_27,
        in_feedback_valid_in_27 => i_acl_push_i11_coalesce_counter_push27_resize_out_feedback_valid_out_27,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out,
        out_feedback_stall_out_27 => i_acl_pop_i11_coalesce_counter_pop27_resize_out_feedback_stall_out_27,
        clock => clock,
        resetn => resetn
    );

    -- redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1(DELAY,1377)
    redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out, xout => redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- dupName_0_c_i11_1gr_x(CONSTANT,50)
    dupName_0_c_i11_1gr_x_q <= "11111111111";

    -- i_not_select781_resize(COMPARE,564)@10 + 1
    i_not_select781_resize_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => dupName_0_c_i11_1gr_x_q(10)) & dupName_0_c_i11_1gr_x_q));
    i_not_select781_resize_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1_q(10)) & redist159_i_acl_pop_i11_coalesce_counter_pop27_resize_out_data_out_1_q));
    i_not_select781_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_not_select781_resize_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_not_select781_resize_o <= STD_LOGIC_VECTOR(SIGNED(i_not_select781_resize_a) - SIGNED(i_not_select781_resize_b));
        END IF;
    END PROCESS;
    i_not_select781_resize_c(0) <= i_not_select781_resize_o(12);

    -- i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize(BLACKBOX,371)@11
    -- out out_feedback_stall_out_4@20000000
    thei_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize : i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => i_not_select781_resize_c,
        in_feedback_in_4 => i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_out_4,
        in_feedback_valid_in_4 => i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize_out_feedback_valid_out_4,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out,
        out_feedback_stall_out_4 => i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_feedback_stall_out_4,
        clock => clock,
        resetn => resetn
    );

    -- redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1(DELAY,1371)
    redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out, xout => redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv15_i57_resize_sel_x(BITSELECT,96)@12
    i_conv15_i57_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv15_i57_resize_vt_select_7(BITSELECT,492)@12
    i_conv15_i57_resize_vt_select_7_b <= i_conv15_i57_resize_sel_x_b(7 downto 0);

    -- i_conv15_i57_resize_vt_join(BITJOIN,491)@12
    i_conv15_i57_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv15_i57_resize_vt_select_7_b;

    -- i_sub71_3_resize(SUB,577)@12
    i_sub71_3_resize_a <= STD_LOGIC_VECTOR("0" & i_conv15_i57_resize_vt_join_q);
    i_sub71_3_resize_b <= STD_LOGIC_VECTOR("0" & i_conv15_i29_resize_vt_join_q);
    i_sub71_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub71_3_resize_a) - UNSIGNED(i_sub71_3_resize_b));
    i_sub71_3_resize_q <= i_sub71_3_resize_o(32 downto 0);

    -- bgTrunc_i_sub71_3_resize_sel_x(BITSELECT,33)@12
    bgTrunc_i_sub71_3_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub71_3_resize_q(31 downto 0));

    -- i_and72_3_resize(LOGICAL,429)@12
    i_and72_3_resize_q <= bgTrunc_i_sub71_3_resize_sel_x_b and c_i32_67108863_q;

    -- i_and72_3_resize_vt_select_25(BITSELECT,432)@12
    i_and72_3_resize_vt_select_25_b <= i_and72_3_resize_q(25 downto 0);

    -- redist141_i_and72_3_resize_vt_select_25_b_1(DELAY,1359)
    redist141_i_and72_3_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and72_3_resize_vt_select_25_b, xout => redist141_i_and72_3_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_bs2_merged_bit_select(BITSELECT,1204)@13
    i_mul75_3_resize_bs2_merged_bit_select_b <= redist141_i_and72_3_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul75_3_resize_bs2_merged_bit_select_c <= redist141_i_and72_3_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul75_3_resize_bjB9(BITJOIN,856)@13
    i_mul75_3_resize_bjB9_q <= GND_q & i_mul75_3_resize_bs2_merged_bit_select_b;

    -- i_mul75_1_resize_bs7(BITSELECT,820)@13
    i_mul75_1_resize_bs7_b <= STD_LOGIC_VECTOR(dupName_0_i_and73_resize_vt_join_narrowed_x_b(25 downto 18));

    -- i_mul75_3_resize_ma3_cma(CHAINMULTADD,1191)@13 + 2
    i_mul75_3_resize_ma3_cma_reset <= not (resetn);
    i_mul75_3_resize_ma3_cma_ena0 <= '1';
    i_mul75_3_resize_ma3_cma_ena1 <= i_mul75_3_resize_ma3_cma_ena0;
    i_mul75_3_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul75_3_resize_ma3_cma_a0(0),9));
    i_mul75_3_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul75_3_resize_ma3_cma_a0(1),9));
    i_mul75_3_resize_ma3_cma_p(0) <= i_mul75_3_resize_ma3_cma_l(0) * i_mul75_3_resize_ma3_cma_c0(0);
    i_mul75_3_resize_ma3_cma_p(1) <= i_mul75_3_resize_ma3_cma_l(1) * i_mul75_3_resize_ma3_cma_c0(1);
    i_mul75_3_resize_ma3_cma_u(0) <= RESIZE(i_mul75_3_resize_ma3_cma_p(0),29);
    i_mul75_3_resize_ma3_cma_u(1) <= RESIZE(i_mul75_3_resize_ma3_cma_p(1),29);
    i_mul75_3_resize_ma3_cma_w(0) <= i_mul75_3_resize_ma3_cma_u(0) + i_mul75_3_resize_ma3_cma_u(1);
    i_mul75_3_resize_ma3_cma_x(0) <= i_mul75_3_resize_ma3_cma_w(0);
    i_mul75_3_resize_ma3_cma_y(0) <= i_mul75_3_resize_ma3_cma_x(0);
    i_mul75_3_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul75_3_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_3_resize_ma3_cma_ena0 = '1') THEN
                i_mul75_3_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs7_b),8);
                i_mul75_3_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul75_3_resize_bs2_merged_bit_select_c),8);
                i_mul75_3_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul75_3_resize_bjB9_q),19);
                i_mul75_3_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul75_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_3_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_3_resize_ma3_cma_ena1 = '1') THEN
                i_mul75_3_resize_ma3_cma_s(0) <= i_mul75_3_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_3_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_3_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul75_3_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul75_3_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul75_3_resize_ma3_cma_qq(27 downto 0));

    -- redist13_i_mul75_3_resize_ma3_cma_q_1(DELAY,1231)
    redist13_i_mul75_3_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_ma3_cma_q, xout => redist13_i_mul75_3_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_align_14(BITSHIFT,861)@16
    i_mul75_3_resize_align_14_qint <= redist13_i_mul75_3_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul75_3_resize_align_14_q <= i_mul75_3_resize_align_14_qint(45 downto 0);

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1071)@16
    i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul75_3_resize_align_14_q(43 downto 0));

    -- i_mul75_1_resize_bs11(BITSELECT,824)@13
    i_mul75_1_resize_bs11_b <= dupName_0_i_and73_resize_vt_join_narrowed_x_b(25 downto 18);

    -- i_mul75_3_resize_im10(MULT,857)@13 + 2
    i_mul75_3_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul75_3_resize_im10_a0) * UNSIGNED(i_mul75_3_resize_im10_b0));
    i_mul75_3_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_im10_a0 <= (others => '0');
            i_mul75_3_resize_im10_b0 <= (others => '0');
            i_mul75_3_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_3_resize_im10_a0 <= i_mul75_1_resize_bs11_b;
            i_mul75_3_resize_im10_b0 <= i_mul75_3_resize_bs2_merged_bit_select_c;
            i_mul75_3_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul75_3_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul75_3_resize_im10_q <= i_mul75_3_resize_im10_s1;

    -- redist117_i_mul75_3_resize_im10_q_1(DELAY,1335)
    redist117_i_mul75_3_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_im10_q, xout => redist117_i_mul75_3_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1212)@16
    i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist117_i_mul75_3_resize_im10_q_1_q(7 downto 0));
    i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist117_i_mul75_3_resize_im10_q_1_q(15 downto 8));

    -- i_mul75_1_resize_bs1(BITSELECT,814)@13
    i_mul75_1_resize_bs1_in <= dupName_0_i_and73_resize_vt_join_narrowed_x_b(17 downto 0);
    i_mul75_1_resize_bs1_b <= i_mul75_1_resize_bs1_in(17 downto 0);

    -- i_mul75_3_resize_im0_cma(CHAINMULTADD,1183)@13 + 2
    i_mul75_3_resize_im0_cma_reset <= not (resetn);
    i_mul75_3_resize_im0_cma_ena0 <= '1';
    i_mul75_3_resize_im0_cma_ena1 <= i_mul75_3_resize_im0_cma_ena0;
    i_mul75_3_resize_im0_cma_p(0) <= i_mul75_3_resize_im0_cma_a0(0) * i_mul75_3_resize_im0_cma_c0(0);
    i_mul75_3_resize_im0_cma_u(0) <= RESIZE(i_mul75_3_resize_im0_cma_p(0),36);
    i_mul75_3_resize_im0_cma_w(0) <= i_mul75_3_resize_im0_cma_u(0);
    i_mul75_3_resize_im0_cma_x(0) <= i_mul75_3_resize_im0_cma_w(0);
    i_mul75_3_resize_im0_cma_y(0) <= i_mul75_3_resize_im0_cma_x(0);
    i_mul75_3_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul75_3_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_3_resize_im0_cma_ena0 = '1') THEN
                i_mul75_3_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs1_b),18);
                i_mul75_3_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul75_3_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_3_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_3_resize_im0_cma_ena1 = '1') THEN
                i_mul75_3_resize_im0_cma_s(0) <= i_mul75_3_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_3_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_3_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul75_3_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul75_3_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul75_3_resize_im0_cma_qq(35 downto 0));

    -- redist21_i_mul75_3_resize_im0_cma_q_1(DELAY,1239)
    redist21_i_mul75_3_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_im0_cma_q, xout => redist21_i_mul75_3_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1067)@16
    i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist21_i_mul75_3_resize_im0_cma_q_1_q;

    -- i_mul75_3_resize_result_add_0_0_p1_of_2(ADD,976)@16 + 1
    i_mul75_3_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul75_3_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul75_3_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_3_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul75_3_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul75_3_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_3_resize_result_add_0_0_p1_of_2_c(0) <= i_mul75_3_resize_result_add_0_0_p1_of_2_o(44);
    i_mul75_3_resize_result_add_0_0_p1_of_2_q <= i_mul75_3_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1074)@16
    i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul75_3_resize_align_14_q(45 downto 45));

    -- redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1295)
    redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1073)@16
    i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul75_3_resize_align_14_q(45 downto 44));

    -- redist85_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1303)
    redist85_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist85_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1082)@17
    i_mul75_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist77_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist85_i_mul75_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist5_i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1223)
    redist5_i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist5_i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1070)@17
    i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist5_i_mul75_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul75_3_resize_result_add_0_0_p2_of_2(ADD,977)@17 + 1
    i_mul75_3_resize_result_add_0_0_p2_of_2_cin <= i_mul75_3_resize_result_add_0_0_p1_of_2_c;
    i_mul75_3_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul75_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul75_3_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul75_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul75_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul75_3_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul75_3_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_3_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_3_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul75_3_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul75_3_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_3_resize_result_add_0_0_p2_of_2_q <= i_mul75_3_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist109_i_mul75_3_resize_result_add_0_0_p1_of_2_q_1(DELAY,1327)
    redist109_i_mul75_3_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_3_resize_result_add_0_0_p1_of_2_q, xout => redist109_i_mul75_3_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_3_resize_result_add_0_0_BitJoin_for_q(BITJOIN,978)@18
    i_mul75_3_resize_result_add_0_0_BitJoin_for_q_q <= i_mul75_3_resize_result_add_0_0_p2_of_2_q & redist109_i_mul75_3_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul75_3_resize_extender_x(BITJOIN,136)@18
    i_mul75_3_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul75_3_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul75_3_resize_sel_x(BITSELECT,20)@18
    bgTrunc_i_mul75_3_resize_sel_x_b <= i_mul75_3_resize_extender_x_q(31 downto 0);

    -- redist134_i_and85_resize_vt_select_25_b_4_notEnable(LOGICAL,1462)
    redist134_i_and85_resize_vt_select_25_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist134_i_and85_resize_vt_select_25_b_4_nor(LOGICAL,1463)
    redist134_i_and85_resize_vt_select_25_b_4_nor_q <= not (redist134_i_and85_resize_vt_select_25_b_4_notEnable_q or redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q);

    -- redist134_i_and85_resize_vt_select_25_b_4_mem_last(CONSTANT,1459)
    redist134_i_and85_resize_vt_select_25_b_4_mem_last_q <= "01";

    -- redist134_i_and85_resize_vt_select_25_b_4_cmp(LOGICAL,1460)
    redist134_i_and85_resize_vt_select_25_b_4_cmp_q <= "1" WHEN redist134_i_and85_resize_vt_select_25_b_4_mem_last_q = redist134_i_and85_resize_vt_select_25_b_4_rdcnt_q ELSE "0";

    -- redist134_i_and85_resize_vt_select_25_b_4_cmpReg(REG,1461)
    redist134_i_and85_resize_vt_select_25_b_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist134_i_and85_resize_vt_select_25_b_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist134_i_and85_resize_vt_select_25_b_4_cmpReg_q <= STD_LOGIC_VECTOR(redist134_i_and85_resize_vt_select_25_b_4_cmp_q);
        END IF;
    END PROCESS;

    -- redist134_i_and85_resize_vt_select_25_b_4_sticky_ena(REG,1464)
    redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist134_i_and85_resize_vt_select_25_b_4_nor_q = "1") THEN
                redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist134_i_and85_resize_vt_select_25_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist134_i_and85_resize_vt_select_25_b_4_enaAnd(LOGICAL,1465)
    redist134_i_and85_resize_vt_select_25_b_4_enaAnd_q <= redist134_i_and85_resize_vt_select_25_b_4_sticky_ena_q and VCC_q;

    -- redist134_i_and85_resize_vt_select_25_b_4_rdcnt(COUNTER,1457)
    -- low=0, high=2, step=1, init=0
    redist134_i_and85_resize_vt_select_25_b_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq <= '1';
            ELSE
                redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq <= '0';
            END IF;
            IF (redist134_i_and85_resize_vt_select_25_b_4_rdcnt_eq = '1') THEN
                redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i <= redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i + 2;
            ELSE
                redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i <= redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist134_i_and85_resize_vt_select_25_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist134_i_and85_resize_vt_select_25_b_4_rdcnt_i, 2)));

    -- i_and85_resize(LOGICAL,457)@9
    i_and85_resize_q <= in_c0_eni7_6 and c_i32_67108863_q;

    -- i_and85_resize_vt_select_25(BITSELECT,460)@9
    i_and85_resize_vt_select_25_b <= i_and85_resize_q(25 downto 0);

    -- redist134_i_and85_resize_vt_select_25_b_4_wraddr(REG,1458)
    redist134_i_and85_resize_vt_select_25_b_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist134_i_and85_resize_vt_select_25_b_4_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist134_i_and85_resize_vt_select_25_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist134_i_and85_resize_vt_select_25_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist134_i_and85_resize_vt_select_25_b_4_mem(DUALMEM,1456)
    redist134_i_and85_resize_vt_select_25_b_4_mem_ia <= STD_LOGIC_VECTOR(i_and85_resize_vt_select_25_b);
    redist134_i_and85_resize_vt_select_25_b_4_mem_aa <= redist134_i_and85_resize_vt_select_25_b_4_wraddr_q;
    redist134_i_and85_resize_vt_select_25_b_4_mem_ab <= redist134_i_and85_resize_vt_select_25_b_4_rdcnt_q;
    redist134_i_and85_resize_vt_select_25_b_4_mem_reset0 <= not (resetn);
    redist134_i_and85_resize_vt_select_25_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 26,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 26,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist134_i_and85_resize_vt_select_25_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist134_i_and85_resize_vt_select_25_b_4_mem_reset0,
        clock1 => clock,
        address_a => redist134_i_and85_resize_vt_select_25_b_4_mem_aa,
        data_a => redist134_i_and85_resize_vt_select_25_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist134_i_and85_resize_vt_select_25_b_4_mem_ab,
        q_b => redist134_i_and85_resize_vt_select_25_b_4_mem_iq
    );
    redist134_i_and85_resize_vt_select_25_b_4_mem_q <= redist134_i_and85_resize_vt_select_25_b_4_mem_iq(25 downto 0);

    -- i_and85_resize_vt_join(BITJOIN,459)@13
    i_and85_resize_vt_join_q <= i_and73_resize_vt_const_31_q & redist134_i_and85_resize_vt_select_25_b_4_mem_q;

    -- dupName_0_i_and85_resize_vt_join_narrowed_x(BITSELECT,49)@13
    dupName_0_i_and85_resize_vt_join_narrowed_x_b <= i_and85_resize_vt_join_q(25 downto 0);

    -- i_mul87_1_resize_bs4(BITSELECT,885)@13
    i_mul87_1_resize_bs4_in <= STD_LOGIC_VECTOR(dupName_0_i_and85_resize_vt_join_narrowed_x_b(17 downto 0));
    i_mul87_1_resize_bs4_b <= STD_LOGIC_VECTOR(i_mul87_1_resize_bs4_in(17 downto 0));

    -- i_mul87_1_resize_bjA5(BITJOIN,886)@13
    i_mul87_1_resize_bjA5_q <= GND_q & i_mul87_1_resize_bs4_b;

    -- redist149_i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out_1(DELAY,1367)
    redist149_i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out, xout => redist149_i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv15_i43_resize_sel_x(BITSELECT,95)@12
    i_conv15_i43_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist149_i_acl_pop_i8_buf_729_0_3_1_pop11_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv15_i43_resize_vt_select_7(BITSELECT,488)@12
    i_conv15_i43_resize_vt_select_7_b <= i_conv15_i43_resize_sel_x_b(7 downto 0);

    -- i_conv15_i43_resize_vt_join(BITJOIN,487)@12
    i_conv15_i43_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv15_i43_resize_vt_select_7_b;

    -- i_sub83_3_resize(SUB,581)@12
    i_sub83_3_resize_a <= STD_LOGIC_VECTOR("0" & i_conv15_i43_resize_vt_join_q);
    i_sub83_3_resize_b <= STD_LOGIC_VECTOR("0" & i_conv15_i29_resize_vt_join_q);
    i_sub83_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub83_3_resize_a) - UNSIGNED(i_sub83_3_resize_b));
    i_sub83_3_resize_q <= i_sub83_3_resize_o(32 downto 0);

    -- bgTrunc_i_sub83_3_resize_sel_x(BITSELECT,37)@12
    bgTrunc_i_sub83_3_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub83_3_resize_q(31 downto 0));

    -- i_and84_3_resize(LOGICAL,449)@12
    i_and84_3_resize_q <= bgTrunc_i_sub83_3_resize_sel_x_b and c_i32_67108863_q;

    -- i_and84_3_resize_vt_select_25(BITSELECT,452)@12
    i_and84_3_resize_vt_select_25_b <= i_and84_3_resize_q(25 downto 0);

    -- redist136_i_and84_3_resize_vt_select_25_b_1(DELAY,1354)
    redist136_i_and84_3_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and84_3_resize_vt_select_25_b, xout => redist136_i_and84_3_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_bs2_merged_bit_select(BITSELECT,1208)@13
    i_mul87_3_resize_bs2_merged_bit_select_b <= redist136_i_and84_3_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul87_3_resize_bs2_merged_bit_select_c <= redist136_i_and84_3_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul87_3_resize_bjB9(BITJOIN,924)@13
    i_mul87_3_resize_bjB9_q <= GND_q & i_mul87_3_resize_bs2_merged_bit_select_b;

    -- i_mul87_1_resize_bs7(BITSELECT,888)@13
    i_mul87_1_resize_bs7_b <= STD_LOGIC_VECTOR(dupName_0_i_and85_resize_vt_join_narrowed_x_b(25 downto 18));

    -- i_mul87_3_resize_ma3_cma(CHAINMULTADD,1195)@13 + 2
    i_mul87_3_resize_ma3_cma_reset <= not (resetn);
    i_mul87_3_resize_ma3_cma_ena0 <= '1';
    i_mul87_3_resize_ma3_cma_ena1 <= i_mul87_3_resize_ma3_cma_ena0;
    i_mul87_3_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul87_3_resize_ma3_cma_a0(0),9));
    i_mul87_3_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul87_3_resize_ma3_cma_a0(1),9));
    i_mul87_3_resize_ma3_cma_p(0) <= i_mul87_3_resize_ma3_cma_l(0) * i_mul87_3_resize_ma3_cma_c0(0);
    i_mul87_3_resize_ma3_cma_p(1) <= i_mul87_3_resize_ma3_cma_l(1) * i_mul87_3_resize_ma3_cma_c0(1);
    i_mul87_3_resize_ma3_cma_u(0) <= RESIZE(i_mul87_3_resize_ma3_cma_p(0),29);
    i_mul87_3_resize_ma3_cma_u(1) <= RESIZE(i_mul87_3_resize_ma3_cma_p(1),29);
    i_mul87_3_resize_ma3_cma_w(0) <= i_mul87_3_resize_ma3_cma_u(0) + i_mul87_3_resize_ma3_cma_u(1);
    i_mul87_3_resize_ma3_cma_x(0) <= i_mul87_3_resize_ma3_cma_w(0);
    i_mul87_3_resize_ma3_cma_y(0) <= i_mul87_3_resize_ma3_cma_x(0);
    i_mul87_3_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul87_3_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_3_resize_ma3_cma_ena0 = '1') THEN
                i_mul87_3_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs7_b),8);
                i_mul87_3_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul87_3_resize_bs2_merged_bit_select_c),8);
                i_mul87_3_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul87_3_resize_bjB9_q),19);
                i_mul87_3_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul87_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_3_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_3_resize_ma3_cma_ena1 = '1') THEN
                i_mul87_3_resize_ma3_cma_s(0) <= i_mul87_3_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_3_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_3_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul87_3_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul87_3_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul87_3_resize_ma3_cma_qq(27 downto 0));

    -- redist9_i_mul87_3_resize_ma3_cma_q_1(DELAY,1227)
    redist9_i_mul87_3_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_ma3_cma_q, xout => redist9_i_mul87_3_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_align_14(BITSHIFT,929)@16
    i_mul87_3_resize_align_14_qint <= redist9_i_mul87_3_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul87_3_resize_align_14_q <= i_mul87_3_resize_align_14_qint(45 downto 0);

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1143)@16
    i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul87_3_resize_align_14_q(43 downto 0));

    -- i_mul87_1_resize_bs11(BITSELECT,892)@13
    i_mul87_1_resize_bs11_b <= dupName_0_i_and85_resize_vt_join_narrowed_x_b(25 downto 18);

    -- i_mul87_3_resize_im10(MULT,925)@13 + 2
    i_mul87_3_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul87_3_resize_im10_a0) * UNSIGNED(i_mul87_3_resize_im10_b0));
    i_mul87_3_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_im10_a0 <= (others => '0');
            i_mul87_3_resize_im10_b0 <= (others => '0');
            i_mul87_3_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_3_resize_im10_a0 <= i_mul87_1_resize_bs11_b;
            i_mul87_3_resize_im10_b0 <= i_mul87_3_resize_bs2_merged_bit_select_c;
            i_mul87_3_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul87_3_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul87_3_resize_im10_q <= i_mul87_3_resize_im10_s1;

    -- redist113_i_mul87_3_resize_im10_q_1(DELAY,1331)
    redist113_i_mul87_3_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_im10_q, xout => redist113_i_mul87_3_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1216)@16
    i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist113_i_mul87_3_resize_im10_q_1_q(7 downto 0));
    i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist113_i_mul87_3_resize_im10_q_1_q(15 downto 8));

    -- i_mul87_1_resize_bs1(BITSELECT,882)@13
    i_mul87_1_resize_bs1_in <= dupName_0_i_and85_resize_vt_join_narrowed_x_b(17 downto 0);
    i_mul87_1_resize_bs1_b <= i_mul87_1_resize_bs1_in(17 downto 0);

    -- i_mul87_3_resize_im0_cma(CHAINMULTADD,1187)@13 + 2
    i_mul87_3_resize_im0_cma_reset <= not (resetn);
    i_mul87_3_resize_im0_cma_ena0 <= '1';
    i_mul87_3_resize_im0_cma_ena1 <= i_mul87_3_resize_im0_cma_ena0;
    i_mul87_3_resize_im0_cma_p(0) <= i_mul87_3_resize_im0_cma_a0(0) * i_mul87_3_resize_im0_cma_c0(0);
    i_mul87_3_resize_im0_cma_u(0) <= RESIZE(i_mul87_3_resize_im0_cma_p(0),36);
    i_mul87_3_resize_im0_cma_w(0) <= i_mul87_3_resize_im0_cma_u(0);
    i_mul87_3_resize_im0_cma_x(0) <= i_mul87_3_resize_im0_cma_w(0);
    i_mul87_3_resize_im0_cma_y(0) <= i_mul87_3_resize_im0_cma_x(0);
    i_mul87_3_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul87_3_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_3_resize_im0_cma_ena0 = '1') THEN
                i_mul87_3_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs1_b),18);
                i_mul87_3_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul87_3_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_3_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_3_resize_im0_cma_ena1 = '1') THEN
                i_mul87_3_resize_im0_cma_s(0) <= i_mul87_3_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_3_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_3_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul87_3_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul87_3_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul87_3_resize_im0_cma_qq(35 downto 0));

    -- redist17_i_mul87_3_resize_im0_cma_q_1(DELAY,1235)
    redist17_i_mul87_3_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_im0_cma_q, xout => redist17_i_mul87_3_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1139)@16
    i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist17_i_mul87_3_resize_im0_cma_q_1_q;

    -- i_mul87_3_resize_result_add_0_0_p1_of_2(ADD,1016)@16 + 1
    i_mul87_3_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul87_3_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul87_3_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_3_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul87_3_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul87_3_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_3_resize_result_add_0_0_p1_of_2_c(0) <= i_mul87_3_resize_result_add_0_0_p1_of_2_o(44);
    i_mul87_3_resize_result_add_0_0_p1_of_2_q <= i_mul87_3_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1146)@16
    i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul87_3_resize_align_14_q(45 downto 45));

    -- redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1259)
    redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1145)@16
    i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul87_3_resize_align_14_q(45 downto 44));

    -- redist49_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1267)
    redist49_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist49_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1154)@17
    i_mul87_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist41_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist49_i_mul87_3_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist1_i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1219)
    redist1_i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist1_i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1142)@17
    i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist1_i_mul87_3_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul87_3_resize_result_add_0_0_p2_of_2(ADD,1017)@17 + 1
    i_mul87_3_resize_result_add_0_0_p2_of_2_cin <= i_mul87_3_resize_result_add_0_0_p1_of_2_c;
    i_mul87_3_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul87_3_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul87_3_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul87_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul87_3_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul87_3_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul87_3_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_3_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_3_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul87_3_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul87_3_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_3_resize_result_add_0_0_p2_of_2_q <= i_mul87_3_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist105_i_mul87_3_resize_result_add_0_0_p1_of_2_q_1(DELAY,1323)
    redist105_i_mul87_3_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_3_resize_result_add_0_0_p1_of_2_q, xout => redist105_i_mul87_3_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_3_resize_result_add_0_0_BitJoin_for_q(BITJOIN,1018)@18
    i_mul87_3_resize_result_add_0_0_BitJoin_for_q_q <= i_mul87_3_resize_result_add_0_0_p2_of_2_q & redist105_i_mul87_3_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul87_3_resize_extender_x(BITJOIN,144)@18
    i_mul87_3_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul87_3_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul87_3_resize_sel_x(BITSELECT,24)@18
    bgTrunc_i_mul87_3_resize_sel_x_b <= i_mul87_3_resize_extender_x_q(31 downto 0);

    -- i_tmp_3_resize(ADD,601)@18
    i_tmp_3_resize_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul87_3_resize_sel_x_b);
    i_tmp_3_resize_b <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul75_3_resize_sel_x_b);
    i_tmp_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_tmp_3_resize_a) + UNSIGNED(i_tmp_3_resize_b));
    i_tmp_3_resize_q <= i_tmp_3_resize_o(32 downto 0);

    -- bgTrunc_i_tmp_3_resize_sel_x(BITSELECT,45)@18
    bgTrunc_i_tmp_3_resize_sel_x_b <= i_tmp_3_resize_q(31 downto 0);

    -- leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x(MUX,698)@18
    leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_s <= VCC_q;
    leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_combproc: PROCESS (leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_s, bgTrunc_i_tmp_3_resize_sel_x_b, leftShiftStage0Idx1_uid697_i_tmp120_3_resize_resize189_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_q <= bgTrunc_i_tmp_3_resize_sel_x_b;
            WHEN "1" => leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_q <= leftShiftStage0Idx1_uid697_i_tmp120_3_resize_resize189_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_tmp120_3_resize_vt_select_31(BITSELECT,595)@18
    i_tmp120_3_resize_vt_select_31_b <= leftShiftStage0_uid699_i_tmp120_3_resize_resize189_shift_x_q(31 downto 8);

    -- redist121_i_tmp120_3_resize_vt_select_31_b_2(DELAY,1339)
    redist121_i_tmp120_3_resize_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp120_3_resize_vt_select_31_b, xout => redist121_i_tmp120_3_resize_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- c_i8_0gr(CONSTANT,357)
    c_i8_0gr_q <= "00000000";

    -- i_tmp120_3_resize_vt_join(BITJOIN,594)@20
    i_tmp120_3_resize_vt_join_q <= redist121_i_tmp120_3_resize_vt_select_31_b_2_q & c_i8_0gr_q;

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_notEnable(LOGICAL,1428)
    redist125_i_mul64_3_resize_vt_select_23_b_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_nor(LOGICAL,1429)
    redist125_i_mul64_3_resize_vt_select_23_b_7_nor_q <= not (redist125_i_mul64_3_resize_vt_select_23_b_7_notEnable_q or redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q);

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_mem_last(CONSTANT,1425)
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_last_q <= "010";

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_cmp(LOGICAL,1426)
    redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_q);
    redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_q <= "1" WHEN redist125_i_mul64_3_resize_vt_select_23_b_7_mem_last_q = redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_b ELSE "0";

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg(REG,1427)
    redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg_q <= STD_LOGIC_VECTOR(redist125_i_mul64_3_resize_vt_select_23_b_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena(REG,1430)
    redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist125_i_mul64_3_resize_vt_select_23_b_7_nor_q = "1") THEN
                redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist125_i_mul64_3_resize_vt_select_23_b_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_enaAnd(LOGICAL,1431)
    redist125_i_mul64_3_resize_vt_select_23_b_7_enaAnd_q <= redist125_i_mul64_3_resize_vt_select_23_b_7_sticky_ena_q and VCC_q;

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt(COUNTER,1423)
    -- low=0, high=3, step=1, init=0
    redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i <= redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_i, 2)));

    -- leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x(BITSELECT,641)@12
    leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_in <= i_conv15_i29_resize_vt_join_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_b <= leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid643_i_mul64_3_resize_resize188_shift_x(BITJOIN,642)@12
    leftShiftStage0Idx1_uid643_i_mul64_3_resize_resize188_shift_x_q <= leftShiftStage0Idx1Rng16_uid642_i_mul64_3_resize_resize188_shift_x_b & i_and105_resize_vt_const_31_q;

    -- leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x(MUX,644)@12
    leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_s <= VCC_q;
    leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_combproc: PROCESS (leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_s, i_conv15_i29_resize_vt_join_q, leftShiftStage0Idx1_uid643_i_mul64_3_resize_resize188_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_q <= i_conv15_i29_resize_vt_join_q;
            WHEN "1" => leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_q <= leftShiftStage0Idx1_uid643_i_mul64_3_resize_resize188_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul64_3_resize_vt_select_23(BITSELECT,546)@12
    i_mul64_3_resize_vt_select_23_b <= leftShiftStage0_uid645_i_mul64_3_resize_resize188_shift_x_q(23 downto 16);

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_inputreg(DELAY,1420)
    redist125_i_mul64_3_resize_vt_select_23_b_7_inputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul64_3_resize_vt_select_23_b, xout => redist125_i_mul64_3_resize_vt_select_23_b_7_inputreg_q, clk => clock, aclr => resetn );

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr(REG,1424)
    redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr_q <= STD_LOGIC_VECTOR(redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_mem(DUALMEM,1422)
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ia <= STD_LOGIC_VECTOR(redist125_i_mul64_3_resize_vt_select_23_b_7_inputreg_q);
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_aa <= redist125_i_mul64_3_resize_vt_select_23_b_7_wraddr_q;
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ab <= redist125_i_mul64_3_resize_vt_select_23_b_7_rdcnt_q;
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_reset0 <= not (resetn);
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist125_i_mul64_3_resize_vt_select_23_b_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_reset0,
        clock1 => clock,
        address_a => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_aa,
        data_a => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_ab,
        q_b => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_iq
    );
    redist125_i_mul64_3_resize_vt_select_23_b_7_mem_q <= redist125_i_mul64_3_resize_vt_select_23_b_7_mem_iq(7 downto 0);

    -- redist125_i_mul64_3_resize_vt_select_23_b_7_outputreg(DELAY,1421)
    redist125_i_mul64_3_resize_vt_select_23_b_7_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist125_i_mul64_3_resize_vt_select_23_b_7_mem_q, xout => redist125_i_mul64_3_resize_vt_select_23_b_7_outputreg_q, clk => clock, aclr => resetn );

    -- i_and105_resize_vt_const_31(CONSTANT,418)
    i_and105_resize_vt_const_31_q <= "0000000000000000";

    -- i_mul64_3_resize_vt_join(BITJOIN,545)@19
    i_mul64_3_resize_vt_join_q <= c_i8_0gr_q & redist125_i_mul64_3_resize_vt_select_23_b_7_outputreg_q & i_and105_resize_vt_const_31_q;

    -- i_mul106_1_resize_multconst_x(CONSTANT,109)
    i_mul106_1_resize_multconst_x_q <= "0000000000000000000000";

    -- redist166_sync_in_aunroll_x_in_c0_eni7_2_3(DELAY,1384)
    redist166_sync_in_aunroll_x_in_c0_eni7_2_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q, xout => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_0_0_3_1_push15_resize(BLACKBOX,380)@12
    -- out out_feedback_out_15@20000000
    -- out out_feedback_valid_out_15@20000000
    thei_acl_push_i8_buf_0_0_3_1_push15_resize : i_acl_push_i8_buf_0_0_3_1_push15_resize180
    PORT MAP (
        in_c0_ene2 => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q,
        in_data_in => redist153_i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize_out_data_out_1_q,
        in_feedback_stall_in_15 => i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_feedback_stall_out_15,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_15 => i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_out_15,
        out_feedback_valid_out_15 => i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_valid_out_15,
        clock => clock,
        resetn => resetn
    );

    -- redist164_sync_in_aunroll_x_in_c0_eni7_1_3(DELAY,1382)
    redist164_sync_in_aunroll_x_in_c0_eni7_1_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q, xout => redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i8_buf_0_0_3_1_pop15_resize(BLACKBOX,367)@12
    -- out out_feedback_stall_out_15@20000000
    thei_acl_pop_i8_buf_0_0_3_1_pop15_resize : i_acl_pop_i8_buf_0_0_3_1_pop15_resize178
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q,
        in_feedback_in_15 => i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_out_15,
        in_feedback_valid_in_15 => i_acl_push_i8_buf_0_0_3_1_push15_resize_out_feedback_valid_out_15,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_data_out,
        out_feedback_stall_out_15 => i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_feedback_stall_out_15,
        clock => clock,
        resetn => resetn
    );

    -- i_conv15_i_resize_sel_x(BITSELECT,97)@12
    i_conv15_i_resize_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i8_buf_0_0_3_1_pop15_resize_out_data_out(7 downto 0)), 32));

    -- i_conv15_i_resize_vt_select_7(BITSELECT,496)@12
    i_conv15_i_resize_vt_select_7_b <= i_conv15_i_resize_sel_x_b(7 downto 0);

    -- redist131_i_conv15_i_resize_vt_select_7_b_2(DELAY,1349)
    redist131_i_conv15_i_resize_vt_select_7_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv15_i_resize_vt_select_7_b, xout => redist131_i_conv15_i_resize_vt_select_7_b_2_q, clk => clock, aclr => resetn );

    -- i_conv15_i_resize_vt_join(BITJOIN,495)@14
    i_conv15_i_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & redist131_i_conv15_i_resize_vt_select_7_b_2_q;

    -- redist132_i_conv15_i43_resize_vt_join_q_1(DELAY,1350)
    redist132_i_conv15_i43_resize_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv15_i43_resize_vt_join_q, xout => redist132_i_conv15_i43_resize_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- i_add95_3_resize(SUB,399)@12
    i_add95_3_resize_a <= STD_LOGIC_VECTOR("0" & i_conv15_i29_resize_vt_join_q);
    i_add95_3_resize_b <= STD_LOGIC_VECTOR("0" & i_conv15_i57_resize_vt_join_q);
    i_add95_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add95_3_resize_a) - UNSIGNED(i_add95_3_resize_b));
    i_add95_3_resize_q <= i_add95_3_resize_o(32 downto 0);

    -- bgTrunc_i_add95_3_resize_sel_x(BITSELECT,12)@12
    bgTrunc_i_add95_3_resize_sel_x_b <= STD_LOGIC_VECTOR(i_add95_3_resize_q(31 downto 0));

    -- redist183_bgTrunc_i_add95_3_resize_sel_x_b_1(DELAY,1401)
    redist183_bgTrunc_i_add95_3_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add95_3_resize_sel_x_b, xout => redist183_bgTrunc_i_add95_3_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub99_3_resize(SUB,585)@13
    i_sub99_3_resize_a <= STD_LOGIC_VECTOR("0" & redist183_bgTrunc_i_add95_3_resize_sel_x_b_1_q);
    i_sub99_3_resize_b <= STD_LOGIC_VECTOR("0" & redist132_i_conv15_i43_resize_vt_join_q_1_q);
    i_sub99_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub99_3_resize_a) - UNSIGNED(i_sub99_3_resize_b));
    i_sub99_3_resize_q <= i_sub99_3_resize_o(32 downto 0);

    -- bgTrunc_i_sub99_3_resize_sel_x(BITSELECT,41)@13
    bgTrunc_i_sub99_3_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub99_3_resize_q(31 downto 0));

    -- redist175_bgTrunc_i_sub99_3_resize_sel_x_b_1(DELAY,1393)
    redist175_bgTrunc_i_sub99_3_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub99_3_resize_sel_x_b, xout => redist175_bgTrunc_i_sub99_3_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub103_3_resize(ADD,573)@14
    i_sub103_3_resize_a <= STD_LOGIC_VECTOR("0" & redist175_bgTrunc_i_sub99_3_resize_sel_x_b_1_q);
    i_sub103_3_resize_b <= STD_LOGIC_VECTOR("0" & i_conv15_i_resize_vt_join_q);
    i_sub103_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub103_3_resize_a) + UNSIGNED(i_sub103_3_resize_b));
    i_sub103_3_resize_q <= i_sub103_3_resize_o(32 downto 0);

    -- bgTrunc_i_sub103_3_resize_sel_x(BITSELECT,29)@14
    bgTrunc_i_sub103_3_resize_sel_x_b <= i_sub103_3_resize_q(31 downto 0);

    -- i_and104_3_resize(LOGICAL,409)@14
    i_and104_3_resize_q <= bgTrunc_i_sub103_3_resize_sel_x_b and c_i32_67108863_q;

    -- i_and104_3_resize_vt_select_25(BITSELECT,412)@14
    i_and104_3_resize_vt_select_25_b <= i_and104_3_resize_q(25 downto 0);

    -- redist146_i_and104_3_resize_vt_select_25_b_1(DELAY,1364)
    redist146_i_and104_3_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and104_3_resize_vt_select_25_b, xout => redist146_i_and104_3_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul106_3_resize_bs1_merged_bit_select(BITSELECT,1200)@15
    i_mul106_3_resize_bs1_merged_bit_select_b <= redist146_i_and104_3_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul106_3_resize_bs1_merged_bit_select_c <= redist146_i_and104_3_resize_vt_select_25_b_1_q(25 downto 18);

    -- redist144_i_and105_resize_vt_select_15_b_6_notEnable(LOGICAL,1482)
    redist144_i_and105_resize_vt_select_15_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist144_i_and105_resize_vt_select_15_b_6_nor(LOGICAL,1483)
    redist144_i_and105_resize_vt_select_15_b_6_nor_q <= not (redist144_i_and105_resize_vt_select_15_b_6_notEnable_q or redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q);

    -- redist144_i_and105_resize_vt_select_15_b_6_mem_last(CONSTANT,1479)
    redist144_i_and105_resize_vt_select_15_b_6_mem_last_q <= "011";

    -- redist144_i_and105_resize_vt_select_15_b_6_cmp(LOGICAL,1480)
    redist144_i_and105_resize_vt_select_15_b_6_cmp_q <= "1" WHEN redist144_i_and105_resize_vt_select_15_b_6_mem_last_q = redist144_i_and105_resize_vt_select_15_b_6_rdcnt_q ELSE "0";

    -- redist144_i_and105_resize_vt_select_15_b_6_cmpReg(REG,1481)
    redist144_i_and105_resize_vt_select_15_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist144_i_and105_resize_vt_select_15_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist144_i_and105_resize_vt_select_15_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist144_i_and105_resize_vt_select_15_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist144_i_and105_resize_vt_select_15_b_6_sticky_ena(REG,1484)
    redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist144_i_and105_resize_vt_select_15_b_6_nor_q = "1") THEN
                redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist144_i_and105_resize_vt_select_15_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist144_i_and105_resize_vt_select_15_b_6_enaAnd(LOGICAL,1485)
    redist144_i_and105_resize_vt_select_15_b_6_enaAnd_q <= redist144_i_and105_resize_vt_select_15_b_6_sticky_ena_q and VCC_q;

    -- redist144_i_and105_resize_vt_select_15_b_6_rdcnt(COUNTER,1477)
    -- low=0, high=4, step=1, init=0
    redist144_i_and105_resize_vt_select_15_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq <= '1';
            ELSE
                redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist144_i_and105_resize_vt_select_15_b_6_rdcnt_eq = '1') THEN
                redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i <= redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i + 4;
            ELSE
                redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i <= redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist144_i_and105_resize_vt_select_15_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist144_i_and105_resize_vt_select_15_b_6_rdcnt_i, 3)));

    -- c_i32_65535(CONSTANT,354)
    c_i32_65535_q <= "00000000000000001111111111111111";

    -- i_and105_resize(LOGICAL,417)@9
    i_and105_resize_q <= in_c0_eni7_7 and c_i32_65535_q;

    -- i_and105_resize_vt_select_15(BITSELECT,420)@9
    i_and105_resize_vt_select_15_b <= i_and105_resize_q(15 downto 0);

    -- redist144_i_and105_resize_vt_select_15_b_6_wraddr(REG,1478)
    redist144_i_and105_resize_vt_select_15_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist144_i_and105_resize_vt_select_15_b_6_wraddr_q <= "100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist144_i_and105_resize_vt_select_15_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist144_i_and105_resize_vt_select_15_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist144_i_and105_resize_vt_select_15_b_6_mem(DUALMEM,1476)
    redist144_i_and105_resize_vt_select_15_b_6_mem_ia <= STD_LOGIC_VECTOR(i_and105_resize_vt_select_15_b);
    redist144_i_and105_resize_vt_select_15_b_6_mem_aa <= redist144_i_and105_resize_vt_select_15_b_6_wraddr_q;
    redist144_i_and105_resize_vt_select_15_b_6_mem_ab <= redist144_i_and105_resize_vt_select_15_b_6_rdcnt_q;
    redist144_i_and105_resize_vt_select_15_b_6_mem_reset0 <= not (resetn);
    redist144_i_and105_resize_vt_select_15_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 16,
        widthad_b => 3,
        numwords_b => 5,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist144_i_and105_resize_vt_select_15_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist144_i_and105_resize_vt_select_15_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist144_i_and105_resize_vt_select_15_b_6_mem_aa,
        data_a => redist144_i_and105_resize_vt_select_15_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist144_i_and105_resize_vt_select_15_b_6_mem_ab,
        q_b => redist144_i_and105_resize_vt_select_15_b_6_mem_iq
    );
    redist144_i_and105_resize_vt_select_15_b_6_mem_q <= redist144_i_and105_resize_vt_select_15_b_6_mem_iq(15 downto 0);

    -- i_and105_resize_vt_join(BITJOIN,419)@15
    i_and105_resize_vt_join_q <= i_and105_resize_vt_const_31_q & redist144_i_and105_resize_vt_select_15_b_6_mem_q;

    -- dupName_0_i_and105_resize_vt_join_narrowed_x(BITSELECT,47)@15
    dupName_0_i_and105_resize_vt_join_narrowed_x_b <= i_and105_resize_vt_join_q(15 downto 0);

    -- i_mul106_3_resize_im3_cma(CHAINMULTADD,1178)@15 + 2
    i_mul106_3_resize_im3_cma_reset <= not (resetn);
    i_mul106_3_resize_im3_cma_ena0 <= '1';
    i_mul106_3_resize_im3_cma_ena1 <= i_mul106_3_resize_im3_cma_ena0;
    i_mul106_3_resize_im3_cma_p(0) <= i_mul106_3_resize_im3_cma_a0(0) * i_mul106_3_resize_im3_cma_c0(0);
    i_mul106_3_resize_im3_cma_u(0) <= RESIZE(i_mul106_3_resize_im3_cma_p(0),26);
    i_mul106_3_resize_im3_cma_w(0) <= i_mul106_3_resize_im3_cma_u(0);
    i_mul106_3_resize_im3_cma_x(0) <= i_mul106_3_resize_im3_cma_w(0);
    i_mul106_3_resize_im3_cma_y(0) <= i_mul106_3_resize_im3_cma_x(0);
    i_mul106_3_resize_im3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_3_resize_im3_cma_a0 <= (others => (others => '0'));
            i_mul106_3_resize_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_3_resize_im3_cma_ena0 = '1') THEN
                i_mul106_3_resize_im3_cma_a0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
                i_mul106_3_resize_im3_cma_c0(0) <= RESIZE(UNSIGNED(i_mul106_3_resize_bs1_merged_bit_select_c),10);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_3_resize_im3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_3_resize_im3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_3_resize_im3_cma_ena1 = '1') THEN
                i_mul106_3_resize_im3_cma_s(0) <= i_mul106_3_resize_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_3_resize_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_3_resize_im3_cma_s(0)(25 downto 0)), xout => i_mul106_3_resize_im3_cma_qq, clk => clock, aclr => resetn );
    i_mul106_3_resize_im3_cma_q <= STD_LOGIC_VECTOR(i_mul106_3_resize_im3_cma_qq(23 downto 0));

    -- redist26_i_mul106_3_resize_im3_cma_q_1(DELAY,1244)
    redist26_i_mul106_3_resize_im3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_3_resize_im3_cma_q, xout => redist26_i_mul106_3_resize_im3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_3_resize_align_7(BITSHIFT,800)@18
    i_mul106_3_resize_align_7_qint <= redist26_i_mul106_3_resize_im3_cma_q_1_q & "000000000000000000";
    i_mul106_3_resize_align_7_q <= i_mul106_3_resize_align_7_qint(41 downto 0);

    -- i_mul106_3_resize_im0_cma(CHAINMULTADD,1177)@15 + 2
    i_mul106_3_resize_im0_cma_reset <= not (resetn);
    i_mul106_3_resize_im0_cma_ena0 <= '1';
    i_mul106_3_resize_im0_cma_ena1 <= i_mul106_3_resize_im0_cma_ena0;
    i_mul106_3_resize_im0_cma_p(0) <= i_mul106_3_resize_im0_cma_a0(0) * i_mul106_3_resize_im0_cma_c0(0);
    i_mul106_3_resize_im0_cma_u(0) <= RESIZE(i_mul106_3_resize_im0_cma_p(0),34);
    i_mul106_3_resize_im0_cma_w(0) <= i_mul106_3_resize_im0_cma_u(0);
    i_mul106_3_resize_im0_cma_x(0) <= i_mul106_3_resize_im0_cma_w(0);
    i_mul106_3_resize_im0_cma_y(0) <= i_mul106_3_resize_im0_cma_x(0);
    i_mul106_3_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_3_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul106_3_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_3_resize_im0_cma_ena0 = '1') THEN
                i_mul106_3_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul106_3_resize_bs1_merged_bit_select_b),18);
                i_mul106_3_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_3_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_3_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_3_resize_im0_cma_ena1 = '1') THEN
                i_mul106_3_resize_im0_cma_s(0) <= i_mul106_3_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_3_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_3_resize_im0_cma_s(0)(33 downto 0)), xout => i_mul106_3_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul106_3_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul106_3_resize_im0_cma_qq(33 downto 0));

    -- redist27_i_mul106_3_resize_im0_cma_q_1(DELAY,1245)
    redist27_i_mul106_3_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_3_resize_im0_cma_q, xout => redist27_i_mul106_3_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_3_resize_result_add_0_0(ADD,802)@18
    i_mul106_3_resize_result_add_0_0_a <= STD_LOGIC_VECTOR("000000000" & redist27_i_mul106_3_resize_im0_cma_q_1_q);
    i_mul106_3_resize_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_mul106_3_resize_align_7_q);
    i_mul106_3_resize_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul106_3_resize_result_add_0_0_a) + UNSIGNED(i_mul106_3_resize_result_add_0_0_b));
    i_mul106_3_resize_result_add_0_0_q <= i_mul106_3_resize_result_add_0_0_o(42 downto 0);

    -- i_mul106_3_resize_extender_x(BITJOIN,112)@18
    i_mul106_3_resize_extender_x_q <= i_mul106_1_resize_multconst_x_q & i_mul106_3_resize_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_mul106_3_resize_sel_x(BITSELECT,16)@18
    bgTrunc_i_mul106_3_resize_sel_x_b <= i_mul106_3_resize_extender_x_q(31 downto 0);

    -- redist179_bgTrunc_i_mul106_3_resize_sel_x_b_1(DELAY,1397)
    redist179_bgTrunc_i_mul106_3_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul106_3_resize_sel_x_b, xout => redist179_bgTrunc_i_mul106_3_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add88_3_resize(ADD,395)@19
    i_add88_3_resize_a <= STD_LOGIC_VECTOR("0" & redist179_bgTrunc_i_mul106_3_resize_sel_x_b_1_q);
    i_add88_3_resize_b <= STD_LOGIC_VECTOR("0" & i_mul64_3_resize_vt_join_q);
    i_add88_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add88_3_resize_a) + UNSIGNED(i_add88_3_resize_b));
    i_add88_3_resize_q <= i_add88_3_resize_o(32 downto 0);

    -- bgTrunc_i_add88_3_resize_sel_x(BITSELECT,8)@19
    bgTrunc_i_add88_3_resize_sel_x_b <= i_add88_3_resize_q(31 downto 0);

    -- redist187_bgTrunc_i_add88_3_resize_sel_x_b_1(DELAY,1405)
    redist187_bgTrunc_i_add88_3_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add88_3_resize_sel_x_b, xout => redist187_bgTrunc_i_add88_3_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add107_3_resize(ADD,391)@20
    i_add107_3_resize_a <= STD_LOGIC_VECTOR("0" & redist187_bgTrunc_i_add88_3_resize_sel_x_b_1_q);
    i_add107_3_resize_b <= STD_LOGIC_VECTOR("0" & i_tmp120_3_resize_vt_join_q);
    i_add107_3_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add107_3_resize_a) + UNSIGNED(i_add107_3_resize_b));
    i_add107_3_resize_q <= i_add107_3_resize_o(32 downto 0);

    -- bgTrunc_i_add107_3_resize_sel_x(BITSELECT,4)@20
    bgTrunc_i_add107_3_resize_sel_x_b <= i_add107_3_resize_q(31 downto 0);

    -- leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x(BITSELECT,686)@18
    leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_in <= bgTrunc_i_tmp_2_resize_sel_x_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_b <= leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid688_i_tmp120_2_resize_resize187_shift_x(BITJOIN,687)@18
    leftShiftStage0Idx1_uid688_i_tmp120_2_resize_resize187_shift_x_q <= leftShiftStage0Idx1Rng8_uid687_i_tmp120_2_resize_resize187_shift_x_b & c_i8_0gr_q;

    -- rightShiftStage0Idx1Rng16_uid659_i_shr10_resize_resize157_shift_x(BITSELECT,658)@9
    rightShiftStage0Idx1Rng16_uid659_i_shr10_resize_resize157_shift_x_b <= in_c0_eni7_3(31 downto 16);

    -- rightShiftStage0Idx1_uid661_i_shr10_resize_resize157_shift_x(BITJOIN,660)@9
    rightShiftStage0Idx1_uid661_i_shr10_resize_resize157_shift_x_q <= i_and105_resize_vt_const_31_q & rightShiftStage0Idx1Rng16_uid659_i_shr10_resize_resize157_shift_x_b;

    -- rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x(MUX,662)@9
    rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_s <= VCC_q;
    rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_combproc: PROCESS (rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_s, in_c0_eni7_3, rightShiftStage0Idx1_uid661_i_shr10_resize_resize157_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_q <= in_c0_eni7_3;
            WHEN "1" => rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_q <= rightShiftStage0Idx1_uid661_i_shr10_resize_resize157_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr10_resize_vt_select_15(BITSELECT,567)@9
    i_shr10_resize_vt_select_15_b <= rightShiftStage0_uid663_i_shr10_resize_resize157_shift_x_q(15 downto 0);

    -- i_shr10_resize_vt_join(BITJOIN,566)@9
    i_shr10_resize_vt_join_q <= i_and105_resize_vt_const_31_q & i_shr10_resize_vt_select_15_b;

    -- i_conv12_resize_sel_x(BITSELECT,93)@9
    i_conv12_resize_sel_x_b <= i_shr10_resize_vt_join_q(7 downto 0);

    -- redist173_i_conv12_resize_sel_x_b_2(DELAY,1391)
    redist173_i_conv12_resize_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv12_resize_sel_x_b, xout => redist173_i_conv12_resize_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_729_0_2_1_push12_resize(BLACKBOX,387)@11
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i8_buf_729_0_2_1_push12_resize : i_acl_push_i8_buf_729_0_2_1_push12_resize160
    PORT MAP (
        in_c0_ene2 => redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q,
        in_data_in => i_acl_747_resize_q,
        in_feedback_stall_in_12 => i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_feedback_stall_out_12,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_12 => i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_729_0_2_1_pop12_resize(BLACKBOX,374)@11
    -- out out_feedback_stall_out_12@20000000
    thei_acl_pop_i8_buf_729_0_2_1_pop12_resize : i_acl_pop_i8_buf_729_0_2_1_pop12_resize144
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q,
        in_feedback_in_12 => i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_out_12,
        in_feedback_valid_in_12 => i_acl_push_i8_buf_729_0_2_1_push12_resize_out_feedback_valid_out_12,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out,
        out_feedback_stall_out_12 => i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_feedback_stall_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_747_resize(MUX,359)@11
    i_acl_747_resize_s <= redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q;
    i_acl_747_resize_combproc: PROCESS (i_acl_747_resize_s, i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out, redist173_i_conv12_resize_sel_x_b_2_q)
    BEGIN
        CASE (i_acl_747_resize_s) IS
            WHEN "0" => i_acl_747_resize_q <= i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out;
            WHEN "1" => i_acl_747_resize_q <= redist173_i_conv12_resize_sel_x_b_2_q;
            WHEN OTHERS => i_acl_747_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist162_i_acl_747_resize_q_1(DELAY,1380)
    redist162_i_acl_747_resize_q_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_747_resize_q, xout => redist162_i_acl_747_resize_q_1_q, clk => clock, aclr => resetn );

    -- i_conv10_i28_resize_sel_x(BITSELECT,89)@12
    i_conv10_i28_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist162_i_acl_747_resize_q_1_q(7 downto 0)), 32));

    -- i_conv10_i28_resize_vt_select_7(BITSELECT,467)@12
    i_conv10_i28_resize_vt_select_7_b <= i_conv10_i28_resize_sel_x_b(7 downto 0);

    -- i_conv10_i28_resize_vt_join(BITJOIN,466)@12
    i_conv10_i28_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv10_i28_resize_vt_select_7_b;

    -- i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize(BLACKBOX,383)@11
    -- out out_feedback_out_5@20000000
    -- out out_feedback_valid_out_5@20000000
    thei_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize : i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146
    PORT MAP (
        in_data_in => i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out,
        in_feedback_stall_in_5 => i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_feedback_stall_out_5,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_5 => i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_out_5,
        out_feedback_valid_out_5 => i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_valid_out_5,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize(BLACKBOX,370)@11
    -- out out_feedback_stall_out_5@20000000
    thei_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize : i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => i_not_select781_resize_c,
        in_feedback_in_5 => i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_out_5,
        in_feedback_valid_in_5 => i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize_out_feedback_valid_out_5,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out,
        out_feedback_stall_out_5 => i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_feedback_stall_out_5,
        clock => clock,
        resetn => resetn
    );

    -- redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1(DELAY,1372)
    redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out, xout => redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv10_i56_resize_sel_x(BITSELECT,91)@12
    i_conv10_i56_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv10_i56_resize_vt_select_7(BITSELECT,475)@12
    i_conv10_i56_resize_vt_select_7_b <= i_conv10_i56_resize_sel_x_b(7 downto 0);

    -- i_conv10_i56_resize_vt_join(BITJOIN,474)@12
    i_conv10_i56_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv10_i56_resize_vt_select_7_b;

    -- i_sub71_2_resize(SUB,576)@12
    i_sub71_2_resize_a <= STD_LOGIC_VECTOR("0" & i_conv10_i56_resize_vt_join_q);
    i_sub71_2_resize_b <= STD_LOGIC_VECTOR("0" & i_conv10_i28_resize_vt_join_q);
    i_sub71_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub71_2_resize_a) - UNSIGNED(i_sub71_2_resize_b));
    i_sub71_2_resize_q <= i_sub71_2_resize_o(32 downto 0);

    -- bgTrunc_i_sub71_2_resize_sel_x(BITSELECT,32)@12
    bgTrunc_i_sub71_2_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub71_2_resize_q(31 downto 0));

    -- i_and72_2_resize(LOGICAL,425)@12
    i_and72_2_resize_q <= bgTrunc_i_sub71_2_resize_sel_x_b and c_i32_67108863_q;

    -- i_and72_2_resize_vt_select_25(BITSELECT,428)@12
    i_and72_2_resize_vt_select_25_b <= i_and72_2_resize_q(25 downto 0);

    -- redist142_i_and72_2_resize_vt_select_25_b_1(DELAY,1360)
    redist142_i_and72_2_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and72_2_resize_vt_select_25_b, xout => redist142_i_and72_2_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_bs2_merged_bit_select(BITSELECT,1203)@13
    i_mul75_2_resize_bs2_merged_bit_select_b <= redist142_i_and72_2_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul75_2_resize_bs2_merged_bit_select_c <= redist142_i_and72_2_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul75_2_resize_bjB9(BITJOIN,839)@13
    i_mul75_2_resize_bjB9_q <= GND_q & i_mul75_2_resize_bs2_merged_bit_select_b;

    -- i_mul75_2_resize_ma3_cma(CHAINMULTADD,1190)@13 + 2
    i_mul75_2_resize_ma3_cma_reset <= not (resetn);
    i_mul75_2_resize_ma3_cma_ena0 <= '1';
    i_mul75_2_resize_ma3_cma_ena1 <= i_mul75_2_resize_ma3_cma_ena0;
    i_mul75_2_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul75_2_resize_ma3_cma_a0(0),9));
    i_mul75_2_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul75_2_resize_ma3_cma_a0(1),9));
    i_mul75_2_resize_ma3_cma_p(0) <= i_mul75_2_resize_ma3_cma_l(0) * i_mul75_2_resize_ma3_cma_c0(0);
    i_mul75_2_resize_ma3_cma_p(1) <= i_mul75_2_resize_ma3_cma_l(1) * i_mul75_2_resize_ma3_cma_c0(1);
    i_mul75_2_resize_ma3_cma_u(0) <= RESIZE(i_mul75_2_resize_ma3_cma_p(0),29);
    i_mul75_2_resize_ma3_cma_u(1) <= RESIZE(i_mul75_2_resize_ma3_cma_p(1),29);
    i_mul75_2_resize_ma3_cma_w(0) <= i_mul75_2_resize_ma3_cma_u(0) + i_mul75_2_resize_ma3_cma_u(1);
    i_mul75_2_resize_ma3_cma_x(0) <= i_mul75_2_resize_ma3_cma_w(0);
    i_mul75_2_resize_ma3_cma_y(0) <= i_mul75_2_resize_ma3_cma_x(0);
    i_mul75_2_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul75_2_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_2_resize_ma3_cma_ena0 = '1') THEN
                i_mul75_2_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs7_b),8);
                i_mul75_2_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul75_2_resize_bs2_merged_bit_select_c),8);
                i_mul75_2_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul75_2_resize_bjB9_q),19);
                i_mul75_2_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul75_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_2_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_2_resize_ma3_cma_ena1 = '1') THEN
                i_mul75_2_resize_ma3_cma_s(0) <= i_mul75_2_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_2_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_2_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul75_2_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul75_2_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul75_2_resize_ma3_cma_qq(27 downto 0));

    -- redist14_i_mul75_2_resize_ma3_cma_q_1(DELAY,1232)
    redist14_i_mul75_2_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_ma3_cma_q, xout => redist14_i_mul75_2_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_align_14(BITSHIFT,844)@16
    i_mul75_2_resize_align_14_qint <= redist14_i_mul75_2_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul75_2_resize_align_14_q <= i_mul75_2_resize_align_14_qint(45 downto 0);

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1053)@16
    i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul75_2_resize_align_14_q(43 downto 0));

    -- i_mul75_2_resize_im10(MULT,840)@13 + 2
    i_mul75_2_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul75_2_resize_im10_a0) * UNSIGNED(i_mul75_2_resize_im10_b0));
    i_mul75_2_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_im10_a0 <= (others => '0');
            i_mul75_2_resize_im10_b0 <= (others => '0');
            i_mul75_2_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_2_resize_im10_a0 <= i_mul75_1_resize_bs11_b;
            i_mul75_2_resize_im10_b0 <= i_mul75_2_resize_bs2_merged_bit_select_c;
            i_mul75_2_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul75_2_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul75_2_resize_im10_q <= i_mul75_2_resize_im10_s1;

    -- redist118_i_mul75_2_resize_im10_q_1(DELAY,1336)
    redist118_i_mul75_2_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_im10_q, xout => redist118_i_mul75_2_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1211)@16
    i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist118_i_mul75_2_resize_im10_q_1_q(7 downto 0));
    i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist118_i_mul75_2_resize_im10_q_1_q(15 downto 8));

    -- i_mul75_2_resize_im0_cma(CHAINMULTADD,1182)@13 + 2
    i_mul75_2_resize_im0_cma_reset <= not (resetn);
    i_mul75_2_resize_im0_cma_ena0 <= '1';
    i_mul75_2_resize_im0_cma_ena1 <= i_mul75_2_resize_im0_cma_ena0;
    i_mul75_2_resize_im0_cma_p(0) <= i_mul75_2_resize_im0_cma_a0(0) * i_mul75_2_resize_im0_cma_c0(0);
    i_mul75_2_resize_im0_cma_u(0) <= RESIZE(i_mul75_2_resize_im0_cma_p(0),36);
    i_mul75_2_resize_im0_cma_w(0) <= i_mul75_2_resize_im0_cma_u(0);
    i_mul75_2_resize_im0_cma_x(0) <= i_mul75_2_resize_im0_cma_w(0);
    i_mul75_2_resize_im0_cma_y(0) <= i_mul75_2_resize_im0_cma_x(0);
    i_mul75_2_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul75_2_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_2_resize_im0_cma_ena0 = '1') THEN
                i_mul75_2_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs1_b),18);
                i_mul75_2_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul75_2_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_2_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_2_resize_im0_cma_ena1 = '1') THEN
                i_mul75_2_resize_im0_cma_s(0) <= i_mul75_2_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_2_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_2_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul75_2_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul75_2_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul75_2_resize_im0_cma_qq(35 downto 0));

    -- redist22_i_mul75_2_resize_im0_cma_q_1(DELAY,1240)
    redist22_i_mul75_2_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_im0_cma_q, xout => redist22_i_mul75_2_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1049)@16
    i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist22_i_mul75_2_resize_im0_cma_q_1_q;

    -- i_mul75_2_resize_result_add_0_0_p1_of_2(ADD,966)@16 + 1
    i_mul75_2_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul75_2_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul75_2_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_2_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul75_2_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul75_2_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_2_resize_result_add_0_0_p1_of_2_c(0) <= i_mul75_2_resize_result_add_0_0_p1_of_2_o(44);
    i_mul75_2_resize_result_add_0_0_p1_of_2_q <= i_mul75_2_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1056)@16
    i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul75_2_resize_align_14_q(45 downto 45));

    -- redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1304)
    redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1055)@16
    i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul75_2_resize_align_14_q(45 downto 44));

    -- redist94_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1312)
    redist94_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist94_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1064)@17
    i_mul75_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist86_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist94_i_mul75_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist6_i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1224)
    redist6_i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist6_i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1052)@17
    i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist6_i_mul75_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul75_2_resize_result_add_0_0_p2_of_2(ADD,967)@17 + 1
    i_mul75_2_resize_result_add_0_0_p2_of_2_cin <= i_mul75_2_resize_result_add_0_0_p1_of_2_c;
    i_mul75_2_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul75_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul75_2_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul75_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul75_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul75_2_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul75_2_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_2_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_2_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul75_2_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul75_2_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_2_resize_result_add_0_0_p2_of_2_q <= i_mul75_2_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist110_i_mul75_2_resize_result_add_0_0_p1_of_2_q_1(DELAY,1328)
    redist110_i_mul75_2_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_2_resize_result_add_0_0_p1_of_2_q, xout => redist110_i_mul75_2_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_2_resize_result_add_0_0_BitJoin_for_q(BITJOIN,968)@18
    i_mul75_2_resize_result_add_0_0_BitJoin_for_q_q <= i_mul75_2_resize_result_add_0_0_p2_of_2_q & redist110_i_mul75_2_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul75_2_resize_extender_x(BITJOIN,134)@18
    i_mul75_2_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul75_2_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul75_2_resize_sel_x(BITSELECT,19)@18
    bgTrunc_i_mul75_2_resize_sel_x_b <= i_mul75_2_resize_extender_x_q(31 downto 0);

    -- redist150_i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out_1(DELAY,1368)
    redist150_i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out, xout => redist150_i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv10_i42_resize_sel_x(BITSELECT,90)@12
    i_conv10_i42_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist150_i_acl_pop_i8_buf_729_0_2_1_pop12_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv10_i42_resize_vt_select_7(BITSELECT,471)@12
    i_conv10_i42_resize_vt_select_7_b <= i_conv10_i42_resize_sel_x_b(7 downto 0);

    -- i_conv10_i42_resize_vt_join(BITJOIN,470)@12
    i_conv10_i42_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv10_i42_resize_vt_select_7_b;

    -- i_sub83_2_resize(SUB,580)@12
    i_sub83_2_resize_a <= STD_LOGIC_VECTOR("0" & i_conv10_i42_resize_vt_join_q);
    i_sub83_2_resize_b <= STD_LOGIC_VECTOR("0" & i_conv10_i28_resize_vt_join_q);
    i_sub83_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub83_2_resize_a) - UNSIGNED(i_sub83_2_resize_b));
    i_sub83_2_resize_q <= i_sub83_2_resize_o(32 downto 0);

    -- bgTrunc_i_sub83_2_resize_sel_x(BITSELECT,36)@12
    bgTrunc_i_sub83_2_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub83_2_resize_q(31 downto 0));

    -- i_and84_2_resize(LOGICAL,445)@12
    i_and84_2_resize_q <= bgTrunc_i_sub83_2_resize_sel_x_b and c_i32_67108863_q;

    -- i_and84_2_resize_vt_select_25(BITSELECT,448)@12
    i_and84_2_resize_vt_select_25_b <= i_and84_2_resize_q(25 downto 0);

    -- redist137_i_and84_2_resize_vt_select_25_b_1(DELAY,1355)
    redist137_i_and84_2_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and84_2_resize_vt_select_25_b, xout => redist137_i_and84_2_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_bs2_merged_bit_select(BITSELECT,1207)@13
    i_mul87_2_resize_bs2_merged_bit_select_b <= redist137_i_and84_2_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul87_2_resize_bs2_merged_bit_select_c <= redist137_i_and84_2_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul87_2_resize_bjB9(BITJOIN,907)@13
    i_mul87_2_resize_bjB9_q <= GND_q & i_mul87_2_resize_bs2_merged_bit_select_b;

    -- i_mul87_2_resize_ma3_cma(CHAINMULTADD,1194)@13 + 2
    i_mul87_2_resize_ma3_cma_reset <= not (resetn);
    i_mul87_2_resize_ma3_cma_ena0 <= '1';
    i_mul87_2_resize_ma3_cma_ena1 <= i_mul87_2_resize_ma3_cma_ena0;
    i_mul87_2_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul87_2_resize_ma3_cma_a0(0),9));
    i_mul87_2_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul87_2_resize_ma3_cma_a0(1),9));
    i_mul87_2_resize_ma3_cma_p(0) <= i_mul87_2_resize_ma3_cma_l(0) * i_mul87_2_resize_ma3_cma_c0(0);
    i_mul87_2_resize_ma3_cma_p(1) <= i_mul87_2_resize_ma3_cma_l(1) * i_mul87_2_resize_ma3_cma_c0(1);
    i_mul87_2_resize_ma3_cma_u(0) <= RESIZE(i_mul87_2_resize_ma3_cma_p(0),29);
    i_mul87_2_resize_ma3_cma_u(1) <= RESIZE(i_mul87_2_resize_ma3_cma_p(1),29);
    i_mul87_2_resize_ma3_cma_w(0) <= i_mul87_2_resize_ma3_cma_u(0) + i_mul87_2_resize_ma3_cma_u(1);
    i_mul87_2_resize_ma3_cma_x(0) <= i_mul87_2_resize_ma3_cma_w(0);
    i_mul87_2_resize_ma3_cma_y(0) <= i_mul87_2_resize_ma3_cma_x(0);
    i_mul87_2_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul87_2_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_2_resize_ma3_cma_ena0 = '1') THEN
                i_mul87_2_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs7_b),8);
                i_mul87_2_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul87_2_resize_bs2_merged_bit_select_c),8);
                i_mul87_2_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul87_2_resize_bjB9_q),19);
                i_mul87_2_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul87_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_2_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_2_resize_ma3_cma_ena1 = '1') THEN
                i_mul87_2_resize_ma3_cma_s(0) <= i_mul87_2_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_2_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_2_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul87_2_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul87_2_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul87_2_resize_ma3_cma_qq(27 downto 0));

    -- redist10_i_mul87_2_resize_ma3_cma_q_1(DELAY,1228)
    redist10_i_mul87_2_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_ma3_cma_q, xout => redist10_i_mul87_2_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_align_14(BITSHIFT,912)@16
    i_mul87_2_resize_align_14_qint <= redist10_i_mul87_2_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul87_2_resize_align_14_q <= i_mul87_2_resize_align_14_qint(45 downto 0);

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1125)@16
    i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul87_2_resize_align_14_q(43 downto 0));

    -- i_mul87_2_resize_im10(MULT,908)@13 + 2
    i_mul87_2_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul87_2_resize_im10_a0) * UNSIGNED(i_mul87_2_resize_im10_b0));
    i_mul87_2_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_im10_a0 <= (others => '0');
            i_mul87_2_resize_im10_b0 <= (others => '0');
            i_mul87_2_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_2_resize_im10_a0 <= i_mul87_1_resize_bs11_b;
            i_mul87_2_resize_im10_b0 <= i_mul87_2_resize_bs2_merged_bit_select_c;
            i_mul87_2_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul87_2_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul87_2_resize_im10_q <= i_mul87_2_resize_im10_s1;

    -- redist114_i_mul87_2_resize_im10_q_1(DELAY,1332)
    redist114_i_mul87_2_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_im10_q, xout => redist114_i_mul87_2_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1215)@16
    i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist114_i_mul87_2_resize_im10_q_1_q(7 downto 0));
    i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist114_i_mul87_2_resize_im10_q_1_q(15 downto 8));

    -- i_mul87_2_resize_im0_cma(CHAINMULTADD,1186)@13 + 2
    i_mul87_2_resize_im0_cma_reset <= not (resetn);
    i_mul87_2_resize_im0_cma_ena0 <= '1';
    i_mul87_2_resize_im0_cma_ena1 <= i_mul87_2_resize_im0_cma_ena0;
    i_mul87_2_resize_im0_cma_p(0) <= i_mul87_2_resize_im0_cma_a0(0) * i_mul87_2_resize_im0_cma_c0(0);
    i_mul87_2_resize_im0_cma_u(0) <= RESIZE(i_mul87_2_resize_im0_cma_p(0),36);
    i_mul87_2_resize_im0_cma_w(0) <= i_mul87_2_resize_im0_cma_u(0);
    i_mul87_2_resize_im0_cma_x(0) <= i_mul87_2_resize_im0_cma_w(0);
    i_mul87_2_resize_im0_cma_y(0) <= i_mul87_2_resize_im0_cma_x(0);
    i_mul87_2_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul87_2_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_2_resize_im0_cma_ena0 = '1') THEN
                i_mul87_2_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs1_b),18);
                i_mul87_2_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul87_2_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_2_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_2_resize_im0_cma_ena1 = '1') THEN
                i_mul87_2_resize_im0_cma_s(0) <= i_mul87_2_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_2_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_2_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul87_2_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul87_2_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul87_2_resize_im0_cma_qq(35 downto 0));

    -- redist18_i_mul87_2_resize_im0_cma_q_1(DELAY,1236)
    redist18_i_mul87_2_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_im0_cma_q, xout => redist18_i_mul87_2_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1121)@16
    i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist18_i_mul87_2_resize_im0_cma_q_1_q;

    -- i_mul87_2_resize_result_add_0_0_p1_of_2(ADD,1006)@16 + 1
    i_mul87_2_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul87_2_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul87_2_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_2_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul87_2_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul87_2_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_2_resize_result_add_0_0_p1_of_2_c(0) <= i_mul87_2_resize_result_add_0_0_p1_of_2_o(44);
    i_mul87_2_resize_result_add_0_0_p1_of_2_q <= i_mul87_2_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1128)@16
    i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul87_2_resize_align_14_q(45 downto 45));

    -- redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1268)
    redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1127)@16
    i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul87_2_resize_align_14_q(45 downto 44));

    -- redist58_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1276)
    redist58_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist58_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1136)@17
    i_mul87_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist50_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist58_i_mul87_2_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist2_i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1220)
    redist2_i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist2_i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1124)@17
    i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist2_i_mul87_2_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul87_2_resize_result_add_0_0_p2_of_2(ADD,1007)@17 + 1
    i_mul87_2_resize_result_add_0_0_p2_of_2_cin <= i_mul87_2_resize_result_add_0_0_p1_of_2_c;
    i_mul87_2_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul87_2_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul87_2_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul87_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul87_2_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul87_2_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul87_2_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_2_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_2_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul87_2_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul87_2_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_2_resize_result_add_0_0_p2_of_2_q <= i_mul87_2_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist106_i_mul87_2_resize_result_add_0_0_p1_of_2_q_1(DELAY,1324)
    redist106_i_mul87_2_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_2_resize_result_add_0_0_p1_of_2_q, xout => redist106_i_mul87_2_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_2_resize_result_add_0_0_BitJoin_for_q(BITJOIN,1008)@18
    i_mul87_2_resize_result_add_0_0_BitJoin_for_q_q <= i_mul87_2_resize_result_add_0_0_p2_of_2_q & redist106_i_mul87_2_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul87_2_resize_extender_x(BITJOIN,142)@18
    i_mul87_2_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul87_2_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul87_2_resize_sel_x(BITSELECT,23)@18
    bgTrunc_i_mul87_2_resize_sel_x_b <= i_mul87_2_resize_extender_x_q(31 downto 0);

    -- i_tmp_2_resize(ADD,600)@18
    i_tmp_2_resize_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul87_2_resize_sel_x_b);
    i_tmp_2_resize_b <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul75_2_resize_sel_x_b);
    i_tmp_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_tmp_2_resize_a) + UNSIGNED(i_tmp_2_resize_b));
    i_tmp_2_resize_q <= i_tmp_2_resize_o(32 downto 0);

    -- bgTrunc_i_tmp_2_resize_sel_x(BITSELECT,44)@18
    bgTrunc_i_tmp_2_resize_sel_x_b <= i_tmp_2_resize_q(31 downto 0);

    -- leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x(MUX,689)@18
    leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_s <= VCC_q;
    leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_combproc: PROCESS (leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_s, bgTrunc_i_tmp_2_resize_sel_x_b, leftShiftStage0Idx1_uid688_i_tmp120_2_resize_resize187_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_q <= bgTrunc_i_tmp_2_resize_sel_x_b;
            WHEN "1" => leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_q <= leftShiftStage0Idx1_uid688_i_tmp120_2_resize_resize187_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_tmp120_2_resize_vt_select_31(BITSELECT,592)@18
    i_tmp120_2_resize_vt_select_31_b <= leftShiftStage0_uid690_i_tmp120_2_resize_resize187_shift_x_q(31 downto 8);

    -- redist122_i_tmp120_2_resize_vt_select_31_b_2(DELAY,1340)
    redist122_i_tmp120_2_resize_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp120_2_resize_vt_select_31_b, xout => redist122_i_tmp120_2_resize_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_tmp120_2_resize_vt_join(BITJOIN,591)@20
    i_tmp120_2_resize_vt_join_q <= redist122_i_tmp120_2_resize_vt_select_31_b_2_q & c_i8_0gr_q;

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_notEnable(LOGICAL,1440)
    redist126_i_mul64_2_resize_vt_select_23_b_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_nor(LOGICAL,1441)
    redist126_i_mul64_2_resize_vt_select_23_b_7_nor_q <= not (redist126_i_mul64_2_resize_vt_select_23_b_7_notEnable_q or redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q);

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_mem_last(CONSTANT,1437)
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_last_q <= "010";

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_cmp(LOGICAL,1438)
    redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_q);
    redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_q <= "1" WHEN redist126_i_mul64_2_resize_vt_select_23_b_7_mem_last_q = redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_b ELSE "0";

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg(REG,1439)
    redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg_q <= STD_LOGIC_VECTOR(redist126_i_mul64_2_resize_vt_select_23_b_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena(REG,1442)
    redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist126_i_mul64_2_resize_vt_select_23_b_7_nor_q = "1") THEN
                redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist126_i_mul64_2_resize_vt_select_23_b_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_enaAnd(LOGICAL,1443)
    redist126_i_mul64_2_resize_vt_select_23_b_7_enaAnd_q <= redist126_i_mul64_2_resize_vt_select_23_b_7_sticky_ena_q and VCC_q;

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt(COUNTER,1435)
    -- low=0, high=3, step=1, init=0
    redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i <= redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_i, 2)));

    -- leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x(BITSELECT,632)@12
    leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_in <= i_conv10_i28_resize_vt_join_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_b <= leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid634_i_mul64_2_resize_resize186_shift_x(BITJOIN,633)@12
    leftShiftStage0Idx1_uid634_i_mul64_2_resize_resize186_shift_x_q <= leftShiftStage0Idx1Rng16_uid633_i_mul64_2_resize_resize186_shift_x_b & i_and105_resize_vt_const_31_q;

    -- leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x(MUX,635)@12
    leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_s <= VCC_q;
    leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_combproc: PROCESS (leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_s, i_conv10_i28_resize_vt_join_q, leftShiftStage0Idx1_uid634_i_mul64_2_resize_resize186_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_q <= i_conv10_i28_resize_vt_join_q;
            WHEN "1" => leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_q <= leftShiftStage0Idx1_uid634_i_mul64_2_resize_resize186_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul64_2_resize_vt_select_23(BITSELECT,542)@12
    i_mul64_2_resize_vt_select_23_b <= leftShiftStage0_uid636_i_mul64_2_resize_resize186_shift_x_q(23 downto 16);

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_inputreg(DELAY,1432)
    redist126_i_mul64_2_resize_vt_select_23_b_7_inputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul64_2_resize_vt_select_23_b, xout => redist126_i_mul64_2_resize_vt_select_23_b_7_inputreg_q, clk => clock, aclr => resetn );

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr(REG,1436)
    redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr_q <= STD_LOGIC_VECTOR(redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_mem(DUALMEM,1434)
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ia <= STD_LOGIC_VECTOR(redist126_i_mul64_2_resize_vt_select_23_b_7_inputreg_q);
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_aa <= redist126_i_mul64_2_resize_vt_select_23_b_7_wraddr_q;
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ab <= redist126_i_mul64_2_resize_vt_select_23_b_7_rdcnt_q;
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_reset0 <= not (resetn);
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist126_i_mul64_2_resize_vt_select_23_b_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_reset0,
        clock1 => clock,
        address_a => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_aa,
        data_a => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_ab,
        q_b => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_iq
    );
    redist126_i_mul64_2_resize_vt_select_23_b_7_mem_q <= redist126_i_mul64_2_resize_vt_select_23_b_7_mem_iq(7 downto 0);

    -- redist126_i_mul64_2_resize_vt_select_23_b_7_outputreg(DELAY,1433)
    redist126_i_mul64_2_resize_vt_select_23_b_7_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist126_i_mul64_2_resize_vt_select_23_b_7_mem_q, xout => redist126_i_mul64_2_resize_vt_select_23_b_7_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul64_2_resize_vt_join(BITJOIN,541)@19
    i_mul64_2_resize_vt_join_q <= c_i8_0gr_q & redist126_i_mul64_2_resize_vt_select_23_b_7_outputreg_q & i_and105_resize_vt_const_31_q;

    -- i_acl_push_i8_buf_0_0_2_1_push16_resize(BLACKBOX,379)@12
    -- out out_feedback_out_16@20000000
    -- out out_feedback_valid_out_16@20000000
    thei_acl_push_i8_buf_0_0_2_1_push16_resize : i_acl_push_i8_buf_0_0_2_1_push16_resize176
    PORT MAP (
        in_c0_ene2 => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q,
        in_data_in => redist154_i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize_out_data_out_1_q,
        in_feedback_stall_in_16 => i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_feedback_stall_out_16,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_16 => i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_out_16,
        out_feedback_valid_out_16 => i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_valid_out_16,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_0_0_2_1_pop16_resize(BLACKBOX,366)@12
    -- out out_feedback_stall_out_16@20000000
    thei_acl_pop_i8_buf_0_0_2_1_pop16_resize : i_acl_pop_i8_buf_0_0_2_1_pop16_resize174
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q,
        in_feedback_in_16 => i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_out_16,
        in_feedback_valid_in_16 => i_acl_push_i8_buf_0_0_2_1_push16_resize_out_feedback_valid_out_16,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out,
        out_feedback_stall_out_16 => i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_feedback_stall_out_16,
        clock => clock,
        resetn => resetn
    );

    -- redist157_i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out_2(DELAY,1375)
    redist157_i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out, xout => redist157_i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_conv10_i_resize_sel_x(BITSELECT,92)@14
    i_conv10_i_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist157_i_acl_pop_i8_buf_0_0_2_1_pop16_resize_out_data_out_2_q(7 downto 0)), 32));

    -- i_conv10_i_resize_vt_select_7(BITSELECT,479)@14
    i_conv10_i_resize_vt_select_7_b <= i_conv10_i_resize_sel_x_b(7 downto 0);

    -- i_conv10_i_resize_vt_join(BITJOIN,478)@14
    i_conv10_i_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv10_i_resize_vt_select_7_b;

    -- redist133_i_conv10_i42_resize_vt_join_q_1(DELAY,1351)
    redist133_i_conv10_i42_resize_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv10_i42_resize_vt_join_q, xout => redist133_i_conv10_i42_resize_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- i_add95_2_resize(SUB,398)@12
    i_add95_2_resize_a <= STD_LOGIC_VECTOR("0" & i_conv10_i28_resize_vt_join_q);
    i_add95_2_resize_b <= STD_LOGIC_VECTOR("0" & i_conv10_i56_resize_vt_join_q);
    i_add95_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add95_2_resize_a) - UNSIGNED(i_add95_2_resize_b));
    i_add95_2_resize_q <= i_add95_2_resize_o(32 downto 0);

    -- bgTrunc_i_add95_2_resize_sel_x(BITSELECT,11)@12
    bgTrunc_i_add95_2_resize_sel_x_b <= STD_LOGIC_VECTOR(i_add95_2_resize_q(31 downto 0));

    -- redist184_bgTrunc_i_add95_2_resize_sel_x_b_1(DELAY,1402)
    redist184_bgTrunc_i_add95_2_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add95_2_resize_sel_x_b, xout => redist184_bgTrunc_i_add95_2_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub99_2_resize(SUB,584)@13
    i_sub99_2_resize_a <= STD_LOGIC_VECTOR("0" & redist184_bgTrunc_i_add95_2_resize_sel_x_b_1_q);
    i_sub99_2_resize_b <= STD_LOGIC_VECTOR("0" & redist133_i_conv10_i42_resize_vt_join_q_1_q);
    i_sub99_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub99_2_resize_a) - UNSIGNED(i_sub99_2_resize_b));
    i_sub99_2_resize_q <= i_sub99_2_resize_o(32 downto 0);

    -- bgTrunc_i_sub99_2_resize_sel_x(BITSELECT,40)@13
    bgTrunc_i_sub99_2_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub99_2_resize_q(31 downto 0));

    -- redist176_bgTrunc_i_sub99_2_resize_sel_x_b_1(DELAY,1394)
    redist176_bgTrunc_i_sub99_2_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub99_2_resize_sel_x_b, xout => redist176_bgTrunc_i_sub99_2_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub103_2_resize(ADD,572)@14
    i_sub103_2_resize_a <= STD_LOGIC_VECTOR("0" & redist176_bgTrunc_i_sub99_2_resize_sel_x_b_1_q);
    i_sub103_2_resize_b <= STD_LOGIC_VECTOR("0" & i_conv10_i_resize_vt_join_q);
    i_sub103_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub103_2_resize_a) + UNSIGNED(i_sub103_2_resize_b));
    i_sub103_2_resize_q <= i_sub103_2_resize_o(32 downto 0);

    -- bgTrunc_i_sub103_2_resize_sel_x(BITSELECT,28)@14
    bgTrunc_i_sub103_2_resize_sel_x_b <= i_sub103_2_resize_q(31 downto 0);

    -- i_and104_2_resize(LOGICAL,405)@14
    i_and104_2_resize_q <= bgTrunc_i_sub103_2_resize_sel_x_b and c_i32_67108863_q;

    -- i_and104_2_resize_vt_select_25(BITSELECT,408)@14
    i_and104_2_resize_vt_select_25_b <= i_and104_2_resize_q(25 downto 0);

    -- redist147_i_and104_2_resize_vt_select_25_b_1(DELAY,1365)
    redist147_i_and104_2_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and104_2_resize_vt_select_25_b, xout => redist147_i_and104_2_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul106_2_resize_bs1_merged_bit_select(BITSELECT,1199)@15
    i_mul106_2_resize_bs1_merged_bit_select_b <= redist147_i_and104_2_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul106_2_resize_bs1_merged_bit_select_c <= redist147_i_and104_2_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul106_2_resize_im3_cma(CHAINMULTADD,1176)@15 + 2
    i_mul106_2_resize_im3_cma_reset <= not (resetn);
    i_mul106_2_resize_im3_cma_ena0 <= '1';
    i_mul106_2_resize_im3_cma_ena1 <= i_mul106_2_resize_im3_cma_ena0;
    i_mul106_2_resize_im3_cma_p(0) <= i_mul106_2_resize_im3_cma_a0(0) * i_mul106_2_resize_im3_cma_c0(0);
    i_mul106_2_resize_im3_cma_u(0) <= RESIZE(i_mul106_2_resize_im3_cma_p(0),26);
    i_mul106_2_resize_im3_cma_w(0) <= i_mul106_2_resize_im3_cma_u(0);
    i_mul106_2_resize_im3_cma_x(0) <= i_mul106_2_resize_im3_cma_w(0);
    i_mul106_2_resize_im3_cma_y(0) <= i_mul106_2_resize_im3_cma_x(0);
    i_mul106_2_resize_im3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_2_resize_im3_cma_a0 <= (others => (others => '0'));
            i_mul106_2_resize_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_2_resize_im3_cma_ena0 = '1') THEN
                i_mul106_2_resize_im3_cma_a0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
                i_mul106_2_resize_im3_cma_c0(0) <= RESIZE(UNSIGNED(i_mul106_2_resize_bs1_merged_bit_select_c),10);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_2_resize_im3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_2_resize_im3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_2_resize_im3_cma_ena1 = '1') THEN
                i_mul106_2_resize_im3_cma_s(0) <= i_mul106_2_resize_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_2_resize_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_2_resize_im3_cma_s(0)(25 downto 0)), xout => i_mul106_2_resize_im3_cma_qq, clk => clock, aclr => resetn );
    i_mul106_2_resize_im3_cma_q <= STD_LOGIC_VECTOR(i_mul106_2_resize_im3_cma_qq(23 downto 0));

    -- redist28_i_mul106_2_resize_im3_cma_q_1(DELAY,1246)
    redist28_i_mul106_2_resize_im3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_2_resize_im3_cma_q, xout => redist28_i_mul106_2_resize_im3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_2_resize_align_7(BITSHIFT,790)@18
    i_mul106_2_resize_align_7_qint <= redist28_i_mul106_2_resize_im3_cma_q_1_q & "000000000000000000";
    i_mul106_2_resize_align_7_q <= i_mul106_2_resize_align_7_qint(41 downto 0);

    -- i_mul106_2_resize_im0_cma(CHAINMULTADD,1175)@15 + 2
    i_mul106_2_resize_im0_cma_reset <= not (resetn);
    i_mul106_2_resize_im0_cma_ena0 <= '1';
    i_mul106_2_resize_im0_cma_ena1 <= i_mul106_2_resize_im0_cma_ena0;
    i_mul106_2_resize_im0_cma_p(0) <= i_mul106_2_resize_im0_cma_a0(0) * i_mul106_2_resize_im0_cma_c0(0);
    i_mul106_2_resize_im0_cma_u(0) <= RESIZE(i_mul106_2_resize_im0_cma_p(0),34);
    i_mul106_2_resize_im0_cma_w(0) <= i_mul106_2_resize_im0_cma_u(0);
    i_mul106_2_resize_im0_cma_x(0) <= i_mul106_2_resize_im0_cma_w(0);
    i_mul106_2_resize_im0_cma_y(0) <= i_mul106_2_resize_im0_cma_x(0);
    i_mul106_2_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_2_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul106_2_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_2_resize_im0_cma_ena0 = '1') THEN
                i_mul106_2_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul106_2_resize_bs1_merged_bit_select_b),18);
                i_mul106_2_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_2_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_2_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_2_resize_im0_cma_ena1 = '1') THEN
                i_mul106_2_resize_im0_cma_s(0) <= i_mul106_2_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_2_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_2_resize_im0_cma_s(0)(33 downto 0)), xout => i_mul106_2_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul106_2_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul106_2_resize_im0_cma_qq(33 downto 0));

    -- redist29_i_mul106_2_resize_im0_cma_q_1(DELAY,1247)
    redist29_i_mul106_2_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_2_resize_im0_cma_q, xout => redist29_i_mul106_2_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_2_resize_result_add_0_0(ADD,792)@18
    i_mul106_2_resize_result_add_0_0_a <= STD_LOGIC_VECTOR("000000000" & redist29_i_mul106_2_resize_im0_cma_q_1_q);
    i_mul106_2_resize_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_mul106_2_resize_align_7_q);
    i_mul106_2_resize_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul106_2_resize_result_add_0_0_a) + UNSIGNED(i_mul106_2_resize_result_add_0_0_b));
    i_mul106_2_resize_result_add_0_0_q <= i_mul106_2_resize_result_add_0_0_o(42 downto 0);

    -- i_mul106_2_resize_extender_x(BITJOIN,110)@18
    i_mul106_2_resize_extender_x_q <= i_mul106_1_resize_multconst_x_q & i_mul106_2_resize_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_mul106_2_resize_sel_x(BITSELECT,15)@18
    bgTrunc_i_mul106_2_resize_sel_x_b <= i_mul106_2_resize_extender_x_q(31 downto 0);

    -- redist180_bgTrunc_i_mul106_2_resize_sel_x_b_1(DELAY,1398)
    redist180_bgTrunc_i_mul106_2_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul106_2_resize_sel_x_b, xout => redist180_bgTrunc_i_mul106_2_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add88_2_resize(ADD,394)@19
    i_add88_2_resize_a <= STD_LOGIC_VECTOR("0" & redist180_bgTrunc_i_mul106_2_resize_sel_x_b_1_q);
    i_add88_2_resize_b <= STD_LOGIC_VECTOR("0" & i_mul64_2_resize_vt_join_q);
    i_add88_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add88_2_resize_a) + UNSIGNED(i_add88_2_resize_b));
    i_add88_2_resize_q <= i_add88_2_resize_o(32 downto 0);

    -- bgTrunc_i_add88_2_resize_sel_x(BITSELECT,7)@19
    bgTrunc_i_add88_2_resize_sel_x_b <= i_add88_2_resize_q(31 downto 0);

    -- redist188_bgTrunc_i_add88_2_resize_sel_x_b_1(DELAY,1406)
    redist188_bgTrunc_i_add88_2_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add88_2_resize_sel_x_b, xout => redist188_bgTrunc_i_add88_2_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add107_2_resize(ADD,390)@20
    i_add107_2_resize_a <= STD_LOGIC_VECTOR("0" & redist188_bgTrunc_i_add88_2_resize_sel_x_b_1_q);
    i_add107_2_resize_b <= STD_LOGIC_VECTOR("0" & i_tmp120_2_resize_vt_join_q);
    i_add107_2_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add107_2_resize_a) + UNSIGNED(i_add107_2_resize_b));
    i_add107_2_resize_q <= i_add107_2_resize_o(32 downto 0);

    -- bgTrunc_i_add107_2_resize_sel_x(BITSELECT,3)@20
    bgTrunc_i_add107_2_resize_sel_x_b <= i_add107_2_resize_q(31 downto 0);

    -- leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x(BITSELECT,677)@18
    leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_in <= bgTrunc_i_tmp_1_resize_sel_x_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_b <= leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid679_i_tmp120_1_resize_resize185_shift_x(BITJOIN,678)@18
    leftShiftStage0Idx1_uid679_i_tmp120_1_resize_resize185_shift_x_q <= leftShiftStage0Idx1Rng8_uid678_i_tmp120_1_resize_resize185_shift_x_b & c_i8_0gr_q;

    -- rightShiftStage0Idx1Rng8_uid668_i_shr_resize_resize156_shift_x(BITSELECT,667)@9
    rightShiftStage0Idx1Rng8_uid668_i_shr_resize_resize156_shift_x_b <= in_c0_eni7_3(31 downto 8);

    -- rightShiftStage0Idx1_uid670_i_shr_resize_resize156_shift_x(BITJOIN,669)@9
    rightShiftStage0Idx1_uid670_i_shr_resize_resize156_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid668_i_shr_resize_resize156_shift_x_b;

    -- rightShiftStage0_uid672_i_shr_resize_resize156_shift_x(MUX,671)@9
    rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_s <= VCC_q;
    rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_combproc: PROCESS (rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_s, in_c0_eni7_3, rightShiftStage0Idx1_uid670_i_shr_resize_resize156_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_q <= in_c0_eni7_3;
            WHEN "1" => rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_q <= rightShiftStage0Idx1_uid670_i_shr_resize_resize156_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_resize_vt_select_23(BITSELECT,570)@9
    i_shr_resize_vt_select_23_b <= rightShiftStage0_uid672_i_shr_resize_resize156_shift_x_q(23 downto 0);

    -- i_shr_resize_vt_join(BITJOIN,569)@9
    i_shr_resize_vt_join_q <= c_i8_0gr_q & i_shr_resize_vt_select_23_b;

    -- i_conv6_resize_sel_x(BITSELECT,102)@9
    i_conv6_resize_sel_x_b <= i_shr_resize_vt_join_q(7 downto 0);

    -- redist172_i_conv6_resize_sel_x_b_2(DELAY,1390)
    redist172_i_conv6_resize_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv6_resize_sel_x_b, xout => redist172_i_conv6_resize_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_729_0_1_1_push13_resize(BLACKBOX,386)@11
    -- out out_feedback_out_13@20000000
    -- out out_feedback_valid_out_13@20000000
    thei_acl_push_i8_buf_729_0_1_1_push13_resize : i_acl_push_i8_buf_729_0_1_1_push13_resize162
    PORT MAP (
        in_c0_ene2 => redist165_sync_in_aunroll_x_in_c0_eni7_2_2_q,
        in_data_in => i_acl_748_resize_q,
        in_feedback_stall_in_13 => i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_feedback_stall_out_13,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_feedback_out_13 => i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_out_13,
        out_feedback_valid_out_13 => i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_valid_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_729_0_1_1_pop13_resize(BLACKBOX,373)@11
    -- out out_feedback_stall_out_13@20000000
    thei_acl_pop_i8_buf_729_0_1_1_pop13_resize : i_acl_pop_i8_buf_729_0_1_1_pop13_resize138
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q,
        in_feedback_in_13 => i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_out_13,
        in_feedback_valid_in_13 => i_acl_push_i8_buf_729_0_1_1_push13_resize_out_feedback_valid_out_13,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out,
        out_feedback_stall_out_13 => i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_feedback_stall_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_748_resize(MUX,360)@11
    i_acl_748_resize_s <= redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q;
    i_acl_748_resize_combproc: PROCESS (i_acl_748_resize_s, i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out, redist172_i_conv6_resize_sel_x_b_2_q)
    BEGIN
        CASE (i_acl_748_resize_s) IS
            WHEN "0" => i_acl_748_resize_q <= i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out;
            WHEN "1" => i_acl_748_resize_q <= redist172_i_conv6_resize_sel_x_b_2_q;
            WHEN OTHERS => i_acl_748_resize_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist161_i_acl_748_resize_q_1(DELAY,1379)
    redist161_i_acl_748_resize_q_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_748_resize_q, xout => redist161_i_acl_748_resize_q_1_q, clk => clock, aclr => resetn );

    -- i_conv5_i27_resize_sel_x(BITSELECT,98)@12
    i_conv5_i27_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist161_i_acl_748_resize_q_1_q(7 downto 0)), 32));

    -- i_conv5_i27_resize_vt_select_7(BITSELECT,500)@12
    i_conv5_i27_resize_vt_select_7_b <= i_conv5_i27_resize_sel_x_b(7 downto 0);

    -- i_conv5_i27_resize_vt_join(BITJOIN,499)@12
    i_conv5_i27_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv5_i27_resize_vt_select_7_b;

    -- redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1(DELAY,1369)
    redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out, xout => redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize(BLACKBOX,382)@12
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize : i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140
    PORT MAP (
        in_data_in => redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1_q,
        in_feedback_stall_in_6 => i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_feedback_stall_out_6,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_6 => i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize(BLACKBOX,369)@11
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize : i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => i_not_select781_resize_c,
        in_feedback_in_6 => i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1(DELAY,1373)
    redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out, xout => redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv5_i55_resize_sel_x(BITSELECT,100)@12
    i_conv5_i55_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv5_i55_resize_vt_select_7(BITSELECT,508)@12
    i_conv5_i55_resize_vt_select_7_b <= i_conv5_i55_resize_sel_x_b(7 downto 0);

    -- i_conv5_i55_resize_vt_join(BITJOIN,507)@12
    i_conv5_i55_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv5_i55_resize_vt_select_7_b;

    -- i_sub71_1_resize(SUB,575)@12
    i_sub71_1_resize_a <= STD_LOGIC_VECTOR("0" & i_conv5_i55_resize_vt_join_q);
    i_sub71_1_resize_b <= STD_LOGIC_VECTOR("0" & i_conv5_i27_resize_vt_join_q);
    i_sub71_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub71_1_resize_a) - UNSIGNED(i_sub71_1_resize_b));
    i_sub71_1_resize_q <= i_sub71_1_resize_o(32 downto 0);

    -- bgTrunc_i_sub71_1_resize_sel_x(BITSELECT,31)@12
    bgTrunc_i_sub71_1_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub71_1_resize_q(31 downto 0));

    -- i_and72_1_resize(LOGICAL,421)@12
    i_and72_1_resize_q <= bgTrunc_i_sub71_1_resize_sel_x_b and c_i32_67108863_q;

    -- i_and72_1_resize_vt_select_25(BITSELECT,424)@12
    i_and72_1_resize_vt_select_25_b <= i_and72_1_resize_q(25 downto 0);

    -- redist143_i_and72_1_resize_vt_select_25_b_1(DELAY,1361)
    redist143_i_and72_1_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and72_1_resize_vt_select_25_b, xout => redist143_i_and72_1_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_bs2_merged_bit_select(BITSELECT,1202)@13
    i_mul75_1_resize_bs2_merged_bit_select_b <= redist143_i_and72_1_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul75_1_resize_bs2_merged_bit_select_c <= redist143_i_and72_1_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul75_1_resize_bjB9(BITJOIN,822)@13
    i_mul75_1_resize_bjB9_q <= GND_q & i_mul75_1_resize_bs2_merged_bit_select_b;

    -- i_mul75_1_resize_ma3_cma(CHAINMULTADD,1189)@13 + 2
    i_mul75_1_resize_ma3_cma_reset <= not (resetn);
    i_mul75_1_resize_ma3_cma_ena0 <= '1';
    i_mul75_1_resize_ma3_cma_ena1 <= i_mul75_1_resize_ma3_cma_ena0;
    i_mul75_1_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul75_1_resize_ma3_cma_a0(0),9));
    i_mul75_1_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul75_1_resize_ma3_cma_a0(1),9));
    i_mul75_1_resize_ma3_cma_p(0) <= i_mul75_1_resize_ma3_cma_l(0) * i_mul75_1_resize_ma3_cma_c0(0);
    i_mul75_1_resize_ma3_cma_p(1) <= i_mul75_1_resize_ma3_cma_l(1) * i_mul75_1_resize_ma3_cma_c0(1);
    i_mul75_1_resize_ma3_cma_u(0) <= RESIZE(i_mul75_1_resize_ma3_cma_p(0),29);
    i_mul75_1_resize_ma3_cma_u(1) <= RESIZE(i_mul75_1_resize_ma3_cma_p(1),29);
    i_mul75_1_resize_ma3_cma_w(0) <= i_mul75_1_resize_ma3_cma_u(0) + i_mul75_1_resize_ma3_cma_u(1);
    i_mul75_1_resize_ma3_cma_x(0) <= i_mul75_1_resize_ma3_cma_w(0);
    i_mul75_1_resize_ma3_cma_y(0) <= i_mul75_1_resize_ma3_cma_x(0);
    i_mul75_1_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul75_1_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_1_resize_ma3_cma_ena0 = '1') THEN
                i_mul75_1_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs7_b),8);
                i_mul75_1_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs2_merged_bit_select_c),8);
                i_mul75_1_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul75_1_resize_bjB9_q),19);
                i_mul75_1_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul75_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_1_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_1_resize_ma3_cma_ena1 = '1') THEN
                i_mul75_1_resize_ma3_cma_s(0) <= i_mul75_1_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_1_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_1_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul75_1_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul75_1_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul75_1_resize_ma3_cma_qq(27 downto 0));

    -- redist15_i_mul75_1_resize_ma3_cma_q_1(DELAY,1233)
    redist15_i_mul75_1_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_ma3_cma_q, xout => redist15_i_mul75_1_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_align_14(BITSHIFT,827)@16
    i_mul75_1_resize_align_14_qint <= redist15_i_mul75_1_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul75_1_resize_align_14_q <= i_mul75_1_resize_align_14_qint(45 downto 0);

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1035)@16
    i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul75_1_resize_align_14_q(43 downto 0));

    -- i_mul75_1_resize_im10(MULT,823)@13 + 2
    i_mul75_1_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul75_1_resize_im10_a0) * UNSIGNED(i_mul75_1_resize_im10_b0));
    i_mul75_1_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_im10_a0 <= (others => '0');
            i_mul75_1_resize_im10_b0 <= (others => '0');
            i_mul75_1_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_1_resize_im10_a0 <= i_mul75_1_resize_bs11_b;
            i_mul75_1_resize_im10_b0 <= i_mul75_1_resize_bs2_merged_bit_select_c;
            i_mul75_1_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul75_1_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul75_1_resize_im10_q <= i_mul75_1_resize_im10_s1;

    -- redist119_i_mul75_1_resize_im10_q_1(DELAY,1337)
    redist119_i_mul75_1_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_im10_q, xout => redist119_i_mul75_1_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1210)@16
    i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist119_i_mul75_1_resize_im10_q_1_q(7 downto 0));
    i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist119_i_mul75_1_resize_im10_q_1_q(15 downto 8));

    -- i_mul75_1_resize_im0_cma(CHAINMULTADD,1181)@13 + 2
    i_mul75_1_resize_im0_cma_reset <= not (resetn);
    i_mul75_1_resize_im0_cma_ena0 <= '1';
    i_mul75_1_resize_im0_cma_ena1 <= i_mul75_1_resize_im0_cma_ena0;
    i_mul75_1_resize_im0_cma_p(0) <= i_mul75_1_resize_im0_cma_a0(0) * i_mul75_1_resize_im0_cma_c0(0);
    i_mul75_1_resize_im0_cma_u(0) <= RESIZE(i_mul75_1_resize_im0_cma_p(0),36);
    i_mul75_1_resize_im0_cma_w(0) <= i_mul75_1_resize_im0_cma_u(0);
    i_mul75_1_resize_im0_cma_x(0) <= i_mul75_1_resize_im0_cma_w(0);
    i_mul75_1_resize_im0_cma_y(0) <= i_mul75_1_resize_im0_cma_x(0);
    i_mul75_1_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul75_1_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_1_resize_im0_cma_ena0 = '1') THEN
                i_mul75_1_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs1_b),18);
                i_mul75_1_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_1_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_1_resize_im0_cma_ena1 = '1') THEN
                i_mul75_1_resize_im0_cma_s(0) <= i_mul75_1_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_1_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_1_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul75_1_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul75_1_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul75_1_resize_im0_cma_qq(35 downto 0));

    -- redist23_i_mul75_1_resize_im0_cma_q_1(DELAY,1241)
    redist23_i_mul75_1_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_im0_cma_q, xout => redist23_i_mul75_1_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1031)@16
    i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist23_i_mul75_1_resize_im0_cma_q_1_q;

    -- i_mul75_1_resize_result_add_0_0_p1_of_2(ADD,956)@16 + 1
    i_mul75_1_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul75_1_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul75_1_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_1_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul75_1_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul75_1_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_1_resize_result_add_0_0_p1_of_2_c(0) <= i_mul75_1_resize_result_add_0_0_p1_of_2_o(44);
    i_mul75_1_resize_result_add_0_0_p1_of_2_q <= i_mul75_1_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1038)@16
    i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul75_1_resize_align_14_q(45 downto 45));

    -- redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1313)
    redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1037)@16
    i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul75_1_resize_align_14_q(45 downto 44));

    -- redist103_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1321)
    redist103_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist103_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1046)@17
    i_mul75_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist95_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist103_i_mul75_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist7_i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1225)
    redist7_i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist7_i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1034)@17
    i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist7_i_mul75_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul75_1_resize_result_add_0_0_p2_of_2(ADD,957)@17 + 1
    i_mul75_1_resize_result_add_0_0_p2_of_2_cin <= i_mul75_1_resize_result_add_0_0_p1_of_2_c;
    i_mul75_1_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul75_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul75_1_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul75_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul75_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul75_1_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul75_1_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_1_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_1_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul75_1_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul75_1_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_1_resize_result_add_0_0_p2_of_2_q <= i_mul75_1_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist111_i_mul75_1_resize_result_add_0_0_p1_of_2_q_1(DELAY,1329)
    redist111_i_mul75_1_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_1_resize_result_add_0_0_p1_of_2_q, xout => redist111_i_mul75_1_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_1_resize_result_add_0_0_BitJoin_for_q(BITJOIN,958)@18
    i_mul75_1_resize_result_add_0_0_BitJoin_for_q_q <= i_mul75_1_resize_result_add_0_0_p2_of_2_q & redist111_i_mul75_1_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul75_1_resize_extender_x(BITJOIN,132)@18
    i_mul75_1_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul75_1_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul75_1_resize_sel_x(BITSELECT,18)@18
    bgTrunc_i_mul75_1_resize_sel_x_b <= i_mul75_1_resize_extender_x_q(31 downto 0);

    -- i_conv5_i41_resize_sel_x(BITSELECT,99)@12
    i_conv5_i41_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist151_i_acl_pop_i8_buf_729_0_1_1_pop13_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv5_i41_resize_vt_select_7(BITSELECT,504)@12
    i_conv5_i41_resize_vt_select_7_b <= i_conv5_i41_resize_sel_x_b(7 downto 0);

    -- i_conv5_i41_resize_vt_join(BITJOIN,503)@12
    i_conv5_i41_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv5_i41_resize_vt_select_7_b;

    -- i_sub83_1_resize(SUB,579)@12
    i_sub83_1_resize_a <= STD_LOGIC_VECTOR("0" & i_conv5_i41_resize_vt_join_q);
    i_sub83_1_resize_b <= STD_LOGIC_VECTOR("0" & i_conv5_i27_resize_vt_join_q);
    i_sub83_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub83_1_resize_a) - UNSIGNED(i_sub83_1_resize_b));
    i_sub83_1_resize_q <= i_sub83_1_resize_o(32 downto 0);

    -- bgTrunc_i_sub83_1_resize_sel_x(BITSELECT,35)@12
    bgTrunc_i_sub83_1_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub83_1_resize_q(31 downto 0));

    -- i_and84_1_resize(LOGICAL,441)@12
    i_and84_1_resize_q <= bgTrunc_i_sub83_1_resize_sel_x_b and c_i32_67108863_q;

    -- i_and84_1_resize_vt_select_25(BITSELECT,444)@12
    i_and84_1_resize_vt_select_25_b <= i_and84_1_resize_q(25 downto 0);

    -- redist138_i_and84_1_resize_vt_select_25_b_1(DELAY,1356)
    redist138_i_and84_1_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and84_1_resize_vt_select_25_b, xout => redist138_i_and84_1_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_bs2_merged_bit_select(BITSELECT,1206)@13
    i_mul87_1_resize_bs2_merged_bit_select_b <= redist138_i_and84_1_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul87_1_resize_bs2_merged_bit_select_c <= redist138_i_and84_1_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul87_1_resize_bjB9(BITJOIN,890)@13
    i_mul87_1_resize_bjB9_q <= GND_q & i_mul87_1_resize_bs2_merged_bit_select_b;

    -- i_mul87_1_resize_ma3_cma(CHAINMULTADD,1193)@13 + 2
    i_mul87_1_resize_ma3_cma_reset <= not (resetn);
    i_mul87_1_resize_ma3_cma_ena0 <= '1';
    i_mul87_1_resize_ma3_cma_ena1 <= i_mul87_1_resize_ma3_cma_ena0;
    i_mul87_1_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul87_1_resize_ma3_cma_a0(0),9));
    i_mul87_1_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul87_1_resize_ma3_cma_a0(1),9));
    i_mul87_1_resize_ma3_cma_p(0) <= i_mul87_1_resize_ma3_cma_l(0) * i_mul87_1_resize_ma3_cma_c0(0);
    i_mul87_1_resize_ma3_cma_p(1) <= i_mul87_1_resize_ma3_cma_l(1) * i_mul87_1_resize_ma3_cma_c0(1);
    i_mul87_1_resize_ma3_cma_u(0) <= RESIZE(i_mul87_1_resize_ma3_cma_p(0),29);
    i_mul87_1_resize_ma3_cma_u(1) <= RESIZE(i_mul87_1_resize_ma3_cma_p(1),29);
    i_mul87_1_resize_ma3_cma_w(0) <= i_mul87_1_resize_ma3_cma_u(0) + i_mul87_1_resize_ma3_cma_u(1);
    i_mul87_1_resize_ma3_cma_x(0) <= i_mul87_1_resize_ma3_cma_w(0);
    i_mul87_1_resize_ma3_cma_y(0) <= i_mul87_1_resize_ma3_cma_x(0);
    i_mul87_1_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul87_1_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_1_resize_ma3_cma_ena0 = '1') THEN
                i_mul87_1_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs7_b),8);
                i_mul87_1_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs2_merged_bit_select_c),8);
                i_mul87_1_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul87_1_resize_bjB9_q),19);
                i_mul87_1_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul87_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_1_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_1_resize_ma3_cma_ena1 = '1') THEN
                i_mul87_1_resize_ma3_cma_s(0) <= i_mul87_1_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_1_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_1_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul87_1_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul87_1_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul87_1_resize_ma3_cma_qq(27 downto 0));

    -- redist11_i_mul87_1_resize_ma3_cma_q_1(DELAY,1229)
    redist11_i_mul87_1_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_ma3_cma_q, xout => redist11_i_mul87_1_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_align_14(BITSHIFT,895)@16
    i_mul87_1_resize_align_14_qint <= redist11_i_mul87_1_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul87_1_resize_align_14_q <= i_mul87_1_resize_align_14_qint(45 downto 0);

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1107)@16
    i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul87_1_resize_align_14_q(43 downto 0));

    -- i_mul87_1_resize_im10(MULT,891)@13 + 2
    i_mul87_1_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul87_1_resize_im10_a0) * UNSIGNED(i_mul87_1_resize_im10_b0));
    i_mul87_1_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_im10_a0 <= (others => '0');
            i_mul87_1_resize_im10_b0 <= (others => '0');
            i_mul87_1_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_1_resize_im10_a0 <= i_mul87_1_resize_bs11_b;
            i_mul87_1_resize_im10_b0 <= i_mul87_1_resize_bs2_merged_bit_select_c;
            i_mul87_1_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul87_1_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul87_1_resize_im10_q <= i_mul87_1_resize_im10_s1;

    -- redist115_i_mul87_1_resize_im10_q_1(DELAY,1333)
    redist115_i_mul87_1_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_im10_q, xout => redist115_i_mul87_1_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1214)@16
    i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist115_i_mul87_1_resize_im10_q_1_q(7 downto 0));
    i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist115_i_mul87_1_resize_im10_q_1_q(15 downto 8));

    -- i_mul87_1_resize_im0_cma(CHAINMULTADD,1185)@13 + 2
    i_mul87_1_resize_im0_cma_reset <= not (resetn);
    i_mul87_1_resize_im0_cma_ena0 <= '1';
    i_mul87_1_resize_im0_cma_ena1 <= i_mul87_1_resize_im0_cma_ena0;
    i_mul87_1_resize_im0_cma_p(0) <= i_mul87_1_resize_im0_cma_a0(0) * i_mul87_1_resize_im0_cma_c0(0);
    i_mul87_1_resize_im0_cma_u(0) <= RESIZE(i_mul87_1_resize_im0_cma_p(0),36);
    i_mul87_1_resize_im0_cma_w(0) <= i_mul87_1_resize_im0_cma_u(0);
    i_mul87_1_resize_im0_cma_x(0) <= i_mul87_1_resize_im0_cma_w(0);
    i_mul87_1_resize_im0_cma_y(0) <= i_mul87_1_resize_im0_cma_x(0);
    i_mul87_1_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul87_1_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_1_resize_im0_cma_ena0 = '1') THEN
                i_mul87_1_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs1_b),18);
                i_mul87_1_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_1_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_1_resize_im0_cma_ena1 = '1') THEN
                i_mul87_1_resize_im0_cma_s(0) <= i_mul87_1_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_1_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_1_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul87_1_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul87_1_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul87_1_resize_im0_cma_qq(35 downto 0));

    -- redist19_i_mul87_1_resize_im0_cma_q_1(DELAY,1237)
    redist19_i_mul87_1_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_im0_cma_q, xout => redist19_i_mul87_1_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1103)@16
    i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist19_i_mul87_1_resize_im0_cma_q_1_q;

    -- i_mul87_1_resize_result_add_0_0_p1_of_2(ADD,996)@16 + 1
    i_mul87_1_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul87_1_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul87_1_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_1_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul87_1_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul87_1_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_1_resize_result_add_0_0_p1_of_2_c(0) <= i_mul87_1_resize_result_add_0_0_p1_of_2_o(44);
    i_mul87_1_resize_result_add_0_0_p1_of_2_q <= i_mul87_1_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1110)@16
    i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul87_1_resize_align_14_q(45 downto 45));

    -- redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1277)
    redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1109)@16
    i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul87_1_resize_align_14_q(45 downto 44));

    -- redist67_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1285)
    redist67_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist67_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1118)@17
    i_mul87_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist59_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist67_i_mul87_1_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist3_i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1221)
    redist3_i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist3_i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1106)@17
    i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist3_i_mul87_1_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul87_1_resize_result_add_0_0_p2_of_2(ADD,997)@17 + 1
    i_mul87_1_resize_result_add_0_0_p2_of_2_cin <= i_mul87_1_resize_result_add_0_0_p1_of_2_c;
    i_mul87_1_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul87_1_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul87_1_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul87_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul87_1_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul87_1_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul87_1_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_1_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_1_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul87_1_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul87_1_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_1_resize_result_add_0_0_p2_of_2_q <= i_mul87_1_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist107_i_mul87_1_resize_result_add_0_0_p1_of_2_q_1(DELAY,1325)
    redist107_i_mul87_1_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_1_resize_result_add_0_0_p1_of_2_q, xout => redist107_i_mul87_1_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_1_resize_result_add_0_0_BitJoin_for_q(BITJOIN,998)@18
    i_mul87_1_resize_result_add_0_0_BitJoin_for_q_q <= i_mul87_1_resize_result_add_0_0_p2_of_2_q & redist107_i_mul87_1_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul87_1_resize_extender_x(BITJOIN,140)@18
    i_mul87_1_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul87_1_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul87_1_resize_sel_x(BITSELECT,22)@18
    bgTrunc_i_mul87_1_resize_sel_x_b <= i_mul87_1_resize_extender_x_q(31 downto 0);

    -- i_tmp_1_resize(ADD,599)@18
    i_tmp_1_resize_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul87_1_resize_sel_x_b);
    i_tmp_1_resize_b <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul75_1_resize_sel_x_b);
    i_tmp_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_tmp_1_resize_a) + UNSIGNED(i_tmp_1_resize_b));
    i_tmp_1_resize_q <= i_tmp_1_resize_o(32 downto 0);

    -- bgTrunc_i_tmp_1_resize_sel_x(BITSELECT,43)@18
    bgTrunc_i_tmp_1_resize_sel_x_b <= i_tmp_1_resize_q(31 downto 0);

    -- leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x(MUX,680)@18
    leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_s <= VCC_q;
    leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_combproc: PROCESS (leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_s, bgTrunc_i_tmp_1_resize_sel_x_b, leftShiftStage0Idx1_uid679_i_tmp120_1_resize_resize185_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_q <= bgTrunc_i_tmp_1_resize_sel_x_b;
            WHEN "1" => leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_q <= leftShiftStage0Idx1_uid679_i_tmp120_1_resize_resize185_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_tmp120_1_resize_vt_select_31(BITSELECT,589)@18
    i_tmp120_1_resize_vt_select_31_b <= leftShiftStage0_uid681_i_tmp120_1_resize_resize185_shift_x_q(31 downto 8);

    -- redist123_i_tmp120_1_resize_vt_select_31_b_2(DELAY,1341)
    redist123_i_tmp120_1_resize_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp120_1_resize_vt_select_31_b, xout => redist123_i_tmp120_1_resize_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_tmp120_1_resize_vt_join(BITJOIN,588)@20
    i_tmp120_1_resize_vt_join_q <= redist123_i_tmp120_1_resize_vt_select_31_b_2_q & c_i8_0gr_q;

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_notEnable(LOGICAL,1452)
    redist127_i_mul64_1_resize_vt_select_23_b_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_nor(LOGICAL,1453)
    redist127_i_mul64_1_resize_vt_select_23_b_7_nor_q <= not (redist127_i_mul64_1_resize_vt_select_23_b_7_notEnable_q or redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q);

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_mem_last(CONSTANT,1449)
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_last_q <= "010";

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_cmp(LOGICAL,1450)
    redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_q);
    redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_q <= "1" WHEN redist127_i_mul64_1_resize_vt_select_23_b_7_mem_last_q = redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_b ELSE "0";

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg(REG,1451)
    redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg_q <= STD_LOGIC_VECTOR(redist127_i_mul64_1_resize_vt_select_23_b_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena(REG,1454)
    redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist127_i_mul64_1_resize_vt_select_23_b_7_nor_q = "1") THEN
                redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist127_i_mul64_1_resize_vt_select_23_b_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_enaAnd(LOGICAL,1455)
    redist127_i_mul64_1_resize_vt_select_23_b_7_enaAnd_q <= redist127_i_mul64_1_resize_vt_select_23_b_7_sticky_ena_q and VCC_q;

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt(COUNTER,1447)
    -- low=0, high=3, step=1, init=0
    redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i <= redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_i, 2)));

    -- leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x(BITSELECT,623)@12
    leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_in <= i_conv5_i27_resize_vt_join_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_b <= leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid625_i_mul64_1_resize_resize184_shift_x(BITJOIN,624)@12
    leftShiftStage0Idx1_uid625_i_mul64_1_resize_resize184_shift_x_q <= leftShiftStage0Idx1Rng16_uid624_i_mul64_1_resize_resize184_shift_x_b & i_and105_resize_vt_const_31_q;

    -- leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x(MUX,626)@12
    leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_s <= VCC_q;
    leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_combproc: PROCESS (leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_s, i_conv5_i27_resize_vt_join_q, leftShiftStage0Idx1_uid625_i_mul64_1_resize_resize184_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_q <= i_conv5_i27_resize_vt_join_q;
            WHEN "1" => leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_q <= leftShiftStage0Idx1_uid625_i_mul64_1_resize_resize184_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul64_1_resize_vt_select_23(BITSELECT,538)@12
    i_mul64_1_resize_vt_select_23_b <= leftShiftStage0_uid627_i_mul64_1_resize_resize184_shift_x_q(23 downto 16);

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_inputreg(DELAY,1444)
    redist127_i_mul64_1_resize_vt_select_23_b_7_inputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul64_1_resize_vt_select_23_b, xout => redist127_i_mul64_1_resize_vt_select_23_b_7_inputreg_q, clk => clock, aclr => resetn );

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr(REG,1448)
    redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr_q <= STD_LOGIC_VECTOR(redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_mem(DUALMEM,1446)
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ia <= STD_LOGIC_VECTOR(redist127_i_mul64_1_resize_vt_select_23_b_7_inputreg_q);
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_aa <= redist127_i_mul64_1_resize_vt_select_23_b_7_wraddr_q;
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ab <= redist127_i_mul64_1_resize_vt_select_23_b_7_rdcnt_q;
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_reset0 <= not (resetn);
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist127_i_mul64_1_resize_vt_select_23_b_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_reset0,
        clock1 => clock,
        address_a => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_aa,
        data_a => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_ab,
        q_b => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_iq
    );
    redist127_i_mul64_1_resize_vt_select_23_b_7_mem_q <= redist127_i_mul64_1_resize_vt_select_23_b_7_mem_iq(7 downto 0);

    -- redist127_i_mul64_1_resize_vt_select_23_b_7_outputreg(DELAY,1445)
    redist127_i_mul64_1_resize_vt_select_23_b_7_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist127_i_mul64_1_resize_vt_select_23_b_7_mem_q, xout => redist127_i_mul64_1_resize_vt_select_23_b_7_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul64_1_resize_vt_join(BITJOIN,537)@19
    i_mul64_1_resize_vt_join_q <= c_i8_0gr_q & redist127_i_mul64_1_resize_vt_select_23_b_7_outputreg_q & i_and105_resize_vt_const_31_q;

    -- i_acl_push_i8_buf_0_0_1_1_push17_resize(BLACKBOX,378)@12
    -- out out_feedback_out_17@20000000
    -- out out_feedback_valid_out_17@20000000
    thei_acl_push_i8_buf_0_0_1_1_push17_resize : i_acl_push_i8_buf_0_0_1_1_push17_resize172
    PORT MAP (
        in_c0_ene2 => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q,
        in_data_in => redist155_i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize_out_data_out_1_q,
        in_feedback_stall_in_17 => i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_feedback_stall_out_17,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_17 => i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_out_17,
        out_feedback_valid_out_17 => i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_valid_out_17,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_0_0_1_1_pop17_resize(BLACKBOX,365)@12
    -- out out_feedback_stall_out_17@20000000
    thei_acl_pop_i8_buf_0_0_1_1_pop17_resize : i_acl_pop_i8_buf_0_0_1_1_pop17_resize170
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q,
        in_feedback_in_17 => i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_out_17,
        in_feedback_valid_in_17 => i_acl_push_i8_buf_0_0_1_1_push17_resize_out_feedback_valid_out_17,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out,
        out_feedback_stall_out_17 => i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_feedback_stall_out_17,
        clock => clock,
        resetn => resetn
    );

    -- redist158_i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out_2(DELAY,1376)
    redist158_i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out, xout => redist158_i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_conv5_i_resize_sel_x(BITSELECT,101)@14
    i_conv5_i_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist158_i_acl_pop_i8_buf_0_0_1_1_pop17_resize_out_data_out_2_q(7 downto 0)), 32));

    -- i_conv5_i_resize_vt_select_7(BITSELECT,512)@14
    i_conv5_i_resize_vt_select_7_b <= i_conv5_i_resize_sel_x_b(7 downto 0);

    -- i_conv5_i_resize_vt_join(BITJOIN,511)@14
    i_conv5_i_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv5_i_resize_vt_select_7_b;

    -- redist130_i_conv5_i41_resize_vt_join_q_1(DELAY,1348)
    redist130_i_conv5_i41_resize_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv5_i41_resize_vt_join_q, xout => redist130_i_conv5_i41_resize_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- i_add95_1_resize(SUB,397)@12
    i_add95_1_resize_a <= STD_LOGIC_VECTOR("0" & i_conv5_i27_resize_vt_join_q);
    i_add95_1_resize_b <= STD_LOGIC_VECTOR("0" & i_conv5_i55_resize_vt_join_q);
    i_add95_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add95_1_resize_a) - UNSIGNED(i_add95_1_resize_b));
    i_add95_1_resize_q <= i_add95_1_resize_o(32 downto 0);

    -- bgTrunc_i_add95_1_resize_sel_x(BITSELECT,10)@12
    bgTrunc_i_add95_1_resize_sel_x_b <= STD_LOGIC_VECTOR(i_add95_1_resize_q(31 downto 0));

    -- redist185_bgTrunc_i_add95_1_resize_sel_x_b_1(DELAY,1403)
    redist185_bgTrunc_i_add95_1_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add95_1_resize_sel_x_b, xout => redist185_bgTrunc_i_add95_1_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub99_1_resize(SUB,583)@13
    i_sub99_1_resize_a <= STD_LOGIC_VECTOR("0" & redist185_bgTrunc_i_add95_1_resize_sel_x_b_1_q);
    i_sub99_1_resize_b <= STD_LOGIC_VECTOR("0" & redist130_i_conv5_i41_resize_vt_join_q_1_q);
    i_sub99_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub99_1_resize_a) - UNSIGNED(i_sub99_1_resize_b));
    i_sub99_1_resize_q <= i_sub99_1_resize_o(32 downto 0);

    -- bgTrunc_i_sub99_1_resize_sel_x(BITSELECT,39)@13
    bgTrunc_i_sub99_1_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub99_1_resize_q(31 downto 0));

    -- redist177_bgTrunc_i_sub99_1_resize_sel_x_b_1(DELAY,1395)
    redist177_bgTrunc_i_sub99_1_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub99_1_resize_sel_x_b, xout => redist177_bgTrunc_i_sub99_1_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub103_1_resize(ADD,571)@14
    i_sub103_1_resize_a <= STD_LOGIC_VECTOR("0" & redist177_bgTrunc_i_sub99_1_resize_sel_x_b_1_q);
    i_sub103_1_resize_b <= STD_LOGIC_VECTOR("0" & i_conv5_i_resize_vt_join_q);
    i_sub103_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub103_1_resize_a) + UNSIGNED(i_sub103_1_resize_b));
    i_sub103_1_resize_q <= i_sub103_1_resize_o(32 downto 0);

    -- bgTrunc_i_sub103_1_resize_sel_x(BITSELECT,27)@14
    bgTrunc_i_sub103_1_resize_sel_x_b <= i_sub103_1_resize_q(31 downto 0);

    -- i_and104_1_resize(LOGICAL,401)@14
    i_and104_1_resize_q <= bgTrunc_i_sub103_1_resize_sel_x_b and c_i32_67108863_q;

    -- i_and104_1_resize_vt_select_25(BITSELECT,404)@14
    i_and104_1_resize_vt_select_25_b <= i_and104_1_resize_q(25 downto 0);

    -- redist148_i_and104_1_resize_vt_select_25_b_1(DELAY,1366)
    redist148_i_and104_1_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and104_1_resize_vt_select_25_b, xout => redist148_i_and104_1_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul106_1_resize_bs1_merged_bit_select(BITSELECT,1198)@15
    i_mul106_1_resize_bs1_merged_bit_select_b <= redist148_i_and104_1_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul106_1_resize_bs1_merged_bit_select_c <= redist148_i_and104_1_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul106_1_resize_im3_cma(CHAINMULTADD,1174)@15 + 2
    i_mul106_1_resize_im3_cma_reset <= not (resetn);
    i_mul106_1_resize_im3_cma_ena0 <= '1';
    i_mul106_1_resize_im3_cma_ena1 <= i_mul106_1_resize_im3_cma_ena0;
    i_mul106_1_resize_im3_cma_p(0) <= i_mul106_1_resize_im3_cma_a0(0) * i_mul106_1_resize_im3_cma_c0(0);
    i_mul106_1_resize_im3_cma_u(0) <= RESIZE(i_mul106_1_resize_im3_cma_p(0),26);
    i_mul106_1_resize_im3_cma_w(0) <= i_mul106_1_resize_im3_cma_u(0);
    i_mul106_1_resize_im3_cma_x(0) <= i_mul106_1_resize_im3_cma_w(0);
    i_mul106_1_resize_im3_cma_y(0) <= i_mul106_1_resize_im3_cma_x(0);
    i_mul106_1_resize_im3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_1_resize_im3_cma_a0 <= (others => (others => '0'));
            i_mul106_1_resize_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_1_resize_im3_cma_ena0 = '1') THEN
                i_mul106_1_resize_im3_cma_a0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
                i_mul106_1_resize_im3_cma_c0(0) <= RESIZE(UNSIGNED(i_mul106_1_resize_bs1_merged_bit_select_c),10);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_1_resize_im3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_1_resize_im3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_1_resize_im3_cma_ena1 = '1') THEN
                i_mul106_1_resize_im3_cma_s(0) <= i_mul106_1_resize_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_1_resize_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_1_resize_im3_cma_s(0)(25 downto 0)), xout => i_mul106_1_resize_im3_cma_qq, clk => clock, aclr => resetn );
    i_mul106_1_resize_im3_cma_q <= STD_LOGIC_VECTOR(i_mul106_1_resize_im3_cma_qq(23 downto 0));

    -- redist30_i_mul106_1_resize_im3_cma_q_1(DELAY,1248)
    redist30_i_mul106_1_resize_im3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_1_resize_im3_cma_q, xout => redist30_i_mul106_1_resize_im3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_1_resize_align_7(BITSHIFT,780)@18
    i_mul106_1_resize_align_7_qint <= redist30_i_mul106_1_resize_im3_cma_q_1_q & "000000000000000000";
    i_mul106_1_resize_align_7_q <= i_mul106_1_resize_align_7_qint(41 downto 0);

    -- i_mul106_1_resize_im0_cma(CHAINMULTADD,1173)@15 + 2
    i_mul106_1_resize_im0_cma_reset <= not (resetn);
    i_mul106_1_resize_im0_cma_ena0 <= '1';
    i_mul106_1_resize_im0_cma_ena1 <= i_mul106_1_resize_im0_cma_ena0;
    i_mul106_1_resize_im0_cma_p(0) <= i_mul106_1_resize_im0_cma_a0(0) * i_mul106_1_resize_im0_cma_c0(0);
    i_mul106_1_resize_im0_cma_u(0) <= RESIZE(i_mul106_1_resize_im0_cma_p(0),34);
    i_mul106_1_resize_im0_cma_w(0) <= i_mul106_1_resize_im0_cma_u(0);
    i_mul106_1_resize_im0_cma_x(0) <= i_mul106_1_resize_im0_cma_w(0);
    i_mul106_1_resize_im0_cma_y(0) <= i_mul106_1_resize_im0_cma_x(0);
    i_mul106_1_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_1_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul106_1_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_1_resize_im0_cma_ena0 = '1') THEN
                i_mul106_1_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul106_1_resize_bs1_merged_bit_select_b),18);
                i_mul106_1_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_1_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_1_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_1_resize_im0_cma_ena1 = '1') THEN
                i_mul106_1_resize_im0_cma_s(0) <= i_mul106_1_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_1_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_1_resize_im0_cma_s(0)(33 downto 0)), xout => i_mul106_1_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul106_1_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul106_1_resize_im0_cma_qq(33 downto 0));

    -- redist31_i_mul106_1_resize_im0_cma_q_1(DELAY,1249)
    redist31_i_mul106_1_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_1_resize_im0_cma_q, xout => redist31_i_mul106_1_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_1_resize_result_add_0_0(ADD,782)@18
    i_mul106_1_resize_result_add_0_0_a <= STD_LOGIC_VECTOR("000000000" & redist31_i_mul106_1_resize_im0_cma_q_1_q);
    i_mul106_1_resize_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_mul106_1_resize_align_7_q);
    i_mul106_1_resize_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul106_1_resize_result_add_0_0_a) + UNSIGNED(i_mul106_1_resize_result_add_0_0_b));
    i_mul106_1_resize_result_add_0_0_q <= i_mul106_1_resize_result_add_0_0_o(42 downto 0);

    -- i_mul106_1_resize_extender_x(BITJOIN,108)@18
    i_mul106_1_resize_extender_x_q <= i_mul106_1_resize_multconst_x_q & i_mul106_1_resize_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_mul106_1_resize_sel_x(BITSELECT,14)@18
    bgTrunc_i_mul106_1_resize_sel_x_b <= i_mul106_1_resize_extender_x_q(31 downto 0);

    -- redist181_bgTrunc_i_mul106_1_resize_sel_x_b_1(DELAY,1399)
    redist181_bgTrunc_i_mul106_1_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul106_1_resize_sel_x_b, xout => redist181_bgTrunc_i_mul106_1_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add88_1_resize(ADD,393)@19
    i_add88_1_resize_a <= STD_LOGIC_VECTOR("0" & redist181_bgTrunc_i_mul106_1_resize_sel_x_b_1_q);
    i_add88_1_resize_b <= STD_LOGIC_VECTOR("0" & i_mul64_1_resize_vt_join_q);
    i_add88_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add88_1_resize_a) + UNSIGNED(i_add88_1_resize_b));
    i_add88_1_resize_q <= i_add88_1_resize_o(32 downto 0);

    -- bgTrunc_i_add88_1_resize_sel_x(BITSELECT,6)@19
    bgTrunc_i_add88_1_resize_sel_x_b <= i_add88_1_resize_q(31 downto 0);

    -- redist189_bgTrunc_i_add88_1_resize_sel_x_b_1(DELAY,1407)
    redist189_bgTrunc_i_add88_1_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add88_1_resize_sel_x_b, xout => redist189_bgTrunc_i_add88_1_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add107_1_resize(ADD,389)@20
    i_add107_1_resize_a <= STD_LOGIC_VECTOR("0" & redist189_bgTrunc_i_add88_1_resize_sel_x_b_1_q);
    i_add107_1_resize_b <= STD_LOGIC_VECTOR("0" & i_tmp120_1_resize_vt_join_q);
    i_add107_1_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add107_1_resize_a) + UNSIGNED(i_add107_1_resize_b));
    i_add107_1_resize_q <= i_add107_1_resize_o(32 downto 0);

    -- bgTrunc_i_add107_1_resize_sel_x(BITSELECT,2)@20
    bgTrunc_i_add107_1_resize_sel_x_b <= i_add107_1_resize_q(31 downto 0);

    -- leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x(BITSELECT,704)@18
    leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_in <= bgTrunc_i_tmp_resize_sel_x_b(23 downto 0);
    leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_b <= leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx1_uid706_i_tmp120_resize_resize183_shift_x(BITJOIN,705)@18
    leftShiftStage0Idx1_uid706_i_tmp120_resize_resize183_shift_x_q <= leftShiftStage0Idx1Rng8_uid705_i_tmp120_resize_resize183_shift_x_b & c_i8_0gr_q;

    -- i_conv_resize_sel_x(BITSELECT,107)@9
    i_conv_resize_sel_x_b <= in_c0_eni7_3(7 downto 0);

    -- redist171_i_conv_resize_sel_x_b_2(DELAY,1389)
    redist171_i_conv_resize_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv_resize_sel_x_b, xout => redist171_i_conv_resize_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_729_0_0_1_push14_resize(BLACKBOX,385)@12
    -- out out_feedback_out_14@20000000
    -- out out_feedback_valid_out_14@20000000
    thei_acl_push_i8_buf_729_0_0_1_push14_resize : i_acl_push_i8_buf_729_0_0_1_push14_resize164
    PORT MAP (
        in_c0_ene2 => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q,
        in_data_in => i_acl_749_resize_q,
        in_feedback_stall_in_14 => i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_feedback_stall_out_14,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_14 => i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_out_14,
        out_feedback_valid_out_14 => i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_valid_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_729_0_0_1_pop14_resize(BLACKBOX,372)@11
    -- out out_feedback_stall_out_14@20000000
    thei_acl_pop_i8_buf_729_0_0_1_pop14_resize : i_acl_pop_i8_buf_729_0_0_1_pop14_resize132
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist163_sync_in_aunroll_x_in_c0_eni7_1_2_q,
        in_feedback_in_14 => i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_out_14,
        in_feedback_valid_in_14 => i_acl_push_i8_buf_729_0_0_1_push14_resize_out_feedback_valid_out_14,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out,
        out_feedback_stall_out_14 => i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_feedback_stall_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_749_resize(MUX,361)@11 + 1
    i_acl_749_resize_s <= redist167_sync_in_aunroll_x_in_c0_eni7_4_2_q;
    i_acl_749_resize_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_749_resize_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_acl_749_resize_s) IS
                WHEN "0" => i_acl_749_resize_q <= i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out;
                WHEN "1" => i_acl_749_resize_q <= redist171_i_conv_resize_sel_x_b_2_q;
                WHEN OTHERS => i_acl_749_resize_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_conv_i26_resize_sel_x(BITSELECT,103)@12
    i_conv_i26_resize_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_749_resize_q(7 downto 0)), 32));

    -- i_conv_i26_resize_vt_select_7(BITSELECT,517)@12
    i_conv_i26_resize_vt_select_7_b <= i_conv_i26_resize_sel_x_b(7 downto 0);

    -- i_conv_i26_resize_vt_join(BITJOIN,516)@12
    i_conv_i26_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv_i26_resize_vt_select_7_b;

    -- redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1(DELAY,1370)
    redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out, xout => redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize(BLACKBOX,381)@12
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize : i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134
    PORT MAP (
        in_data_in => redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1_q,
        in_feedback_stall_in_7 => i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_feedback_stall_out_7,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_7 => i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize(BLACKBOX,368)@11
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize : i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => i_not_select781_resize_c,
        in_feedback_in_7 => i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist168_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1(DELAY,1374)
    redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out, xout => redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv_i54_resize_sel_x(BITSELECT,105)@12
    i_conv_i54_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv_i54_resize_vt_select_7(BITSELECT,525)@12
    i_conv_i54_resize_vt_select_7_b <= i_conv_i54_resize_sel_x_b(7 downto 0);

    -- i_conv_i54_resize_vt_join(BITJOIN,524)@12
    i_conv_i54_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv_i54_resize_vt_select_7_b;

    -- i_sub71_resize(SUB,578)@12
    i_sub71_resize_a <= STD_LOGIC_VECTOR("0" & i_conv_i54_resize_vt_join_q);
    i_sub71_resize_b <= STD_LOGIC_VECTOR("0" & i_conv_i26_resize_vt_join_q);
    i_sub71_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub71_resize_a) - UNSIGNED(i_sub71_resize_b));
    i_sub71_resize_q <= i_sub71_resize_o(32 downto 0);

    -- bgTrunc_i_sub71_resize_sel_x(BITSELECT,34)@12
    bgTrunc_i_sub71_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub71_resize_q(31 downto 0));

    -- i_and72_resize(LOGICAL,433)@12
    i_and72_resize_q <= bgTrunc_i_sub71_resize_sel_x_b and c_i32_67108863_q;

    -- i_and72_resize_vt_select_25(BITSELECT,436)@12
    i_and72_resize_vt_select_25_b <= i_and72_resize_q(25 downto 0);

    -- redist140_i_and72_resize_vt_select_25_b_1(DELAY,1358)
    redist140_i_and72_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and72_resize_vt_select_25_b, xout => redist140_i_and72_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_bs2_merged_bit_select(BITSELECT,1205)@13
    i_mul75_resize_bs2_merged_bit_select_b <= redist140_i_and72_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul75_resize_bs2_merged_bit_select_c <= redist140_i_and72_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul75_resize_bjB9(BITJOIN,873)@13
    i_mul75_resize_bjB9_q <= GND_q & i_mul75_resize_bs2_merged_bit_select_b;

    -- i_mul75_resize_ma3_cma(CHAINMULTADD,1192)@13 + 2
    i_mul75_resize_ma3_cma_reset <= not (resetn);
    i_mul75_resize_ma3_cma_ena0 <= '1';
    i_mul75_resize_ma3_cma_ena1 <= i_mul75_resize_ma3_cma_ena0;
    i_mul75_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul75_resize_ma3_cma_a0(0),9));
    i_mul75_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul75_resize_ma3_cma_a0(1),9));
    i_mul75_resize_ma3_cma_p(0) <= i_mul75_resize_ma3_cma_l(0) * i_mul75_resize_ma3_cma_c0(0);
    i_mul75_resize_ma3_cma_p(1) <= i_mul75_resize_ma3_cma_l(1) * i_mul75_resize_ma3_cma_c0(1);
    i_mul75_resize_ma3_cma_u(0) <= RESIZE(i_mul75_resize_ma3_cma_p(0),29);
    i_mul75_resize_ma3_cma_u(1) <= RESIZE(i_mul75_resize_ma3_cma_p(1),29);
    i_mul75_resize_ma3_cma_w(0) <= i_mul75_resize_ma3_cma_u(0) + i_mul75_resize_ma3_cma_u(1);
    i_mul75_resize_ma3_cma_x(0) <= i_mul75_resize_ma3_cma_w(0);
    i_mul75_resize_ma3_cma_y(0) <= i_mul75_resize_ma3_cma_x(0);
    i_mul75_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul75_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_resize_ma3_cma_ena0 = '1') THEN
                i_mul75_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs7_b),8);
                i_mul75_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul75_resize_bs2_merged_bit_select_c),8);
                i_mul75_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul75_resize_bjB9_q),19);
                i_mul75_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul75_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_resize_ma3_cma_ena1 = '1') THEN
                i_mul75_resize_ma3_cma_s(0) <= i_mul75_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul75_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul75_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul75_resize_ma3_cma_qq(27 downto 0));

    -- redist12_i_mul75_resize_ma3_cma_q_1(DELAY,1230)
    redist12_i_mul75_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_ma3_cma_q, xout => redist12_i_mul75_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_align_14(BITSHIFT,878)@16
    i_mul75_resize_align_14_qint <= redist12_i_mul75_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul75_resize_align_14_q <= i_mul75_resize_align_14_qint(45 downto 0);

    -- i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1089)@16
    i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul75_resize_align_14_q(43 downto 0));

    -- i_mul75_resize_im10(MULT,874)@13 + 2
    i_mul75_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul75_resize_im10_a0) * UNSIGNED(i_mul75_resize_im10_b0));
    i_mul75_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_im10_a0 <= (others => '0');
            i_mul75_resize_im10_b0 <= (others => '0');
            i_mul75_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_resize_im10_a0 <= i_mul75_1_resize_bs11_b;
            i_mul75_resize_im10_b0 <= i_mul75_resize_bs2_merged_bit_select_c;
            i_mul75_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul75_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul75_resize_im10_q <= i_mul75_resize_im10_s1;

    -- redist116_i_mul75_resize_im10_q_1(DELAY,1334)
    redist116_i_mul75_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_im10_q, xout => redist116_i_mul75_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1213)@16
    i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist116_i_mul75_resize_im10_q_1_q(7 downto 0));
    i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist116_i_mul75_resize_im10_q_1_q(15 downto 8));

    -- i_mul75_resize_im0_cma(CHAINMULTADD,1184)@13 + 2
    i_mul75_resize_im0_cma_reset <= not (resetn);
    i_mul75_resize_im0_cma_ena0 <= '1';
    i_mul75_resize_im0_cma_ena1 <= i_mul75_resize_im0_cma_ena0;
    i_mul75_resize_im0_cma_p(0) <= i_mul75_resize_im0_cma_a0(0) * i_mul75_resize_im0_cma_c0(0);
    i_mul75_resize_im0_cma_u(0) <= RESIZE(i_mul75_resize_im0_cma_p(0),36);
    i_mul75_resize_im0_cma_w(0) <= i_mul75_resize_im0_cma_u(0);
    i_mul75_resize_im0_cma_x(0) <= i_mul75_resize_im0_cma_w(0);
    i_mul75_resize_im0_cma_y(0) <= i_mul75_resize_im0_cma_x(0);
    i_mul75_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul75_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_resize_im0_cma_ena0 = '1') THEN
                i_mul75_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul75_1_resize_bs1_b),18);
                i_mul75_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul75_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul75_resize_im0_cma_ena1 = '1') THEN
                i_mul75_resize_im0_cma_s(0) <= i_mul75_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul75_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul75_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul75_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul75_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul75_resize_im0_cma_qq(35 downto 0));

    -- redist20_i_mul75_resize_im0_cma_q_1(DELAY,1238)
    redist20_i_mul75_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_im0_cma_q, xout => redist20_i_mul75_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1085)@16
    i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist20_i_mul75_resize_im0_cma_q_1_q;

    -- i_mul75_resize_result_add_0_0_p1_of_2(ADD,986)@16 + 1
    i_mul75_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul75_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul75_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul75_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul75_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_resize_result_add_0_0_p1_of_2_c(0) <= i_mul75_resize_result_add_0_0_p1_of_2_o(44);
    i_mul75_resize_result_add_0_0_p1_of_2_q <= i_mul75_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1092)@16
    i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul75_resize_align_14_q(45 downto 45));

    -- redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1286)
    redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1091)@16
    i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul75_resize_align_14_q(45 downto 44));

    -- redist76_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1294)
    redist76_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist76_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1100)@17
    i_mul75_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist68_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist76_i_mul75_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist4_i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1222)
    redist4_i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist4_i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1088)@17
    i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist4_i_mul75_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul75_resize_result_add_0_0_p2_of_2(ADD,987)@17 + 1
    i_mul75_resize_result_add_0_0_p2_of_2_cin <= i_mul75_resize_result_add_0_0_p1_of_2_c;
    i_mul75_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul75_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul75_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul75_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul75_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul75_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul75_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul75_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul75_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul75_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul75_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul75_resize_result_add_0_0_p2_of_2_q <= i_mul75_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist108_i_mul75_resize_result_add_0_0_p1_of_2_q_1(DELAY,1326)
    redist108_i_mul75_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul75_resize_result_add_0_0_p1_of_2_q, xout => redist108_i_mul75_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul75_resize_result_add_0_0_BitJoin_for_q(BITJOIN,988)@18
    i_mul75_resize_result_add_0_0_BitJoin_for_q_q <= i_mul75_resize_result_add_0_0_p2_of_2_q & redist108_i_mul75_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul75_resize_extender_x(BITJOIN,138)@18
    i_mul75_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul75_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul75_resize_sel_x(BITSELECT,21)@18
    bgTrunc_i_mul75_resize_sel_x_b <= i_mul75_resize_extender_x_q(31 downto 0);

    -- i_conv_i40_resize_sel_x(BITSELECT,104)@12
    i_conv_i40_resize_sel_x_b <= std_logic_vector(resize(unsigned(redist152_i_acl_pop_i8_buf_729_0_0_1_pop14_resize_out_data_out_1_q(7 downto 0)), 32));

    -- i_conv_i40_resize_vt_select_7(BITSELECT,521)@12
    i_conv_i40_resize_vt_select_7_b <= i_conv_i40_resize_sel_x_b(7 downto 0);

    -- i_conv_i40_resize_vt_join(BITJOIN,520)@12
    i_conv_i40_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & i_conv_i40_resize_vt_select_7_b;

    -- i_sub83_resize(SUB,582)@12
    i_sub83_resize_a <= STD_LOGIC_VECTOR("0" & i_conv_i40_resize_vt_join_q);
    i_sub83_resize_b <= STD_LOGIC_VECTOR("0" & i_conv_i26_resize_vt_join_q);
    i_sub83_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub83_resize_a) - UNSIGNED(i_sub83_resize_b));
    i_sub83_resize_q <= i_sub83_resize_o(32 downto 0);

    -- bgTrunc_i_sub83_resize_sel_x(BITSELECT,38)@12
    bgTrunc_i_sub83_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub83_resize_q(31 downto 0));

    -- i_and84_resize(LOGICAL,453)@12
    i_and84_resize_q <= bgTrunc_i_sub83_resize_sel_x_b and c_i32_67108863_q;

    -- i_and84_resize_vt_select_25(BITSELECT,456)@12
    i_and84_resize_vt_select_25_b <= i_and84_resize_q(25 downto 0);

    -- redist135_i_and84_resize_vt_select_25_b_1(DELAY,1353)
    redist135_i_and84_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and84_resize_vt_select_25_b, xout => redist135_i_and84_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_bs2_merged_bit_select(BITSELECT,1209)@13
    i_mul87_resize_bs2_merged_bit_select_b <= redist135_i_and84_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul87_resize_bs2_merged_bit_select_c <= redist135_i_and84_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul87_resize_bjB9(BITJOIN,941)@13
    i_mul87_resize_bjB9_q <= GND_q & i_mul87_resize_bs2_merged_bit_select_b;

    -- i_mul87_resize_ma3_cma(CHAINMULTADD,1196)@13 + 2
    i_mul87_resize_ma3_cma_reset <= not (resetn);
    i_mul87_resize_ma3_cma_ena0 <= '1';
    i_mul87_resize_ma3_cma_ena1 <= i_mul87_resize_ma3_cma_ena0;
    i_mul87_resize_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul87_resize_ma3_cma_a0(0),9));
    i_mul87_resize_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul87_resize_ma3_cma_a0(1),9));
    i_mul87_resize_ma3_cma_p(0) <= i_mul87_resize_ma3_cma_l(0) * i_mul87_resize_ma3_cma_c0(0);
    i_mul87_resize_ma3_cma_p(1) <= i_mul87_resize_ma3_cma_l(1) * i_mul87_resize_ma3_cma_c0(1);
    i_mul87_resize_ma3_cma_u(0) <= RESIZE(i_mul87_resize_ma3_cma_p(0),29);
    i_mul87_resize_ma3_cma_u(1) <= RESIZE(i_mul87_resize_ma3_cma_p(1),29);
    i_mul87_resize_ma3_cma_w(0) <= i_mul87_resize_ma3_cma_u(0) + i_mul87_resize_ma3_cma_u(1);
    i_mul87_resize_ma3_cma_x(0) <= i_mul87_resize_ma3_cma_w(0);
    i_mul87_resize_ma3_cma_y(0) <= i_mul87_resize_ma3_cma_x(0);
    i_mul87_resize_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_ma3_cma_a0 <= (others => (others => '0'));
            i_mul87_resize_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_resize_ma3_cma_ena0 = '1') THEN
                i_mul87_resize_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs7_b),8);
                i_mul87_resize_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul87_resize_bs2_merged_bit_select_c),8);
                i_mul87_resize_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul87_resize_bjB9_q),19);
                i_mul87_resize_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul87_1_resize_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_resize_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_resize_ma3_cma_ena1 = '1') THEN
                i_mul87_resize_ma3_cma_s(0) <= i_mul87_resize_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_resize_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_resize_ma3_cma_s(0)(27 downto 0)), xout => i_mul87_resize_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul87_resize_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul87_resize_ma3_cma_qq(27 downto 0));

    -- redist8_i_mul87_resize_ma3_cma_q_1(DELAY,1226)
    redist8_i_mul87_resize_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_ma3_cma_q, xout => redist8_i_mul87_resize_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_align_14(BITSHIFT,946)@16
    i_mul87_resize_align_14_qint <= redist8_i_mul87_resize_ma3_cma_q_1_q & "000000000000000000";
    i_mul87_resize_align_14_q <= i_mul87_resize_align_14_qint(45 downto 0);

    -- i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel0_0(BITSELECT,1161)@16
    i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b <= STD_LOGIC_VECTOR(i_mul87_resize_align_14_q(43 downto 0));

    -- i_mul87_resize_im10(MULT,942)@13 + 2
    i_mul87_resize_im10_pr <= UNSIGNED(UNSIGNED(i_mul87_resize_im10_a0) * UNSIGNED(i_mul87_resize_im10_b0));
    i_mul87_resize_im10_component: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_im10_a0 <= (others => '0');
            i_mul87_resize_im10_b0 <= (others => '0');
            i_mul87_resize_im10_s1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_resize_im10_a0 <= i_mul87_1_resize_bs11_b;
            i_mul87_resize_im10_b0 <= i_mul87_resize_bs2_merged_bit_select_c;
            i_mul87_resize_im10_s1 <= STD_LOGIC_VECTOR(i_mul87_resize_im10_pr);
        END IF;
    END PROCESS;
    i_mul87_resize_im10_q <= i_mul87_resize_im10_s1;

    -- redist112_i_mul87_resize_im10_q_1(DELAY,1330)
    redist112_i_mul87_resize_im10_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_im10_q, xout => redist112_i_mul87_resize_im10_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,1217)@16
    i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(redist112_i_mul87_resize_im10_q_1_q(7 downto 0));
    i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(redist112_i_mul87_resize_im10_q_1_q(15 downto 8));

    -- i_mul87_resize_im0_cma(CHAINMULTADD,1188)@13 + 2
    i_mul87_resize_im0_cma_reset <= not (resetn);
    i_mul87_resize_im0_cma_ena0 <= '1';
    i_mul87_resize_im0_cma_ena1 <= i_mul87_resize_im0_cma_ena0;
    i_mul87_resize_im0_cma_p(0) <= i_mul87_resize_im0_cma_a0(0) * i_mul87_resize_im0_cma_c0(0);
    i_mul87_resize_im0_cma_u(0) <= RESIZE(i_mul87_resize_im0_cma_p(0),36);
    i_mul87_resize_im0_cma_w(0) <= i_mul87_resize_im0_cma_u(0);
    i_mul87_resize_im0_cma_x(0) <= i_mul87_resize_im0_cma_w(0);
    i_mul87_resize_im0_cma_y(0) <= i_mul87_resize_im0_cma_x(0);
    i_mul87_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul87_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_resize_im0_cma_ena0 = '1') THEN
                i_mul87_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul87_1_resize_bs1_b),18);
                i_mul87_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul87_resize_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul87_resize_im0_cma_ena1 = '1') THEN
                i_mul87_resize_im0_cma_s(0) <= i_mul87_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul87_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul87_resize_im0_cma_s(0)(35 downto 0)), xout => i_mul87_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul87_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul87_resize_im0_cma_qq(35 downto 0));

    -- redist16_i_mul87_resize_im0_cma_q_1(DELAY,1234)
    redist16_i_mul87_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_im0_cma_q, xout => redist16_i_mul87_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1157)@16
    i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b & redist16_i_mul87_resize_im0_cma_q_1_q;

    -- i_mul87_resize_result_add_0_0_p1_of_2(ADD,1026)@16 + 1
    i_mul87_resize_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_mul87_resize_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel0_0_b);
    i_mul87_resize_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_resize_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul87_resize_result_add_0_0_p1_of_2_a) + UNSIGNED(i_mul87_resize_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_resize_result_add_0_0_p1_of_2_c(0) <= i_mul87_resize_result_add_0_0_p1_of_2_o(44);
    i_mul87_resize_result_add_0_0_p1_of_2_q <= i_mul87_resize_result_add_0_0_p1_of_2_o(43 downto 0);

    -- i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_1(BITSELECT,1164)@16
    i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b <= STD_LOGIC_VECTOR(i_mul87_resize_align_14_q(45 downto 45));

    -- redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1(DELAY,1250)
    redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_1_b, xout => redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0(BITSELECT,1163)@16
    i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b <= STD_LOGIC_VECTOR(i_mul87_resize_align_14_q(45 downto 44));

    -- redist40_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1(DELAY,1258)
    redist40_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b, xout => redist40_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1172)@17
    i_mul87_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist32_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_8_b_1_q & redist40_i_mul87_resize_result_add_0_0_BitSelect_for_b_tessel1_0_b_1_q;

    -- redist0_i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,1218)
    redist0_i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c, xout => redist0_i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1160)@17
    i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q <= rightShiftStage1Idx1Pad2_uid615_i_coalesce_counter_lobit_resize_resize128_shift_x_q & redist0_i_mul87_resize_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;

    -- i_mul87_resize_result_add_0_0_p2_of_2(ADD,1027)@17 + 1
    i_mul87_resize_result_add_0_0_p2_of_2_cin <= i_mul87_resize_result_add_0_0_p1_of_2_c;
    i_mul87_resize_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & i_mul87_resize_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q) & '1');
    i_mul87_resize_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => i_mul87_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q(9)) & i_mul87_resize_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_mul87_resize_result_add_0_0_p2_of_2_cin(0));
    i_mul87_resize_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul87_resize_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_mul87_resize_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(SIGNED(i_mul87_resize_result_add_0_0_p2_of_2_a) + SIGNED(i_mul87_resize_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_mul87_resize_result_add_0_0_p2_of_2_q <= i_mul87_resize_result_add_0_0_p2_of_2_o(10 downto 1);

    -- redist104_i_mul87_resize_result_add_0_0_p1_of_2_q_1(DELAY,1322)
    redist104_i_mul87_resize_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 44, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul87_resize_result_add_0_0_p1_of_2_q, xout => redist104_i_mul87_resize_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_mul87_resize_result_add_0_0_BitJoin_for_q(BITJOIN,1028)@18
    i_mul87_resize_result_add_0_0_BitJoin_for_q_q <= i_mul87_resize_result_add_0_0_p2_of_2_q & redist104_i_mul87_resize_result_add_0_0_p1_of_2_q_1_q;

    -- i_mul87_resize_extender_x(BITJOIN,146)@18
    i_mul87_resize_extender_x_q <= i_mul75_1_resize_multconst_x_q & i_mul87_resize_result_add_0_0_BitJoin_for_q_q(51 downto 0);

    -- bgTrunc_i_mul87_resize_sel_x(BITSELECT,25)@18
    bgTrunc_i_mul87_resize_sel_x_b <= i_mul87_resize_extender_x_q(31 downto 0);

    -- i_tmp_resize(ADD,602)@18
    i_tmp_resize_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul87_resize_sel_x_b);
    i_tmp_resize_b <= STD_LOGIC_VECTOR("0" & bgTrunc_i_mul75_resize_sel_x_b);
    i_tmp_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_tmp_resize_a) + UNSIGNED(i_tmp_resize_b));
    i_tmp_resize_q <= i_tmp_resize_o(32 downto 0);

    -- bgTrunc_i_tmp_resize_sel_x(BITSELECT,46)@18
    bgTrunc_i_tmp_resize_sel_x_b <= i_tmp_resize_q(31 downto 0);

    -- leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x(MUX,707)@18
    leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_s <= VCC_q;
    leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_combproc: PROCESS (leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_s, bgTrunc_i_tmp_resize_sel_x_b, leftShiftStage0Idx1_uid706_i_tmp120_resize_resize183_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_q <= bgTrunc_i_tmp_resize_sel_x_b;
            WHEN "1" => leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_q <= leftShiftStage0Idx1_uid706_i_tmp120_resize_resize183_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_tmp120_resize_vt_select_31(BITSELECT,598)@18
    i_tmp120_resize_vt_select_31_b <= leftShiftStage0_uid708_i_tmp120_resize_resize183_shift_x_q(31 downto 8);

    -- redist120_i_tmp120_resize_vt_select_31_b_2(DELAY,1338)
    redist120_i_tmp120_resize_vt_select_31_b_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp120_resize_vt_select_31_b, xout => redist120_i_tmp120_resize_vt_select_31_b_2_q, clk => clock, aclr => resetn );

    -- i_tmp120_resize_vt_join(BITJOIN,597)@20
    i_tmp120_resize_vt_join_q <= redist120_i_tmp120_resize_vt_select_31_b_2_q & c_i8_0gr_q;

    -- redist124_i_mul64_resize_vt_select_23_b_7_notEnable(LOGICAL,1416)
    redist124_i_mul64_resize_vt_select_23_b_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist124_i_mul64_resize_vt_select_23_b_7_nor(LOGICAL,1417)
    redist124_i_mul64_resize_vt_select_23_b_7_nor_q <= not (redist124_i_mul64_resize_vt_select_23_b_7_notEnable_q or redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q);

    -- redist124_i_mul64_resize_vt_select_23_b_7_mem_last(CONSTANT,1413)
    redist124_i_mul64_resize_vt_select_23_b_7_mem_last_q <= "010";

    -- redist124_i_mul64_resize_vt_select_23_b_7_cmp(LOGICAL,1414)
    redist124_i_mul64_resize_vt_select_23_b_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_q);
    redist124_i_mul64_resize_vt_select_23_b_7_cmp_q <= "1" WHEN redist124_i_mul64_resize_vt_select_23_b_7_mem_last_q = redist124_i_mul64_resize_vt_select_23_b_7_cmp_b ELSE "0";

    -- redist124_i_mul64_resize_vt_select_23_b_7_cmpReg(REG,1415)
    redist124_i_mul64_resize_vt_select_23_b_7_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_cmpReg_q <= STD_LOGIC_VECTOR(redist124_i_mul64_resize_vt_select_23_b_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena(REG,1418)
    redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist124_i_mul64_resize_vt_select_23_b_7_nor_q = "1") THEN
                redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist124_i_mul64_resize_vt_select_23_b_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist124_i_mul64_resize_vt_select_23_b_7_enaAnd(LOGICAL,1419)
    redist124_i_mul64_resize_vt_select_23_b_7_enaAnd_q <= redist124_i_mul64_resize_vt_select_23_b_7_sticky_ena_q and VCC_q;

    -- redist124_i_mul64_resize_vt_select_23_b_7_rdcnt(COUNTER,1411)
    -- low=0, high=3, step=1, init=0
    redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i <= redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_i, 2)));

    -- leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x(BITSELECT,650)@12
    leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_in <= i_conv_i26_resize_vt_join_q(15 downto 0);
    leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_b <= leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx1_uid652_i_mul64_resize_resize182_shift_x(BITJOIN,651)@12
    leftShiftStage0Idx1_uid652_i_mul64_resize_resize182_shift_x_q <= leftShiftStage0Idx1Rng16_uid651_i_mul64_resize_resize182_shift_x_b & i_and105_resize_vt_const_31_q;

    -- leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x(MUX,653)@12
    leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_s <= VCC_q;
    leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_combproc: PROCESS (leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_s, i_conv_i26_resize_vt_join_q, leftShiftStage0Idx1_uid652_i_mul64_resize_resize182_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_q <= i_conv_i26_resize_vt_join_q;
            WHEN "1" => leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_q <= leftShiftStage0Idx1_uid652_i_mul64_resize_resize182_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul64_resize_vt_select_23(BITSELECT,550)@12
    i_mul64_resize_vt_select_23_b <= leftShiftStage0_uid654_i_mul64_resize_resize182_shift_x_q(23 downto 16);

    -- redist124_i_mul64_resize_vt_select_23_b_7_inputreg(DELAY,1408)
    redist124_i_mul64_resize_vt_select_23_b_7_inputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul64_resize_vt_select_23_b, xout => redist124_i_mul64_resize_vt_select_23_b_7_inputreg_q, clk => clock, aclr => resetn );

    -- redist124_i_mul64_resize_vt_select_23_b_7_wraddr(REG,1412)
    redist124_i_mul64_resize_vt_select_23_b_7_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist124_i_mul64_resize_vt_select_23_b_7_wraddr_q <= STD_LOGIC_VECTOR(redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist124_i_mul64_resize_vt_select_23_b_7_mem(DUALMEM,1410)
    redist124_i_mul64_resize_vt_select_23_b_7_mem_ia <= STD_LOGIC_VECTOR(redist124_i_mul64_resize_vt_select_23_b_7_inputreg_q);
    redist124_i_mul64_resize_vt_select_23_b_7_mem_aa <= redist124_i_mul64_resize_vt_select_23_b_7_wraddr_q;
    redist124_i_mul64_resize_vt_select_23_b_7_mem_ab <= redist124_i_mul64_resize_vt_select_23_b_7_rdcnt_q;
    redist124_i_mul64_resize_vt_select_23_b_7_mem_reset0 <= not (resetn);
    redist124_i_mul64_resize_vt_select_23_b_7_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist124_i_mul64_resize_vt_select_23_b_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist124_i_mul64_resize_vt_select_23_b_7_mem_reset0,
        clock1 => clock,
        address_a => redist124_i_mul64_resize_vt_select_23_b_7_mem_aa,
        data_a => redist124_i_mul64_resize_vt_select_23_b_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist124_i_mul64_resize_vt_select_23_b_7_mem_ab,
        q_b => redist124_i_mul64_resize_vt_select_23_b_7_mem_iq
    );
    redist124_i_mul64_resize_vt_select_23_b_7_mem_q <= redist124_i_mul64_resize_vt_select_23_b_7_mem_iq(7 downto 0);

    -- redist124_i_mul64_resize_vt_select_23_b_7_outputreg(DELAY,1409)
    redist124_i_mul64_resize_vt_select_23_b_7_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist124_i_mul64_resize_vt_select_23_b_7_mem_q, xout => redist124_i_mul64_resize_vt_select_23_b_7_outputreg_q, clk => clock, aclr => resetn );

    -- i_mul64_resize_vt_join(BITJOIN,549)@19
    i_mul64_resize_vt_join_q <= c_i8_0gr_q & redist124_i_mul64_resize_vt_select_23_b_7_outputreg_q & i_and105_resize_vt_const_31_q;

    -- i_acl_push_i8_buf_0_0_0_1_push18_resize(BLACKBOX,377)@12
    -- out out_feedback_out_18@20000000
    -- out out_feedback_valid_out_18@20000000
    thei_acl_push_i8_buf_0_0_0_1_push18_resize : i_acl_push_i8_buf_0_0_0_1_push18_resize168
    PORT MAP (
        in_c0_ene2 => redist166_sync_in_aunroll_x_in_c0_eni7_2_3_q,
        in_data_in => redist156_i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize_out_data_out_1_q,
        in_feedback_stall_in_18 => i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_feedback_stall_out_18,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_18 => i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_out_18,
        out_feedback_valid_out_18 => i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_valid_out_18,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i8_buf_0_0_0_1_pop18_resize(BLACKBOX,364)@12
    -- out out_feedback_stall_out_18@20000000
    thei_acl_pop_i8_buf_0_0_0_1_pop18_resize : i_acl_pop_i8_buf_0_0_0_1_pop18_resize166
    PORT MAP (
        in_data_in => c_i8_0gr_q,
        in_dir => redist164_sync_in_aunroll_x_in_c0_eni7_1_3_q,
        in_feedback_in_18 => i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_out_18,
        in_feedback_valid_in_18 => i_acl_push_i8_buf_0_0_0_1_push18_resize_out_feedback_valid_out_18,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist169_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_data_out,
        out_feedback_stall_out_18 => i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_feedback_stall_out_18,
        clock => clock,
        resetn => resetn
    );

    -- i_conv_i_resize_sel_x(BITSELECT,106)@12
    i_conv_i_resize_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_pop_i8_buf_0_0_0_1_pop18_resize_out_data_out(7 downto 0)), 32));

    -- i_conv_i_resize_vt_select_7(BITSELECT,529)@12
    i_conv_i_resize_vt_select_7_b <= i_conv_i_resize_sel_x_b(7 downto 0);

    -- redist128_i_conv_i_resize_vt_select_7_b_2(DELAY,1346)
    redist128_i_conv_i_resize_vt_select_7_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv_i_resize_vt_select_7_b, xout => redist128_i_conv_i_resize_vt_select_7_b_2_q, clk => clock, aclr => resetn );

    -- i_conv_i_resize_vt_join(BITJOIN,528)@14
    i_conv_i_resize_vt_join_q <= i_conv10_i28_resize_vt_const_31_q & redist128_i_conv_i_resize_vt_select_7_b_2_q;

    -- redist129_i_conv_i40_resize_vt_join_q_1(DELAY,1347)
    redist129_i_conv_i40_resize_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv_i40_resize_vt_join_q, xout => redist129_i_conv_i40_resize_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- i_add95_resize(SUB,400)@12
    i_add95_resize_a <= STD_LOGIC_VECTOR("0" & i_conv_i26_resize_vt_join_q);
    i_add95_resize_b <= STD_LOGIC_VECTOR("0" & i_conv_i54_resize_vt_join_q);
    i_add95_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add95_resize_a) - UNSIGNED(i_add95_resize_b));
    i_add95_resize_q <= i_add95_resize_o(32 downto 0);

    -- bgTrunc_i_add95_resize_sel_x(BITSELECT,13)@12
    bgTrunc_i_add95_resize_sel_x_b <= STD_LOGIC_VECTOR(i_add95_resize_q(31 downto 0));

    -- redist182_bgTrunc_i_add95_resize_sel_x_b_1(DELAY,1400)
    redist182_bgTrunc_i_add95_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add95_resize_sel_x_b, xout => redist182_bgTrunc_i_add95_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub99_resize(SUB,586)@13
    i_sub99_resize_a <= STD_LOGIC_VECTOR("0" & redist182_bgTrunc_i_add95_resize_sel_x_b_1_q);
    i_sub99_resize_b <= STD_LOGIC_VECTOR("0" & redist129_i_conv_i40_resize_vt_join_q_1_q);
    i_sub99_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub99_resize_a) - UNSIGNED(i_sub99_resize_b));
    i_sub99_resize_q <= i_sub99_resize_o(32 downto 0);

    -- bgTrunc_i_sub99_resize_sel_x(BITSELECT,42)@13
    bgTrunc_i_sub99_resize_sel_x_b <= STD_LOGIC_VECTOR(i_sub99_resize_q(31 downto 0));

    -- redist174_bgTrunc_i_sub99_resize_sel_x_b_1(DELAY,1392)
    redist174_bgTrunc_i_sub99_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub99_resize_sel_x_b, xout => redist174_bgTrunc_i_sub99_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub103_resize(ADD,574)@14
    i_sub103_resize_a <= STD_LOGIC_VECTOR("0" & redist174_bgTrunc_i_sub99_resize_sel_x_b_1_q);
    i_sub103_resize_b <= STD_LOGIC_VECTOR("0" & i_conv_i_resize_vt_join_q);
    i_sub103_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub103_resize_a) + UNSIGNED(i_sub103_resize_b));
    i_sub103_resize_q <= i_sub103_resize_o(32 downto 0);

    -- bgTrunc_i_sub103_resize_sel_x(BITSELECT,30)@14
    bgTrunc_i_sub103_resize_sel_x_b <= i_sub103_resize_q(31 downto 0);

    -- i_and104_resize(LOGICAL,413)@14
    i_and104_resize_q <= bgTrunc_i_sub103_resize_sel_x_b and c_i32_67108863_q;

    -- i_and104_resize_vt_select_25(BITSELECT,416)@14
    i_and104_resize_vt_select_25_b <= i_and104_resize_q(25 downto 0);

    -- redist145_i_and104_resize_vt_select_25_b_1(DELAY,1363)
    redist145_i_and104_resize_vt_select_25_b_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and104_resize_vt_select_25_b, xout => redist145_i_and104_resize_vt_select_25_b_1_q, clk => clock, aclr => resetn );

    -- i_mul106_resize_bs1_merged_bit_select(BITSELECT,1201)@15
    i_mul106_resize_bs1_merged_bit_select_b <= redist145_i_and104_resize_vt_select_25_b_1_q(17 downto 0);
    i_mul106_resize_bs1_merged_bit_select_c <= redist145_i_and104_resize_vt_select_25_b_1_q(25 downto 18);

    -- i_mul106_resize_im3_cma(CHAINMULTADD,1180)@15 + 2
    i_mul106_resize_im3_cma_reset <= not (resetn);
    i_mul106_resize_im3_cma_ena0 <= '1';
    i_mul106_resize_im3_cma_ena1 <= i_mul106_resize_im3_cma_ena0;
    i_mul106_resize_im3_cma_p(0) <= i_mul106_resize_im3_cma_a0(0) * i_mul106_resize_im3_cma_c0(0);
    i_mul106_resize_im3_cma_u(0) <= RESIZE(i_mul106_resize_im3_cma_p(0),26);
    i_mul106_resize_im3_cma_w(0) <= i_mul106_resize_im3_cma_u(0);
    i_mul106_resize_im3_cma_x(0) <= i_mul106_resize_im3_cma_w(0);
    i_mul106_resize_im3_cma_y(0) <= i_mul106_resize_im3_cma_x(0);
    i_mul106_resize_im3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_resize_im3_cma_a0 <= (others => (others => '0'));
            i_mul106_resize_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_resize_im3_cma_ena0 = '1') THEN
                i_mul106_resize_im3_cma_a0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
                i_mul106_resize_im3_cma_c0(0) <= RESIZE(UNSIGNED(i_mul106_resize_bs1_merged_bit_select_c),10);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_resize_im3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_resize_im3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_resize_im3_cma_ena1 = '1') THEN
                i_mul106_resize_im3_cma_s(0) <= i_mul106_resize_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_resize_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_resize_im3_cma_s(0)(25 downto 0)), xout => i_mul106_resize_im3_cma_qq, clk => clock, aclr => resetn );
    i_mul106_resize_im3_cma_q <= STD_LOGIC_VECTOR(i_mul106_resize_im3_cma_qq(23 downto 0));

    -- redist24_i_mul106_resize_im3_cma_q_1(DELAY,1242)
    redist24_i_mul106_resize_im3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_resize_im3_cma_q, xout => redist24_i_mul106_resize_im3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_resize_align_7(BITSHIFT,810)@18
    i_mul106_resize_align_7_qint <= redist24_i_mul106_resize_im3_cma_q_1_q & "000000000000000000";
    i_mul106_resize_align_7_q <= i_mul106_resize_align_7_qint(41 downto 0);

    -- i_mul106_resize_im0_cma(CHAINMULTADD,1179)@15 + 2
    i_mul106_resize_im0_cma_reset <= not (resetn);
    i_mul106_resize_im0_cma_ena0 <= '1';
    i_mul106_resize_im0_cma_ena1 <= i_mul106_resize_im0_cma_ena0;
    i_mul106_resize_im0_cma_p(0) <= i_mul106_resize_im0_cma_a0(0) * i_mul106_resize_im0_cma_c0(0);
    i_mul106_resize_im0_cma_u(0) <= RESIZE(i_mul106_resize_im0_cma_p(0),34);
    i_mul106_resize_im0_cma_w(0) <= i_mul106_resize_im0_cma_u(0);
    i_mul106_resize_im0_cma_x(0) <= i_mul106_resize_im0_cma_w(0);
    i_mul106_resize_im0_cma_y(0) <= i_mul106_resize_im0_cma_x(0);
    i_mul106_resize_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_resize_im0_cma_a0 <= (others => (others => '0'));
            i_mul106_resize_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_resize_im0_cma_ena0 = '1') THEN
                i_mul106_resize_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul106_resize_bs1_merged_bit_select_b),18);
                i_mul106_resize_im0_cma_c0(0) <= RESIZE(UNSIGNED(dupName_0_i_and105_resize_vt_join_narrowed_x_b),16);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_resize_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul106_resize_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul106_resize_im0_cma_ena1 = '1') THEN
                i_mul106_resize_im0_cma_s(0) <= i_mul106_resize_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul106_resize_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul106_resize_im0_cma_s(0)(33 downto 0)), xout => i_mul106_resize_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul106_resize_im0_cma_q <= STD_LOGIC_VECTOR(i_mul106_resize_im0_cma_qq(33 downto 0));

    -- redist25_i_mul106_resize_im0_cma_q_1(DELAY,1243)
    redist25_i_mul106_resize_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul106_resize_im0_cma_q, xout => redist25_i_mul106_resize_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul106_resize_result_add_0_0(ADD,812)@18
    i_mul106_resize_result_add_0_0_a <= STD_LOGIC_VECTOR("000000000" & redist25_i_mul106_resize_im0_cma_q_1_q);
    i_mul106_resize_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_mul106_resize_align_7_q);
    i_mul106_resize_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul106_resize_result_add_0_0_a) + UNSIGNED(i_mul106_resize_result_add_0_0_b));
    i_mul106_resize_result_add_0_0_q <= i_mul106_resize_result_add_0_0_o(42 downto 0);

    -- i_mul106_resize_extender_x(BITJOIN,114)@18
    i_mul106_resize_extender_x_q <= i_mul106_1_resize_multconst_x_q & i_mul106_resize_result_add_0_0_q(41 downto 0);

    -- bgTrunc_i_mul106_resize_sel_x(BITSELECT,17)@18
    bgTrunc_i_mul106_resize_sel_x_b <= i_mul106_resize_extender_x_q(31 downto 0);

    -- redist178_bgTrunc_i_mul106_resize_sel_x_b_1(DELAY,1396)
    redist178_bgTrunc_i_mul106_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul106_resize_sel_x_b, xout => redist178_bgTrunc_i_mul106_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add88_resize(ADD,396)@19
    i_add88_resize_a <= STD_LOGIC_VECTOR("0" & redist178_bgTrunc_i_mul106_resize_sel_x_b_1_q);
    i_add88_resize_b <= STD_LOGIC_VECTOR("0" & i_mul64_resize_vt_join_q);
    i_add88_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add88_resize_a) + UNSIGNED(i_add88_resize_b));
    i_add88_resize_q <= i_add88_resize_o(32 downto 0);

    -- bgTrunc_i_add88_resize_sel_x(BITSELECT,9)@19
    bgTrunc_i_add88_resize_sel_x_b <= i_add88_resize_q(31 downto 0);

    -- redist186_bgTrunc_i_add88_resize_sel_x_b_1(DELAY,1404)
    redist186_bgTrunc_i_add88_resize_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add88_resize_sel_x_b, xout => redist186_bgTrunc_i_add88_resize_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add107_resize(ADD,392)@20
    i_add107_resize_a <= STD_LOGIC_VECTOR("0" & redist186_bgTrunc_i_add88_resize_sel_x_b_1_q);
    i_add107_resize_b <= STD_LOGIC_VECTOR("0" & i_tmp120_resize_vt_join_q);
    i_add107_resize_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add107_resize_a) + UNSIGNED(i_add107_resize_b));
    i_add107_resize_q <= i_add107_resize_o(32 downto 0);

    -- bgTrunc_i_add107_resize_sel_x(BITSELECT,5)@20
    bgTrunc_i_add107_resize_sel_x_b <= i_add107_resize_q(31 downto 0);

    -- i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_vec_3_join_x(BITJOIN,276)@20
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_vec_3_join_x_q <= bgTrunc_i_add107_3_resize_sel_x_b & bgTrunc_i_add107_2_resize_sel_x_b & bgTrunc_i_add107_1_resize_sel_x_b & bgTrunc_i_add107_resize_sel_x_b;

    -- i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select(BITSELECT,1197)@20
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_vec_3_join_x_q(119 downto 0);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_b <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(112 downto 112);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_c <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(113 downto 113);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_d <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(114 downto 114);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_e <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(115 downto 115);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_f <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(116 downto 116);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_g <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(117 downto 117);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_h <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(118 downto 118);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_i <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(119 downto 119);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_j <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(16 downto 16);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_k <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(17 downto 17);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_l <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(18 downto 18);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_m <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(19 downto 19);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_n <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(20 downto 20);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_o <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(21 downto 21);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_p <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(22 downto 22);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_q <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(23 downto 23);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_r <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(48 downto 48);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_s <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(49 downto 49);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_t <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(50 downto 50);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_u <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(51 downto 51);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_v <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(52 downto 52);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_w <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(53 downto 53);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_x <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(54 downto 54);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_y <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(55 downto 55);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_z <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(80 downto 80);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_aa <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(81 downto 81);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_bb <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(82 downto 82);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_cc <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(83 downto 83);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_dd <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(84 downto 84);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ee <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(85 downto 85);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ff <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(86 downto 86);
    i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_gg <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_in(87 downto 87);

    -- i_reduction_resize_4_compressed_resize_resize191_reduction_resize_4_shuffle_join_x(BITJOIN,277)@20
    i_reduction_resize_4_compressed_resize_resize191_reduction_resize_4_shuffle_join_x_q <= i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_i & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_h & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_g & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_f & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_e & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_d & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_c & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_b & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_gg & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ff & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_ee & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_dd & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_cc & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_bb & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_aa & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_z & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_y & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_x & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_w & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_v & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_u & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_t & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_s & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_r & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_q & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_p & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_o & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_n & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_m & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_l & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_k & i_reduction_resize_4_bitvec_resize_resize190_reduction_resize_4_bitvec_select_112_x_merged_bit_select_j;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,303)@20
    out_c0_exi1791_0 <= GND_q;
    out_c0_exi1791_1 <= i_reduction_resize_4_compressed_resize_resize191_reduction_resize_4_shuffle_join_x_q;
    out_o_valid <= redist170_sync_in_aunroll_x_in_i_valid_11_q;

END normal;
