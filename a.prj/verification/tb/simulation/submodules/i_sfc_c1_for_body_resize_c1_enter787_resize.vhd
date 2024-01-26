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

-- VHDL created from i_sfc_c1_for_body_resize_c1_enter787_resize
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

entity i_sfc_c1_for_body_resize_c1_enter787_resize is
    port (
        in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni2_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exit789_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exit789_6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c1_exit789_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit789_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c1_for_body_resize_c1_enter787_resize;

architecture normal of i_sfc_c1_for_body_resize_c1_enter787_resize is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c1_for_body_resize_c1_enter787_resize38 is
        port (
            in_c1_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni2_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exi8_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exi8_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c1_exi8_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exi8_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,14)
    not_stall_out_q <= not (i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,13)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x(BLACKBOX,12)@1
    -- out out_c1_exi8_0@6
    -- out out_c1_exi8_1@6
    -- out out_c1_exi8_2@6
    -- out out_c1_exi8_3@6
    -- out out_c1_exi8_4@6
    -- out out_c1_exi8_5@6
    -- out out_c1_exi8_6@6
    -- out out_c1_exi8_7@6
    -- out out_c1_exi8_8@6
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out@20000000
    -- out out_o_valid@6
    -- out out_pipeline_valid_out@20000000
    thei_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x : i_sfc_logic_c1_for_body_resize_c1_enter787_resize38
    PORT MAP (
        in_c1_eni2_0 => in_c1_eni2_0,
        in_c1_eni2_1 => in_c1_eni2_1,
        in_c1_eni2_2 => in_c1_eni2_2,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c1_exi8_0 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_0,
        out_c1_exi8_1 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_1,
        out_c1_exi8_2 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_2,
        out_c1_exi8_3 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_3,
        out_c1_exi8_4 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_4,
        out_c1_exi8_5 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_5,
        out_c1_exi8_6 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_6,
        out_c1_exi8_7 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_7,
        out_c1_exi8_8 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_8,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out,
        out_o_valid => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x(BLACKBOX,11)@20000000
    -- out out_data_out_0@20000003
    -- out out_data_out_1@20000003
    -- out out_data_out_2@20000003
    -- out out_data_out_3@20000003
    -- out out_data_out_4@20000003
    -- out out_data_out_5@20000003
    -- out out_data_out_6@20000003
    -- out out_data_out_7@20000003
    -- out out_data_out_8@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x : i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122
    PORT MAP (
        in_data_in_0 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_0,
        in_data_in_1 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_1,
        in_data_in_2 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_2,
        in_data_in_3 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_3,
        in_data_in_4 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_4,
        in_data_in_5 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_5,
        in_data_in_6 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_6,
        in_data_in_7 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_7,
        in_data_in_8 => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_c1_exi8_8,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_0,
        out_data_out_1 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_1,
        out_data_out_2 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_2,
        out_data_out_3 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_3,
        out_data_out_4 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_4,
        out_data_out_5 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_5,
        out_data_out_6 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_6,
        out_data_out_7 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_7,
        out_data_out_8 => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_8,
        out_stall_entry => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@9
    out_c1_exit789_0 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_0;
    out_c1_exit789_1 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_1;
    out_c1_exit789_2 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_2;
    out_c1_exit789_3 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_3;
    out_c1_exit789_4 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_4;
    out_c1_exit789_5 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_5;
    out_c1_exit789_6 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_6;
    out_c1_exit789_7 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_7;
    out_c1_exit789_8 <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_data_out_8;
    out_o_valid <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out <= i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_valid_out;

    -- pipeline_valid_out_sync(GPOUT,16)
    out_pipeline_valid_out <= i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,18)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out <= i_sfc_logic_c1_for_body_resize_c1_enter787_resize38_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_resize_exiting_stall_out;

    -- sync_out(GPOUT,20)@20000000
    out_o_stall <= i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize_aunroll_x_out_stall_entry;

END normal;
