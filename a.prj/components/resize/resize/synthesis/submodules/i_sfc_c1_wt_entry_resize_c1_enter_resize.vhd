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

-- VHDL created from i_sfc_c1_wt_entry_resize_c1_enter_resize
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

entity i_sfc_c1_wt_entry_resize_c1_enter_resize is
    port (
        in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni1_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c1_eni1_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exit_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c1_wt_entry_resize_c1_enter_resize;

architecture normal of i_sfc_c1_wt_entry_resize_c1_enter_resize is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_mask : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15 is
        port (
            in_c1_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_eni1_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni1_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c1_eni1_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_enable : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_resize6_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_mask : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x(BLACKBOX,8)@2
    -- out out_unnamed_resize6_0@6
    -- out out_intel_reserved_ffwd_1_0@6
    -- out out_intel_reserved_ffwd_4_0@6
    -- out out_intel_reserved_ffwd_5_0@6
    -- out out_intel_reserved_ffwd_6_0@6
    -- out out_o_valid@6
    thei_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x : i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15
    PORT MAP (
        in_c1_eni1_0 => in_c1_eni1_0,
        in_c1_eni1_1 => in_c1_eni1_1,
        in_c1_eni1_2 => in_c1_eni1_2,
        in_c1_eni1_3 => in_c1_eni1_3,
        in_enable => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_enable,
        in_i_valid => input_accepted_and_q,
        out_intel_reserved_ffwd_1_0 => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_4_0 => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_6_0,
        out_o_valid => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,11)
    not_stall_out_q <= not (i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_mask);

    -- input_accepted_and(LOGICAL,10)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x(BLACKBOX,7)@20000000
    thei_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x : i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30
    PORT MAP (
        in_data_in_0 => GND_q,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_data_out_0,
        out_enable => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_enable,
        out_stall_entry => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_stall_entry,
        out_valid_mask => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_mask,
        out_valid_out => i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@6
    out_c1_exit_0 <= i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_data_out_0;
    out_o_valid <= i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,4)
    out_intel_reserved_ffwd_4_0 <= i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_4_0;

    -- dupName_1_regfree_osync_x(GPOUT,5)
    out_intel_reserved_ffwd_5_0 <= i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_5_0;

    -- dupName_2_regfree_osync_x(GPOUT,6)
    out_intel_reserved_ffwd_6_0 <= i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_6_0;

    -- regfree_osync(GPOUT,12)
    out_intel_reserved_ffwd_1_0 <= i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15_aunroll_x_out_intel_reserved_ffwd_1_0;

    -- sync_out(GPOUT,14)@20000000
    out_o_stall <= i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize_aunroll_x_out_stall_entry;

END normal;
