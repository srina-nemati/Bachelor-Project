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

-- VHDL created from bb_resize_B2_stall_region
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

entity bb_resize_B2_stall_region is
    port (
        in_iowr_bl_resized_image_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_original_image_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked769 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_resized_image_o_fifodata : out std_logic_vector(31 downto 0);  -- ufix32
        out_iowr_bl_resized_image_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_iord_bl_original_image_i_fifodata : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_original_image_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_resize_B2_stall_region;

architecture normal of bb_resize_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body_resize_c0_enter790_resize is
        port (
            in_c0_eni7_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni7_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni7_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni7_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni7_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni7_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni7_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni7_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_exe1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit792_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit792_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c1_for_body_resize_c1_enter787_resize is
        port (
            in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni2_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit789_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit789_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exit789_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exit789_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component resize_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iord_bl_original_image_unnamed_resize12_resize123 is
        port (
            in_c1_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_original_image_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_original_image_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_original_image_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_resized_image_unnamed_resize13_resize193 is
        port (
            in_c1_exe7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_resized_image_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_resized_image_o_fifodata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iowr_bl_resized_image_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;




    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_c0_exit792_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal resize_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal resize_B2_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal resize_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal resize_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_original_image_unnamed_resize12_resize_out_iord_bl_original_image_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_original_image_unnamed_resize12_resize_out_o_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iord_bl_original_image_unnamed_resize12_resize_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_original_image_unnamed_resize12_resize_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifodata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q : STD_LOGIC_VECTOR (100 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_resize_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_resize_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_resize_B2_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_original_image_unnamed_resize12_resize_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_iord_bl_original_image_unnamed_resize12_resize_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_resize_B2_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_join_i_iord_bl_original_image_unnamed_resize12_resize(BITJOIN,56)
    bubble_join_i_iord_bl_original_image_unnamed_resize12_resize_q <= i_iord_bl_original_image_unnamed_resize12_resize_out_o_data;

    -- bubble_select_i_iord_bl_original_image_unnamed_resize12_resize(BITSELECT,57)
    bubble_select_i_iord_bl_original_image_unnamed_resize12_resize_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_original_image_unnamed_resize12_resize_q(31 downto 0));

    -- SE_stall_entry(STALLENABLE,82)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= resize_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,60)
    bubble_join_stall_entry_q <= in_forked769 & in_forked;

    -- bubble_select_stall_entry(BITSELECT,61)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));

    -- resize_B2_merge_reg_aunroll_x(BLACKBOX,23)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theresize_B2_merge_reg_aunroll_x : resize_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_stall_in => SE_out_resize_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => resize_B2_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => resize_B2_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => resize_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => resize_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_resize_B2_merge_reg_aunroll_x(BITJOIN,53)
    bubble_join_resize_B2_merge_reg_aunroll_x_q <= resize_B2_merge_reg_aunroll_x_out_data_out_1 & resize_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_resize_B2_merge_reg_aunroll_x(BITSELECT,54)
    bubble_select_resize_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_resize_B2_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_resize_B2_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_resize_B2_merge_reg_aunroll_x_q(1 downto 1));

    -- SE_out_resize_B2_merge_reg_aunroll_x(STALLENABLE,77)
    SE_out_resize_B2_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_resize_B2_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_resize_B2_merge_reg_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_resize_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_resize_B2_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_resize_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_resize_B2_merge_reg_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_resize_B2_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_stall) and SE_out_resize_B2_merge_reg_aunroll_x_wireValid) or SE_out_resize_B2_merge_reg_aunroll_x_fromReg0;
    SE_out_resize_B2_merge_reg_aunroll_x_consumed1 <= (not (redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out) and SE_out_resize_B2_merge_reg_aunroll_x_wireValid) or SE_out_resize_B2_merge_reg_aunroll_x_fromReg1;
    -- Consuming
    SE_out_resize_B2_merge_reg_aunroll_x_StallValid <= SE_out_resize_B2_merge_reg_aunroll_x_backStall and SE_out_resize_B2_merge_reg_aunroll_x_wireValid;
    SE_out_resize_B2_merge_reg_aunroll_x_toReg0 <= SE_out_resize_B2_merge_reg_aunroll_x_StallValid and SE_out_resize_B2_merge_reg_aunroll_x_consumed0;
    SE_out_resize_B2_merge_reg_aunroll_x_toReg1 <= SE_out_resize_B2_merge_reg_aunroll_x_StallValid and SE_out_resize_B2_merge_reg_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_resize_B2_merge_reg_aunroll_x_or0 <= SE_out_resize_B2_merge_reg_aunroll_x_consumed0;
    SE_out_resize_B2_merge_reg_aunroll_x_wireStall <= not (SE_out_resize_B2_merge_reg_aunroll_x_consumed1 and SE_out_resize_B2_merge_reg_aunroll_x_or0);
    SE_out_resize_B2_merge_reg_aunroll_x_backStall <= SE_out_resize_B2_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_resize_B2_merge_reg_aunroll_x_V0 <= SE_out_resize_B2_merge_reg_aunroll_x_wireValid and not (SE_out_resize_B2_merge_reg_aunroll_x_fromReg0);
    SE_out_resize_B2_merge_reg_aunroll_x_V1 <= SE_out_resize_B2_merge_reg_aunroll_x_wireValid and not (SE_out_resize_B2_merge_reg_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_resize_B2_merge_reg_aunroll_x_wireValid <= resize_B2_merge_reg_aunroll_x_out_valid_out;

    -- redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo(STALLFIFO,43)
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in <= SE_out_resize_B2_merge_reg_aunroll_x_V1;
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in <= SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_backStall;
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_in <= bubble_select_resize_B2_merge_reg_aunroll_x_b;
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in(0);
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in(0);
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out(0) <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp;
    redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out(0) <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp;
    theredist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_resize_B2_merge_reg_aunroll_x_b,
        valid_out => redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_stall_out_bitsignaltemp,
        data_out => redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo(BITJOIN,64)
    bubble_join_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_q <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_data_out;

    -- bubble_select_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo(BITSELECT,65)
    bubble_select_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_q(0 downto 0));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x(BLACKBOX,21)@9
    -- in in_i_stall@20000000
    -- out out_c0_exit792_0@23
    -- out out_c0_exit792_1@23
    -- out out_o_stall@20000000
    -- out out_o_valid@23
    thei_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x : i_sfc_c0_for_body_resize_c0_enter790_resize
    PORT MAP (
        in_c0_eni7_0 => GND_q,
        in_c0_eni7_1 => bubble_select_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_b,
        in_c0_eni7_2 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_b,
        in_c0_eni7_3 => bubble_select_i_iord_bl_original_image_unnamed_resize12_resize_b,
        in_c0_eni7_4 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_c,
        in_c0_eni7_5 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_e,
        in_c0_eni7_6 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_f,
        in_c0_eni7_7 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_g,
        in_c1_exe1 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_b,
        in_forked => bubble_select_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_b,
        in_i_stall => SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_backStall,
        in_i_valid => SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_V0,
        out_c0_exit792_1 => i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_c0_exit792_1,
        out_o_stall => i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo(STALLENABLE,87)
    -- Valid signal propagation
    SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_V0 <= SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_backStall <= i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_stall or not (SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_and0 <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out;
    SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_wireValid <= i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_valid and SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_and0;

    -- bubble_join_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x(BITJOIN,47)
    bubble_join_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_q <= i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_c0_exit792_1;

    -- bubble_select_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x(BITSELECT,48)
    bubble_select_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_q(31 downto 0));

    -- bubble_join_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo(BITJOIN,67)
    bubble_join_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_q <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_data_out;

    -- bubble_select_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo(BITSELECT,68)
    bubble_select_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_q(0 downto 0));

    -- i_iowr_bl_resized_image_unnamed_resize13_resize(BLACKBOX,30)@23
    -- in in_i_stall@20000000
    -- out out_iowr_bl_resized_image_o_fifodata@20000000
    -- out out_iowr_bl_resized_image_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_resized_image_unnamed_resize13_resize : i_iowr_bl_resized_image_unnamed_resize13_resize193
    PORT MAP (
        in_c1_exe7 => bubble_select_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_b,
        in_i_data => bubble_select_i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_b,
        in_i_stall => SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_backStall,
        in_i_valid => SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_V0,
        in_iowr_bl_resized_image_i_fifoready => in_iowr_bl_resized_image_i_fifoready,
        out_iowr_bl_resized_image_o_fifodata => i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifodata,
        out_iowr_bl_resized_image_o_fifovalid => i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifovalid,
        out_o_stall => i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_stall,
        out_o_valid => i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo(STALLENABLE,89)
    -- Valid signal propagation
    SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_V0 <= SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_backStall <= in_stall_in or not (SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_and0 <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out;
    SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_wireValid <= i_iowr_bl_resized_image_unnamed_resize13_resize_out_o_valid and SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_and0;

    -- redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo(STALLFIFO,45)
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V3;
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in <= SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_backStall;
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_data_in <= bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_i;
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in_bitsignaltemp <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in(0);
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in_bitsignaltemp <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in(0);
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out(0) <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out_bitsignaltemp;
    redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out(0) <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out_bitsignaltemp;
    theredist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 15,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_i,
        valid_out => redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out_bitsignaltemp,
        data_out => redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo(STALLFIFO,44)
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V2;
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in <= SE_out_redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_backStall;
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_data_in <= bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_h;
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in_bitsignaltemp <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in(0);
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in_bitsignaltemp <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in(0);
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out(0) <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out_bitsignaltemp;
    redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out(0) <= redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out_bitsignaltemp;
    theredist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 15,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_h,
        valid_out => redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out_bitsignaltemp,
        data_out => redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x(BLACKBOX,22)@1
    -- in in_i_stall@20000000
    -- out out_c1_exit789_0@9
    -- out out_c1_exit789_1@9
    -- out out_c1_exit789_2@9
    -- out out_c1_exit789_3@9
    -- out out_c1_exit789_4@9
    -- out out_c1_exit789_5@9
    -- out out_c1_exit789_6@9
    -- out out_c1_exit789_7@9
    -- out out_c1_exit789_8@9
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x : i_sfc_c1_for_body_resize_c1_enter787_resize
    PORT MAP (
        in_c1_eni2_0 => GND_q,
        in_c1_eni2_1 => bubble_select_resize_B2_merge_reg_aunroll_x_b,
        in_c1_eni2_2 => bubble_select_resize_B2_merge_reg_aunroll_x_c,
        in_i_stall => SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_backStall,
        in_i_valid => SE_out_resize_B2_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c1_exit789_1 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_1,
        out_c1_exit789_2 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_2,
        out_c1_exit789_3 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_3,
        out_c1_exit789_4 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_4,
        out_c1_exit789_5 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_5,
        out_c1_exit789_6 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_6,
        out_c1_exit789_7 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7,
        out_c1_exit789_8 => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out,
        out_o_stall => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x(STALLENABLE,75)
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg0 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg1 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg2 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg3 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed0 <= (not (SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_backStall) and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg0;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed1 <= (not (i_iord_bl_original_image_unnamed_resize12_resize_out_o_stall) and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg1;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed2 <= (not (redist1_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7_14_fifo_stall_out) and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg2;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed3 <= (not (redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_stall_out) and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid) or SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg3;
    -- Consuming
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_backStall and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg0 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed0;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg1 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed1;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg2 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed2;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_toReg3 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_StallValid and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed3;
    -- Backward Stall generation
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or0 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed0;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or1 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed1 and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or0;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or2 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed2 and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or1;
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireStall <= not (SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_consumed3 and SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_or2);
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_backStall <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V0 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg0);
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V1 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg1);
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V2 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg2);
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V3 <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid and not (SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_fromReg3);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_wireValid <= i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_o_valid;

    -- SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo(STALLENABLE,85)
    -- Valid signal propagation
    SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_V0 <= SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_backStall <= i_sfc_c0_for_body_resize_c0_enter790_resize_aunroll_x_out_o_stall or not (SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and0 <= redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_valid_out;
    SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and1 <= i_iord_bl_original_image_unnamed_resize12_resize_out_o_valid and SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and0;
    SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_wireValid <= SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V0 and SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_and1;

    -- bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x(BITJOIN,50)
    bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q <= i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_7 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_6 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_5 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_4 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_3 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_2 & i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_1;

    -- bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x(BITSELECT,51)
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(2 downto 2));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(34 downto 3));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(66 downto 35));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(98 downto 67));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(99 downto 99));
    bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_q(100 downto 100));

    -- i_iord_bl_original_image_unnamed_resize12_resize(BLACKBOX,29)@9
    -- in in_i_stall@20000000
    -- out out_iord_bl_original_image_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_original_image_unnamed_resize12_resize : i_iord_bl_original_image_unnamed_resize12_resize123
    PORT MAP (
        in_c1_exe3 => bubble_select_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_d,
        in_i_stall => SE_out_redist0_resize_B2_merge_reg_aunroll_x_out_data_out_0_8_fifo_backStall,
        in_i_valid => SE_out_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_V1,
        in_iord_bl_original_image_i_fifodata => in_iord_bl_original_image_i_fifodata,
        in_iord_bl_original_image_i_fifovalid => in_iord_bl_original_image_i_fifovalid,
        out_iord_bl_original_image_o_fifoready => i_iord_bl_original_image_unnamed_resize12_resize_out_iord_bl_original_image_o_fifoready,
        out_o_data => i_iord_bl_original_image_unnamed_resize12_resize_out_o_data,
        out_o_stall => i_iord_bl_original_image_unnamed_resize12_resize_out_o_stall,
        out_o_valid => i_iord_bl_original_image_unnamed_resize12_resize_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_iord_bl_original_image_o_fifoready <= i_iord_bl_original_image_unnamed_resize12_resize_out_iord_bl_original_image_o_fifoready;

    -- bubble_join_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo(BITJOIN,70)
    bubble_join_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_q <= redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_data_out;

    -- bubble_select_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo(BITSELECT,71)
    bubble_select_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,8)@23
    out_c1_exe8 <= bubble_select_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_b;
    out_valid_out <= SE_out_redist2_i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_c1_exit789_8_14_fifo_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_iowr_bl_resized_image_o_fifodata <= i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifodata;
    out_iowr_bl_resized_image_o_fifovalid <= i_iowr_bl_resized_image_unnamed_resize13_resize_out_iowr_bl_resized_image_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,28)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out <= i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out <= i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,34)
    out_pipeline_valid_out <= i_sfc_c1_for_body_resize_c1_enter787_resize_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,39)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
