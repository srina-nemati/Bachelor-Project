
# (C) 2001-2024 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 17.1 590 win32 2024.01.25.19:23:02

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     resize_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If resize_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 17.1 590 win32 2024.01.25.19:23:02
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="resize_tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/intelfpga/17.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/resize_internal_inst/
mkdir -p ./libraries/resize_inst_return_bfm/
mkdir -p ./libraries/resize_inst_resized_image_bfm/
mkdir -p ./libraries/resize_inst_reset_bfm/
mkdir -p ./libraries/resize_inst_original_image_bfm/
mkdir -p ./libraries/resize_inst_cols_bfm/
mkdir -p ./libraries/resize_inst_clock_bfm/
mkdir -p ./libraries/resize_inst_call_bfm/
mkdir -p ./libraries/resize_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"               -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"            -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"         -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                    -work altera               
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                              -work lpm                  
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                             -work lpm                  
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                           -work sgate                
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                -work sgate                
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                 -work altera_mf            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                            -work altera_mf            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"              -work altera_lnsim         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev             
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                       -work cyclonev             
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                  -work cyclonev             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/verbosity_pkg.sv"                                                -work altera_common_sv_packages      -cdslib ./cds_libs/altera_common_sv_packages.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/avalon_utilities_pkg.sv"                                         -work altera_common_sv_packages      -cdslib ./cds_libs/altera_common_sv_packages.cds.lib     
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/dspba_library_package.vhd"                                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/dspba_library.vhd"                                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_data_fifo.v"                                                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_fifo.v"                                                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_ll_fifo.v"                                                   -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_ll_ram_fifo.v"                                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_valid_fifo_counter.v"                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_dspba_valid_fifo_counter.v"                                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_staging_reg.v"                                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/hld_fifo.sv"                                                     -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/hld_fifo_zero_width.sv"                                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_high_speed_fifo.sv"                                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_low_latency_fifo.sv"                                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_zero_latency_fifo.sv"                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_fanout_pipeline.sv"                                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_std_synchronizer_nocut.v"                                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_tessellated_incr_decr_threshold.sv"                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_tessellated_incr_lookahead.sv"                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_reset_handler.sv"                                            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_lfsr.sv"                                                     -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_pop.v"                                                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_push.v"                                                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_token_fifo_counter.v"                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_pipeline.v"                                                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_dspba_buffer.v"                                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_enable_sink.v"                                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/st_top.v"                                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_ffwdsrc.v"                                                   -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_full_detector.v"                                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_loop_limiter.v"                                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/acl_reset_wire.v"                                                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_function_wrapper.vhd"                                     -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_function.vhd"                                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B2_sr_1.vhd"                                           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B3_sr_0.vhd"                                           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B0_runOnce.vhd"                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B0_runOnce_stall_region.vhd"                           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i1_wt_limpop_resize0.vhd"                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i1_wt_limpop_resize_reg.vhd"                           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_wt_limpush_resize2.vhd"                            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_wt_limpush_resize_reg.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B0_runOnce_merge_reg.vhd"                                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B0_runOnce_branch.vhd"                                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B0_runOnce_merge.vhd"                                     -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B1_start.vhd"                                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B1_start_stall_region.vhd"                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_iord_bl_do_unnamed_resize1_resize14.vhd"                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_c0_wt_entry_resize_c0_enter_resize.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c0_wt_entry_resize_c0_exit_resize10.vhd"          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_logic_c0_wt_entry_resize_c0_enter_resize4.vhd"             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going783_resize6.vhd"                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_notexitcond784_resize8.vhd"                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_c1_wt_entry_resize_c1_enter_resize.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30.vhd"          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15.vhd"            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize2_resize22.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize3_resize24.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize4_resize26.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize5_resize28.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i1_throttle_pop_resize12.vhd"                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i1_throttle_pop_resize_reg.vhd"                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize7_resize32.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize8_resize34.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_src_unnamed_resize9_resize36.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B1_start_merge_reg.vhd"                                   -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B1_start_branch.vhd"                                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B1_start_merge.vhd"                                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B2.vhd"                                                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B2_stall_region.vhd"                                   -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_c0_for_body_resize_c0_enter790_resize.vhd"                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c0_for_body_resize_c0_exit792_resize192.vhd"      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zize199_data_fifo.vhd" -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zze_full_detector.vhd" -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_logic_c0_for_body_resize_c0_enter790_resize124.vhd"        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i11_coalesce_counter_pop27_resize126.vhd"              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_0_0_0_1_pop18_resize166.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_0_0_1_1_pop17_resize170.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_0_0_2_1_pop16_resize174.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_0_0_3_1_pop15_resize178.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130.vhd"           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136.vhd"           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142.vhd"           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148.vhd"           -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_729_0_0_1_pop14_resize132.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_729_0_1_1_pop13_resize138.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_729_0_2_1_pop12_resize144.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_buf_729_0_3_1_pop11_resize150.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i11_coalesce_counter_push27_resize154.vhd"            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_0_0_0_1_push18_resize168.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_0_0_1_1_push17_resize172.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_0_0_2_1_push16_resize176.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_0_0_3_1_push15_resize180.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_729_0_0_1_push14_resize164.vhd"                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_729_0_1_1_push13_resize162.vhd"                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_729_0_2_1_push12_resize160.vhd"                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_buf_729_0_3_1_push11_resize158.vhd"                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_c1_for_body_resize_c1_enter787_resize.vhd"                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122.vhd"      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zize197_data_fifo.vhd" -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zze_full_detector.vhd" -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_sfc_logic_c1_for_body_resize_c1_enter787_resize38.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going_resize44.vhd"                          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i32_accumcolumn_0126_pop22_resize82.vhd"               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i32_accumrow_0125_pop23_resize61.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i32_col_0124_pop24_resize70.vhd"                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i32_i_0129_pop19_resize94.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i32_row_0127_pop21_resize65.vhd"                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i33_fpgaindvars_iv_pop10_resize57.vhd"                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i4_cleanups_pop26_resize40.vhd"                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i4_initerations_pop25_resize46.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pop_i8_write_y_0128_pop20_resize84.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_lastiniteration_resize53.vhd"                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_notexitcond_resize117.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i32_accumcolumn_0126_push22_resize90.vhd"             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i32_accumrow_0125_push23_resize78.vhd"                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i32_col_0124_push24_resize104.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i32_i_0129_push19_resize109.vhd"                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i32_row_0127_push21_resize107.vhd"                    -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i33_fpgaindvars_iv_push10_resize112.vhd"              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i4_cleanups_push26_resize120.vhd"                     -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i4_initerations_push25_resize49.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i8_write_y_0128_push20_resize86.vhd"                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_cmp123767_resize101.vhd"                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_cmp123768_resize73.vhd"                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_cols135763_resize68.vhd"                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_cols135764_resize98.vhd"                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_ratio133760_resize76.vhd"                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_ratio133761_resize88.vhd"                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_rows134762_resize63.vhd"                              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_sub765_resize80.vhd"                                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_sub766_resize59.vhd"                                  -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_unnamed_resize10_resize55.vhd"                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_ffwd_dst_unnamed_resize11_resize114.vhd"                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B2_merge_reg.vhd"                                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_iord_bl_original_image_unnamed_resize12_resize123.vhd"         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_iowr_bl_resized_image_unnamed_resize13_resize193.vhd"          -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B2_branch.vhd"                                            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B2_merge.vhd"                                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B3.vhd"                                                -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/bb_resize_B3_stall_region.vhd"                                   -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_throttle_push_resize195.vhd"                       -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_push_i1_throttle_push_resize_reg.vhd"                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_iowr_bl_return_unnamed_resize14_resize194.vhd"                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B3_branch.vhd"                                            -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_B3_merge.vhd"                                             -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going783_resize_sr.vhd"                      -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going783_resize_valid_fifo.vhd"              -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going_resize_sr.vhd"                         -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/i_acl_pipeline_keep_going_resize_valid_fifo.vhd"                 -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/resize_tb/simulation/submodules/loop_limiter_resize0.vhd"                                        -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize_internal.v"                                               -work resize_internal_inst           -cdslib ./cds_libs/resize_internal_inst.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_conduit_bfm_0003.sv"                                      -work resize_inst_return_bfm         -cdslib ./cds_libs/resize_inst_return_bfm.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_avalon_st_sink_bfm.sv"                                    -work resize_inst_resized_image_bfm  -cdslib ./cds_libs/resize_inst_resized_image_bfm.cds.lib 
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_avalon_reset_source.sv"                                   -work resize_inst_reset_bfm          -cdslib ./cds_libs/resize_inst_reset_bfm.cds.lib         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_avalon_st_source_bfm.sv"                                  -work resize_inst_original_image_bfm -cdslib ./cds_libs/resize_inst_original_image_bfm.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_conduit_bfm_0002.sv"                                      -work resize_inst_cols_bfm           -cdslib ./cds_libs/resize_inst_cols_bfm.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_avalon_clock_source.sv"                                   -work resize_inst_clock_bfm          -cdslib ./cds_libs/resize_inst_clock_bfm.cds.lib         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/resize_tb/simulation/submodules/altera_conduit_bfm.sv"                                           -work resize_inst_call_bfm           -cdslib ./cds_libs/resize_inst_call_bfm.cds.lib          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/resize_tb/simulation/submodules/resize.v"                                                        -work resize_inst                    -cdslib ./cds_libs/resize_inst.cds.lib                   
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/resize_tb/simulation/resize_tb.v"                                                                                                                                                              
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi