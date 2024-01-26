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

-- VHDL created from resize_function
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

entity resize_function is
    port (
        in_arg_do : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_original_image : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_resized_image : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_return : in std_logic_vector(63 downto 0);  -- ufix64
        in_iord_bl_do_i_fifodata : in std_logic_vector(95 downto 0);  -- ufix96
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_original_image_i_fifodata : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_original_image_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_resized_image_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_original_image_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_resized_image_o_fifodata : out std_logic_vector(31 downto 0);  -- ufix32
        out_iowr_bl_resized_image_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end resize_function;

architecture normal of resize_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_resize_B2_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_resize_B3_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_resize_B0_runOnce is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_resize_B1_start is
        port (
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(95 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_resize_B2 is
        port (
            in_forked769_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked769_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_iord_bl_original_image_i_fifodata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_original_image_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_resized_image_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_original_image_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_resized_image_o_fifodata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iowr_bl_resized_image_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_resize_B3 is
        port (
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going783_resize_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going783_resize_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_resize_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_resize_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_resize0 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i2_0gr_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bb_resize_B0_runOnce_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_resize_B1_start_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B1_start_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_iord_bl_original_image_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_iowr_bl_resized_image_o_fifodata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_resize_B2_out_iowr_bl_resized_image_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_resize_B3_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_resize_B3_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going783_resize_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going783_resize_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going783_resize_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going783_resize_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_resize_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_resize0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_resize0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- dupName_0_c_i2_0gr_x(CONSTANT,6)
    dupName_0_c_i2_0gr_x_q <= "00";

    -- i_acl_pipeline_keep_going783_resize_valid_fifo(BLACKBOX,23)
    thei_acl_pipeline_keep_going783_resize_valid_fifo : i_acl_pipeline_keep_going783_resize_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_resize_B1_start_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going783_resize_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going783_resize_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going783_resize_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_resize_valid_fifo(BLACKBOX,25)
    thei_acl_pipeline_keep_going_resize_valid_fifo : i_acl_pipeline_keep_going_resize_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_resize_B2_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going_resize_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going_resize_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_resize_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_resize_B3_sr_0_aunroll_x(BLACKBOX,3)
    thebb_resize_B3_sr_0_aunroll_x : bb_resize_B3_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_resize_B3_out_stall_out_0,
        in_i_valid => bb_resize_B2_out_valid_out_0,
        out_o_stall => bb_resize_B3_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_resize_B3_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_resize_sr(BLACKBOX,24)
    thei_acl_pipeline_keep_going_resize_sr : i_acl_pipeline_keep_going_resize_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going_resize_valid_fifo_out_stall_out,
        in_i_valid => bb_resize_B2_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_resize_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_resize_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_resize_B2(BLACKBOX,16)
    thebb_resize_B2 : bb_resize_B2
    PORT MAP (
        in_forked769_0 => GND_q,
        in_forked769_1 => bb_resize_B2_sr_1_aunroll_x_out_o_data_1,
        in_forked_0 => GND_q,
        in_forked_1 => bb_resize_B2_sr_1_aunroll_x_out_o_data_0,
        in_intel_reserved_ffwd_0_0 => bb_resize_B1_start_out_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => bb_resize_B1_start_out_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_2_0 => bb_resize_B1_start_out_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => bb_resize_B1_start_out_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => bb_resize_B1_start_out_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => bb_resize_B1_start_out_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => bb_resize_B1_start_out_intel_reserved_ffwd_6_0,
        in_iord_bl_original_image_i_fifodata => in_iord_bl_original_image_i_fifodata,
        in_iord_bl_original_image_i_fifovalid => in_iord_bl_original_image_i_fifovalid,
        in_iowr_bl_resized_image_i_fifoready => in_iowr_bl_resized_image_i_fifoready,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_resize_sr_out_o_stall,
        in_stall_in_0 => bb_resize_B3_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_valid_in_0 => i_acl_pipeline_keep_going_resize_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_resize_B2_sr_1_aunroll_x_out_o_valid,
        out_exiting_stall_out => bb_resize_B2_out_exiting_stall_out,
        out_exiting_valid_out => bb_resize_B2_out_exiting_valid_out,
        out_iord_bl_original_image_o_fifoready => bb_resize_B2_out_iord_bl_original_image_o_fifoready,
        out_iowr_bl_resized_image_o_fifodata => bb_resize_B2_out_iowr_bl_resized_image_o_fifodata,
        out_iowr_bl_resized_image_o_fifovalid => bb_resize_B2_out_iowr_bl_resized_image_o_fifovalid,
        out_pipeline_valid_out => bb_resize_B2_out_pipeline_valid_out,
        out_stall_out_0 => bb_resize_B2_out_stall_out_0,
        out_stall_out_1 => bb_resize_B2_out_stall_out_1,
        out_valid_out_0 => bb_resize_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_resize_B2_sr_1_aunroll_x(BLACKBOX,2)
    thebb_resize_B2_sr_1_aunroll_x : bb_resize_B2_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => VCC_q,
        in_i_stall => bb_resize_B2_out_stall_out_1,
        in_i_valid => loop_limiter_resize0_out_o_valid,
        out_o_data_0 => bb_resize_B2_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_resize_B2_sr_1_aunroll_x_out_o_data_1,
        out_o_stall => bb_resize_B2_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_resize_B2_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_resize0(BLACKBOX,38)
    theloop_limiter_resize0 : loop_limiter_resize0
    PORT MAP (
        in_i_stall => bb_resize_B2_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_resize_B2_out_exiting_stall_out,
        in_i_valid => bb_resize_B1_start_out_valid_out_0,
        in_i_valid_exit => bb_resize_B2_out_exiting_valid_out,
        out_o_stall => loop_limiter_resize0_out_o_stall,
        out_o_valid => loop_limiter_resize0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going783_resize_sr(BLACKBOX,22)
    thei_acl_pipeline_keep_going783_resize_sr : i_acl_pipeline_keep_going783_resize_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going783_resize_valid_fifo_out_stall_out,
        in_i_valid => bb_resize_B1_start_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going783_resize_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going783_resize_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_resize_B3(BLACKBOX,17)
    thebb_resize_B3 : bb_resize_B3
    PORT MAP (
        in_feedback_stall_in_1 => bb_resize_B1_start_out_feedback_stall_out_1,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        in_stall_in_0 => GND_q,
        in_valid_in_0 => bb_resize_B3_sr_0_aunroll_x_out_o_valid,
        out_feedback_out_1 => bb_resize_B3_out_feedback_out_1,
        out_feedback_valid_out_1 => bb_resize_B3_out_feedback_valid_out_1,
        out_iowr_bl_return_o_fifodata => bb_resize_B3_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => bb_resize_B3_out_iowr_bl_return_o_fifovalid,
        out_stall_out_0 => bb_resize_B3_out_stall_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_resize_B1_start(BLACKBOX,15)
    thebb_resize_B1_start : bb_resize_B1_start
    PORT MAP (
        in_feedback_in_1 => bb_resize_B3_out_feedback_out_1,
        in_feedback_valid_in_1 => bb_resize_B3_out_feedback_valid_out_1,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        in_pipeline_stall_in => i_acl_pipeline_keep_going783_resize_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_resize0_out_o_stall,
        in_valid_in_0 => i_acl_pipeline_keep_going783_resize_valid_fifo_out_valid_out,
        in_valid_in_1 => VCC_q,
        out_feedback_stall_out_1 => bb_resize_B1_start_out_feedback_stall_out_1,
        out_intel_reserved_ffwd_0_0 => bb_resize_B1_start_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_1_0 => bb_resize_B1_start_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_resize_B1_start_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_resize_B1_start_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_resize_B1_start_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_resize_B1_start_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_resize_B1_start_out_intel_reserved_ffwd_6_0,
        out_iord_bl_do_o_fifoready => bb_resize_B1_start_out_iord_bl_do_o_fifoready,
        out_pipeline_valid_out => bb_resize_B1_start_out_pipeline_valid_out,
        out_stall_out_0 => bb_resize_B1_start_out_stall_out_0,
        out_valid_out_0 => bb_resize_B1_start_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_iord_bl_do_o_fifoready(GPOUT,39)
    out_iord_bl_do_o_fifoready <= bb_resize_B1_start_out_iord_bl_do_o_fifoready;

    -- out_iord_bl_original_image_o_fifoready(GPOUT,40)
    out_iord_bl_original_image_o_fifoready <= bb_resize_B2_out_iord_bl_original_image_o_fifoready;

    -- out_iowr_bl_resized_image_o_fifodata(GPOUT,41)
    out_iowr_bl_resized_image_o_fifodata <= bb_resize_B2_out_iowr_bl_resized_image_o_fifodata;

    -- out_iowr_bl_resized_image_o_fifovalid(GPOUT,42)
    out_iowr_bl_resized_image_o_fifovalid <= bb_resize_B2_out_iowr_bl_resized_image_o_fifovalid;

    -- out_iowr_bl_return_o_fifodata(GPOUT,43)
    out_iowr_bl_return_o_fifodata <= bb_resize_B3_out_iowr_bl_return_o_fifodata;

    -- out_iowr_bl_return_o_fifovalid(GPOUT,44)
    out_iowr_bl_return_o_fifovalid <= bb_resize_B3_out_iowr_bl_return_o_fifovalid;

    -- bb_resize_B0_runOnce(BLACKBOX,14)
    thebb_resize_B0_runOnce : bb_resize_B0_runOnce
    PORT MAP (
        in_stall_in_0 => GND_q,
        in_valid_in_0 => in_valid_in,
        out_stall_out_0 => bb_resize_B0_runOnce_out_stall_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_stall_out(GPOUT,45)
    out_stall_out <= bb_resize_B0_runOnce_out_stall_out_0;

    -- out_valid_out(GPOUT,46)
    out_valid_out <= GND_q;

END normal;
