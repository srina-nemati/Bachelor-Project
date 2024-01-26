package require -exact qsys 15.0
set_module_property NAME resize_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME resize_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_assignment hls.cosim.name {resize}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL resize_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_ffwdsrc.v SYSTEM_VERILOG PATH ip/acl_ffwdsrc.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_loop_limiter.v SYSTEM_VERILOG PATH ip/acl_loop_limiter.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file resize_function_wrapper.vhd VHDL PATH ip/resize_function_wrapper.vhd
add_fileset_file resize_function.vhd VHDL PATH ip/resize_function.vhd
add_fileset_file bb_resize_B2_sr_1.vhd VHDL PATH ip/bb_resize_B2_sr_1.vhd
add_fileset_file bb_resize_B3_sr_0.vhd VHDL PATH ip/bb_resize_B3_sr_0.vhd
add_fileset_file bb_resize_B0_runOnce.vhd VHDL PATH ip/bb_resize_B0_runOnce.vhd
add_fileset_file bb_resize_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_resize_B0_runOnce_stall_region.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_resize0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_resize0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_resize_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_resize_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_resize2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_resize2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_resize_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_resize_reg.vhd
add_fileset_file resize_B0_runOnce_merge_reg.vhd VHDL PATH ip/resize_B0_runOnce_merge_reg.vhd
add_fileset_file resize_B0_runOnce_branch.vhd VHDL PATH ip/resize_B0_runOnce_branch.vhd
add_fileset_file resize_B0_runOnce_merge.vhd VHDL PATH ip/resize_B0_runOnce_merge.vhd
add_fileset_file bb_resize_B1_start.vhd VHDL PATH ip/bb_resize_B1_start.vhd
add_fileset_file bb_resize_B1_start_stall_region.vhd VHDL PATH ip/bb_resize_B1_start_stall_region.vhd
add_fileset_file i_iord_bl_do_unnamed_resize1_resize14.vhd VHDL PATH ip/i_iord_bl_do_unnamed_resize1_resize14.vhd
add_fileset_file i_sfc_c0_wt_entry_resize_c0_enter_resize.vhd VHDL PATH ip/i_sfc_c0_wt_entry_resize_c0_enter_resize.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_resize_c0_exit_resize10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_resize_c0_exit_resize10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_resize_c0_enter_resize4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_resize_c0_enter_resize4.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize6.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize6.vhd
add_fileset_file i_acl_push_i1_notexitcond784_resize8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond784_resize8.vhd
add_fileset_file i_sfc_c1_wt_entry_resize_c1_enter_resize.vhd VHDL PATH ip/i_sfc_c1_wt_entry_resize_c1_enter_resize.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15.vhd
add_fileset_file i_ffwd_src_unnamed_resize2_resize22.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize2_resize22.vhd
add_fileset_file i_ffwd_src_unnamed_resize3_resize24.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize3_resize24.vhd
add_fileset_file i_ffwd_src_unnamed_resize4_resize26.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize4_resize26.vhd
add_fileset_file i_ffwd_src_unnamed_resize5_resize28.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize5_resize28.vhd
add_fileset_file i_acl_pop_i1_throttle_pop_resize12.vhd VHDL PATH ip/i_acl_pop_i1_throttle_pop_resize12.vhd
add_fileset_file i_acl_pop_i1_throttle_pop_resize_reg.vhd VHDL PATH ip/i_acl_pop_i1_throttle_pop_resize_reg.vhd
add_fileset_file i_ffwd_src_unnamed_resize7_resize32.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize7_resize32.vhd
add_fileset_file i_ffwd_src_unnamed_resize8_resize34.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize8_resize34.vhd
add_fileset_file i_ffwd_src_unnamed_resize9_resize36.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize9_resize36.vhd
add_fileset_file resize_B1_start_merge_reg.vhd VHDL PATH ip/resize_B1_start_merge_reg.vhd
add_fileset_file resize_B1_start_branch.vhd VHDL PATH ip/resize_B1_start_branch.vhd
add_fileset_file resize_B1_start_merge.vhd VHDL PATH ip/resize_B1_start_merge.vhd
add_fileset_file bb_resize_B2.vhd VHDL PATH ip/bb_resize_B2.vhd
add_fileset_file bb_resize_B2_stall_region.vhd VHDL PATH ip/bb_resize_B2_stall_region.vhd
add_fileset_file i_sfc_c0_for_body_resize_c0_enter790_resize.vhd VHDL PATH ip/i_sfc_c0_for_body_resize_c0_enter790_resize.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exit792_resize192.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exit792_resize192.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zize199_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zize199_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zze_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zze_full_detector.vhd
add_fileset_file i_sfc_logic_c0_for_body_resize_c0_enter790_resize124.vhd VHDL PATH ip/i_sfc_logic_c0_for_body_resize_c0_enter790_resize124.vhd
add_fileset_file i_acl_pop_i11_coalesce_counter_pop27_resize126.vhd VHDL PATH ip/i_acl_pop_i11_coalesce_counter_pop27_resize126.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_0_1_pop18_resize166.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_0_1_pop18_resize166.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_1_1_pop17_resize170.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_1_1_pop17_resize170.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_2_1_pop16_resize174.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_2_1_pop16_resize174.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_3_1_pop15_resize178.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_3_1_pop15_resize178.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_0_1_pop14_resize132.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_0_1_pop14_resize132.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_1_1_pop13_resize138.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_1_1_pop13_resize138.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_2_1_pop12_resize144.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_2_1_pop12_resize144.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_3_1_pop11_resize150.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_3_1_pop11_resize150.vhd
add_fileset_file i_acl_push_i11_coalesce_counter_push27_resize154.vhd VHDL PATH ip/i_acl_push_i11_coalesce_counter_push27_resize154.vhd
add_fileset_file i_acl_push_i8_buf_0_0_0_1_push18_resize168.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_0_1_push18_resize168.vhd
add_fileset_file i_acl_push_i8_buf_0_0_1_1_push17_resize172.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_1_1_push17_resize172.vhd
add_fileset_file i_acl_push_i8_buf_0_0_2_1_push16_resize176.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_2_1_push16_resize176.vhd
add_fileset_file i_acl_push_i8_buf_0_0_3_1_push15_resize180.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_3_1_push15_resize180.vhd
add_fileset_file i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134.vhd
add_fileset_file i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140.vhd
add_fileset_file i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146.vhd
add_fileset_file i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152.vhd
add_fileset_file i_acl_push_i8_buf_729_0_0_1_push14_resize164.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_0_1_push14_resize164.vhd
add_fileset_file i_acl_push_i8_buf_729_0_1_1_push13_resize162.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_1_1_push13_resize162.vhd
add_fileset_file i_acl_push_i8_buf_729_0_2_1_push12_resize160.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_2_1_push12_resize160.vhd
add_fileset_file i_acl_push_i8_buf_729_0_3_1_push11_resize158.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_3_1_push11_resize158.vhd
add_fileset_file i_sfc_c1_for_body_resize_c1_enter787_resize.vhd VHDL PATH ip/i_sfc_c1_for_body_resize_c1_enter787_resize.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zize197_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zize197_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zze_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zze_full_detector.vhd
add_fileset_file i_sfc_logic_c1_for_body_resize_c1_enter787_resize38.vhd VHDL PATH ip/i_sfc_logic_c1_for_body_resize_c1_enter787_resize38.vhd
add_fileset_file i_acl_pipeline_keep_going_resize44.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize44.vhd
add_fileset_file i_acl_pop_i32_accumcolumn_0126_pop22_resize82.vhd VHDL PATH ip/i_acl_pop_i32_accumcolumn_0126_pop22_resize82.vhd
add_fileset_file i_acl_pop_i32_accumrow_0125_pop23_resize61.vhd VHDL PATH ip/i_acl_pop_i32_accumrow_0125_pop23_resize61.vhd
add_fileset_file i_acl_pop_i32_col_0124_pop24_resize70.vhd VHDL PATH ip/i_acl_pop_i32_col_0124_pop24_resize70.vhd
add_fileset_file i_acl_pop_i32_i_0129_pop19_resize94.vhd VHDL PATH ip/i_acl_pop_i32_i_0129_pop19_resize94.vhd
add_fileset_file i_acl_pop_i32_row_0127_pop21_resize65.vhd VHDL PATH ip/i_acl_pop_i32_row_0127_pop21_resize65.vhd
add_fileset_file i_acl_pop_i33_fpgaindvars_iv_pop10_resize57.vhd VHDL PATH ip/i_acl_pop_i33_fpgaindvars_iv_pop10_resize57.vhd
add_fileset_file i_acl_pop_i4_cleanups_pop26_resize40.vhd VHDL PATH ip/i_acl_pop_i4_cleanups_pop26_resize40.vhd
add_fileset_file i_acl_pop_i4_initerations_pop25_resize46.vhd VHDL PATH ip/i_acl_pop_i4_initerations_pop25_resize46.vhd
add_fileset_file i_acl_pop_i8_write_y_0128_pop20_resize84.vhd VHDL PATH ip/i_acl_pop_i8_write_y_0128_pop20_resize84.vhd
add_fileset_file i_acl_push_i1_lastiniteration_resize53.vhd VHDL PATH ip/i_acl_push_i1_lastiniteration_resize53.vhd
add_fileset_file i_acl_push_i1_notexitcond_resize117.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_resize117.vhd
add_fileset_file i_acl_push_i32_accumcolumn_0126_push22_resize90.vhd VHDL PATH ip/i_acl_push_i32_accumcolumn_0126_push22_resize90.vhd
add_fileset_file i_acl_push_i32_accumrow_0125_push23_resize78.vhd VHDL PATH ip/i_acl_push_i32_accumrow_0125_push23_resize78.vhd
add_fileset_file i_acl_push_i32_col_0124_push24_resize104.vhd VHDL PATH ip/i_acl_push_i32_col_0124_push24_resize104.vhd
add_fileset_file i_acl_push_i32_i_0129_push19_resize109.vhd VHDL PATH ip/i_acl_push_i32_i_0129_push19_resize109.vhd
add_fileset_file i_acl_push_i32_row_0127_push21_resize107.vhd VHDL PATH ip/i_acl_push_i32_row_0127_push21_resize107.vhd
add_fileset_file i_acl_push_i33_fpgaindvars_iv_push10_resize112.vhd VHDL PATH ip/i_acl_push_i33_fpgaindvars_iv_push10_resize112.vhd
add_fileset_file i_acl_push_i4_cleanups_push26_resize120.vhd VHDL PATH ip/i_acl_push_i4_cleanups_push26_resize120.vhd
add_fileset_file i_acl_push_i4_initerations_push25_resize49.vhd VHDL PATH ip/i_acl_push_i4_initerations_push25_resize49.vhd
add_fileset_file i_acl_push_i8_write_y_0128_push20_resize86.vhd VHDL PATH ip/i_acl_push_i8_write_y_0128_push20_resize86.vhd
add_fileset_file i_ffwd_dst_cmp123767_resize101.vhd VHDL PATH ip/i_ffwd_dst_cmp123767_resize101.vhd
add_fileset_file i_ffwd_dst_cmp123768_resize73.vhd VHDL PATH ip/i_ffwd_dst_cmp123768_resize73.vhd
add_fileset_file i_ffwd_dst_cols135763_resize68.vhd VHDL PATH ip/i_ffwd_dst_cols135763_resize68.vhd
add_fileset_file i_ffwd_dst_cols135764_resize98.vhd VHDL PATH ip/i_ffwd_dst_cols135764_resize98.vhd
add_fileset_file i_ffwd_dst_ratio133760_resize76.vhd VHDL PATH ip/i_ffwd_dst_ratio133760_resize76.vhd
add_fileset_file i_ffwd_dst_ratio133761_resize88.vhd VHDL PATH ip/i_ffwd_dst_ratio133761_resize88.vhd
add_fileset_file i_ffwd_dst_rows134762_resize63.vhd VHDL PATH ip/i_ffwd_dst_rows134762_resize63.vhd
add_fileset_file i_ffwd_dst_sub765_resize80.vhd VHDL PATH ip/i_ffwd_dst_sub765_resize80.vhd
add_fileset_file i_ffwd_dst_sub766_resize59.vhd VHDL PATH ip/i_ffwd_dst_sub766_resize59.vhd
add_fileset_file i_ffwd_dst_unnamed_resize10_resize55.vhd VHDL PATH ip/i_ffwd_dst_unnamed_resize10_resize55.vhd
add_fileset_file i_ffwd_dst_unnamed_resize11_resize114.vhd VHDL PATH ip/i_ffwd_dst_unnamed_resize11_resize114.vhd
add_fileset_file resize_B2_merge_reg.vhd VHDL PATH ip/resize_B2_merge_reg.vhd
add_fileset_file i_iord_bl_original_image_unnamed_resize12_resize123.vhd VHDL PATH ip/i_iord_bl_original_image_unnamed_resize12_resize123.vhd
add_fileset_file i_iowr_bl_resized_image_unnamed_resize13_resize193.vhd VHDL PATH ip/i_iowr_bl_resized_image_unnamed_resize13_resize193.vhd
add_fileset_file resize_B2_branch.vhd VHDL PATH ip/resize_B2_branch.vhd
add_fileset_file resize_B2_merge.vhd VHDL PATH ip/resize_B2_merge.vhd
add_fileset_file bb_resize_B3.vhd VHDL PATH ip/bb_resize_B3.vhd
add_fileset_file bb_resize_B3_stall_region.vhd VHDL PATH ip/bb_resize_B3_stall_region.vhd
add_fileset_file i_acl_push_i1_throttle_push_resize195.vhd VHDL PATH ip/i_acl_push_i1_throttle_push_resize195.vhd
add_fileset_file i_acl_push_i1_throttle_push_resize_reg.vhd VHDL PATH ip/i_acl_push_i1_throttle_push_resize_reg.vhd
add_fileset_file i_iowr_bl_return_unnamed_resize14_resize194.vhd VHDL PATH ip/i_iowr_bl_return_unnamed_resize14_resize194.vhd
add_fileset_file resize_B3_branch.vhd VHDL PATH ip/resize_B3_branch.vhd
add_fileset_file resize_B3_merge.vhd VHDL PATH ip/resize_B3_merge.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize_sr.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize_valid_fifo.vhd
add_fileset_file i_acl_pipeline_keep_going_resize_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_resize_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize_valid_fifo.vhd
add_fileset_file loop_limiter_resize0.vhd VHDL PATH ip/loop_limiter_resize0.vhd
add_fileset_file resize_internal.v SYSTEM_VERILOG PATH resize_internal.v

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL resize_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_ffwdsrc.v SYSTEM_VERILOG PATH ip/acl_ffwdsrc.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_loop_limiter.v SYSTEM_VERILOG PATH ip/acl_loop_limiter.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file resize_function_wrapper.vhd VHDL PATH ip/resize_function_wrapper.vhd
add_fileset_file resize_function.vhd VHDL PATH ip/resize_function.vhd
add_fileset_file bb_resize_B2_sr_1.vhd VHDL PATH ip/bb_resize_B2_sr_1.vhd
add_fileset_file bb_resize_B3_sr_0.vhd VHDL PATH ip/bb_resize_B3_sr_0.vhd
add_fileset_file bb_resize_B0_runOnce.vhd VHDL PATH ip/bb_resize_B0_runOnce.vhd
add_fileset_file bb_resize_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_resize_B0_runOnce_stall_region.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_resize0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_resize0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_resize_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_resize_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_resize2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_resize2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_resize_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_resize_reg.vhd
add_fileset_file resize_B0_runOnce_merge_reg.vhd VHDL PATH ip/resize_B0_runOnce_merge_reg.vhd
add_fileset_file resize_B0_runOnce_branch.vhd VHDL PATH ip/resize_B0_runOnce_branch.vhd
add_fileset_file resize_B0_runOnce_merge.vhd VHDL PATH ip/resize_B0_runOnce_merge.vhd
add_fileset_file bb_resize_B1_start.vhd VHDL PATH ip/bb_resize_B1_start.vhd
add_fileset_file bb_resize_B1_start_stall_region.vhd VHDL PATH ip/bb_resize_B1_start_stall_region.vhd
add_fileset_file i_iord_bl_do_unnamed_resize1_resize14.vhd VHDL PATH ip/i_iord_bl_do_unnamed_resize1_resize14.vhd
add_fileset_file i_sfc_c0_wt_entry_resize_c0_enter_resize.vhd VHDL PATH ip/i_sfc_c0_wt_entry_resize_c0_enter_resize.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_resize_c0_exit_resize10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_resize_c0_exit_resize10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_resize_c0_enter_resize4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_resize_c0_enter_resize4.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize6.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize6.vhd
add_fileset_file i_acl_push_i1_notexitcond784_resize8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond784_resize8.vhd
add_fileset_file i_sfc_c1_wt_entry_resize_c1_enter_resize.vhd VHDL PATH ip/i_sfc_c1_wt_entry_resize_c1_enter_resize.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_resize_c1_exit_resize30.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_resize_c1_enter_resize15.vhd
add_fileset_file i_ffwd_src_unnamed_resize2_resize22.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize2_resize22.vhd
add_fileset_file i_ffwd_src_unnamed_resize3_resize24.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize3_resize24.vhd
add_fileset_file i_ffwd_src_unnamed_resize4_resize26.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize4_resize26.vhd
add_fileset_file i_ffwd_src_unnamed_resize5_resize28.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize5_resize28.vhd
add_fileset_file i_acl_pop_i1_throttle_pop_resize12.vhd VHDL PATH ip/i_acl_pop_i1_throttle_pop_resize12.vhd
add_fileset_file i_acl_pop_i1_throttle_pop_resize_reg.vhd VHDL PATH ip/i_acl_pop_i1_throttle_pop_resize_reg.vhd
add_fileset_file i_ffwd_src_unnamed_resize7_resize32.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize7_resize32.vhd
add_fileset_file i_ffwd_src_unnamed_resize8_resize34.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize8_resize34.vhd
add_fileset_file i_ffwd_src_unnamed_resize9_resize36.vhd VHDL PATH ip/i_ffwd_src_unnamed_resize9_resize36.vhd
add_fileset_file resize_B1_start_merge_reg.vhd VHDL PATH ip/resize_B1_start_merge_reg.vhd
add_fileset_file resize_B1_start_branch.vhd VHDL PATH ip/resize_B1_start_branch.vhd
add_fileset_file resize_B1_start_merge.vhd VHDL PATH ip/resize_B1_start_merge.vhd
add_fileset_file bb_resize_B2.vhd VHDL PATH ip/bb_resize_B2.vhd
add_fileset_file bb_resize_B2_stall_region.vhd VHDL PATH ip/bb_resize_B2_stall_region.vhd
add_fileset_file i_sfc_c0_for_body_resize_c0_enter790_resize.vhd VHDL PATH ip/i_sfc_c0_for_body_resize_c0_enter790_resize.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exit792_resize192.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exit792_resize192.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zize199_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zize199_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zze_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c0_for_body_resize_c0_exiA0Zze_full_detector.vhd
add_fileset_file i_sfc_logic_c0_for_body_resize_c0_enter790_resize124.vhd VHDL PATH ip/i_sfc_logic_c0_for_body_resize_c0_enter790_resize124.vhd
add_fileset_file i_acl_pop_i11_coalesce_counter_pop27_resize126.vhd VHDL PATH ip/i_acl_pop_i11_coalesce_counter_pop27_resize126.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_0_1_pop18_resize166.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_0_1_pop18_resize166.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_1_1_pop17_resize170.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_1_1_pop17_resize170.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_2_1_pop16_resize174.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_2_1_pop16_resize174.vhd
add_fileset_file i_acl_pop_i8_buf_0_0_3_1_pop15_resize178.vhd VHDL PATH ip/i_acl_pop_i8_buf_0_0_3_1_pop15_resize178.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_0_1_coalesced_pop7_resize130.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_1_1_coalesced_pop6_resize136.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_2_1_coalesced_pop5_resize142.vhd
add_fileset_file i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148.vhd VHDL PATH ip/i_acl_pop_i8_buf_1_0_3_1_coalesced_pop4_resize148.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_0_1_pop14_resize132.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_0_1_pop14_resize132.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_1_1_pop13_resize138.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_1_1_pop13_resize138.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_2_1_pop12_resize144.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_2_1_pop12_resize144.vhd
add_fileset_file i_acl_pop_i8_buf_729_0_3_1_pop11_resize150.vhd VHDL PATH ip/i_acl_pop_i8_buf_729_0_3_1_pop11_resize150.vhd
add_fileset_file i_acl_push_i11_coalesce_counter_push27_resize154.vhd VHDL PATH ip/i_acl_push_i11_coalesce_counter_push27_resize154.vhd
add_fileset_file i_acl_push_i8_buf_0_0_0_1_push18_resize168.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_0_1_push18_resize168.vhd
add_fileset_file i_acl_push_i8_buf_0_0_1_1_push17_resize172.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_1_1_push17_resize172.vhd
add_fileset_file i_acl_push_i8_buf_0_0_2_1_push16_resize176.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_2_1_push16_resize176.vhd
add_fileset_file i_acl_push_i8_buf_0_0_3_1_push15_resize180.vhd VHDL PATH ip/i_acl_push_i8_buf_0_0_3_1_push15_resize180.vhd
add_fileset_file i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_0_1_coalesced_push7_resize134.vhd
add_fileset_file i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_1_1_coalesced_push6_resize140.vhd
add_fileset_file i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_2_1_coalesced_push5_resize146.vhd
add_fileset_file i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152.vhd VHDL PATH ip/i_acl_push_i8_buf_1_0_3_1_coalesced_push4_resize152.vhd
add_fileset_file i_acl_push_i8_buf_729_0_0_1_push14_resize164.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_0_1_push14_resize164.vhd
add_fileset_file i_acl_push_i8_buf_729_0_1_1_push13_resize162.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_1_1_push13_resize162.vhd
add_fileset_file i_acl_push_i8_buf_729_0_2_1_push12_resize160.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_2_1_push12_resize160.vhd
add_fileset_file i_acl_push_i8_buf_729_0_3_1_push11_resize158.vhd VHDL PATH ip/i_acl_push_i8_buf_729_0_3_1_push11_resize158.vhd
add_fileset_file i_sfc_c1_for_body_resize_c1_enter787_resize.vhd VHDL PATH ip/i_sfc_c1_for_body_resize_c1_enter787_resize.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exit789_resize122.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zize197_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zize197_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zze_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_for_body_resize_c1_exiA0Zze_full_detector.vhd
add_fileset_file i_sfc_logic_c1_for_body_resize_c1_enter787_resize38.vhd VHDL PATH ip/i_sfc_logic_c1_for_body_resize_c1_enter787_resize38.vhd
add_fileset_file i_acl_pipeline_keep_going_resize44.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize44.vhd
add_fileset_file i_acl_pop_i32_accumcolumn_0126_pop22_resize82.vhd VHDL PATH ip/i_acl_pop_i32_accumcolumn_0126_pop22_resize82.vhd
add_fileset_file i_acl_pop_i32_accumrow_0125_pop23_resize61.vhd VHDL PATH ip/i_acl_pop_i32_accumrow_0125_pop23_resize61.vhd
add_fileset_file i_acl_pop_i32_col_0124_pop24_resize70.vhd VHDL PATH ip/i_acl_pop_i32_col_0124_pop24_resize70.vhd
add_fileset_file i_acl_pop_i32_i_0129_pop19_resize94.vhd VHDL PATH ip/i_acl_pop_i32_i_0129_pop19_resize94.vhd
add_fileset_file i_acl_pop_i32_row_0127_pop21_resize65.vhd VHDL PATH ip/i_acl_pop_i32_row_0127_pop21_resize65.vhd
add_fileset_file i_acl_pop_i33_fpgaindvars_iv_pop10_resize57.vhd VHDL PATH ip/i_acl_pop_i33_fpgaindvars_iv_pop10_resize57.vhd
add_fileset_file i_acl_pop_i4_cleanups_pop26_resize40.vhd VHDL PATH ip/i_acl_pop_i4_cleanups_pop26_resize40.vhd
add_fileset_file i_acl_pop_i4_initerations_pop25_resize46.vhd VHDL PATH ip/i_acl_pop_i4_initerations_pop25_resize46.vhd
add_fileset_file i_acl_pop_i8_write_y_0128_pop20_resize84.vhd VHDL PATH ip/i_acl_pop_i8_write_y_0128_pop20_resize84.vhd
add_fileset_file i_acl_push_i1_lastiniteration_resize53.vhd VHDL PATH ip/i_acl_push_i1_lastiniteration_resize53.vhd
add_fileset_file i_acl_push_i1_notexitcond_resize117.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_resize117.vhd
add_fileset_file i_acl_push_i32_accumcolumn_0126_push22_resize90.vhd VHDL PATH ip/i_acl_push_i32_accumcolumn_0126_push22_resize90.vhd
add_fileset_file i_acl_push_i32_accumrow_0125_push23_resize78.vhd VHDL PATH ip/i_acl_push_i32_accumrow_0125_push23_resize78.vhd
add_fileset_file i_acl_push_i32_col_0124_push24_resize104.vhd VHDL PATH ip/i_acl_push_i32_col_0124_push24_resize104.vhd
add_fileset_file i_acl_push_i32_i_0129_push19_resize109.vhd VHDL PATH ip/i_acl_push_i32_i_0129_push19_resize109.vhd
add_fileset_file i_acl_push_i32_row_0127_push21_resize107.vhd VHDL PATH ip/i_acl_push_i32_row_0127_push21_resize107.vhd
add_fileset_file i_acl_push_i33_fpgaindvars_iv_push10_resize112.vhd VHDL PATH ip/i_acl_push_i33_fpgaindvars_iv_push10_resize112.vhd
add_fileset_file i_acl_push_i4_cleanups_push26_resize120.vhd VHDL PATH ip/i_acl_push_i4_cleanups_push26_resize120.vhd
add_fileset_file i_acl_push_i4_initerations_push25_resize49.vhd VHDL PATH ip/i_acl_push_i4_initerations_push25_resize49.vhd
add_fileset_file i_acl_push_i8_write_y_0128_push20_resize86.vhd VHDL PATH ip/i_acl_push_i8_write_y_0128_push20_resize86.vhd
add_fileset_file i_ffwd_dst_cmp123767_resize101.vhd VHDL PATH ip/i_ffwd_dst_cmp123767_resize101.vhd
add_fileset_file i_ffwd_dst_cmp123768_resize73.vhd VHDL PATH ip/i_ffwd_dst_cmp123768_resize73.vhd
add_fileset_file i_ffwd_dst_cols135763_resize68.vhd VHDL PATH ip/i_ffwd_dst_cols135763_resize68.vhd
add_fileset_file i_ffwd_dst_cols135764_resize98.vhd VHDL PATH ip/i_ffwd_dst_cols135764_resize98.vhd
add_fileset_file i_ffwd_dst_ratio133760_resize76.vhd VHDL PATH ip/i_ffwd_dst_ratio133760_resize76.vhd
add_fileset_file i_ffwd_dst_ratio133761_resize88.vhd VHDL PATH ip/i_ffwd_dst_ratio133761_resize88.vhd
add_fileset_file i_ffwd_dst_rows134762_resize63.vhd VHDL PATH ip/i_ffwd_dst_rows134762_resize63.vhd
add_fileset_file i_ffwd_dst_sub765_resize80.vhd VHDL PATH ip/i_ffwd_dst_sub765_resize80.vhd
add_fileset_file i_ffwd_dst_sub766_resize59.vhd VHDL PATH ip/i_ffwd_dst_sub766_resize59.vhd
add_fileset_file i_ffwd_dst_unnamed_resize10_resize55.vhd VHDL PATH ip/i_ffwd_dst_unnamed_resize10_resize55.vhd
add_fileset_file i_ffwd_dst_unnamed_resize11_resize114.vhd VHDL PATH ip/i_ffwd_dst_unnamed_resize11_resize114.vhd
add_fileset_file resize_B2_merge_reg.vhd VHDL PATH ip/resize_B2_merge_reg.vhd
add_fileset_file i_iord_bl_original_image_unnamed_resize12_resize123.vhd VHDL PATH ip/i_iord_bl_original_image_unnamed_resize12_resize123.vhd
add_fileset_file i_iowr_bl_resized_image_unnamed_resize13_resize193.vhd VHDL PATH ip/i_iowr_bl_resized_image_unnamed_resize13_resize193.vhd
add_fileset_file resize_B2_branch.vhd VHDL PATH ip/resize_B2_branch.vhd
add_fileset_file resize_B2_merge.vhd VHDL PATH ip/resize_B2_merge.vhd
add_fileset_file bb_resize_B3.vhd VHDL PATH ip/bb_resize_B3.vhd
add_fileset_file bb_resize_B3_stall_region.vhd VHDL PATH ip/bb_resize_B3_stall_region.vhd
add_fileset_file i_acl_push_i1_throttle_push_resize195.vhd VHDL PATH ip/i_acl_push_i1_throttle_push_resize195.vhd
add_fileset_file i_acl_push_i1_throttle_push_resize_reg.vhd VHDL PATH ip/i_acl_push_i1_throttle_push_resize_reg.vhd
add_fileset_file i_iowr_bl_return_unnamed_resize14_resize194.vhd VHDL PATH ip/i_iowr_bl_return_unnamed_resize14_resize194.vhd
add_fileset_file resize_B3_branch.vhd VHDL PATH ip/resize_B3_branch.vhd
add_fileset_file resize_B3_merge.vhd VHDL PATH ip/resize_B3_merge.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize_sr.vhd
add_fileset_file i_acl_pipeline_keep_going783_resize_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going783_resize_valid_fifo.vhd
add_fileset_file i_acl_pipeline_keep_going_resize_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_resize_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_resize_valid_fifo.vhd
add_fileset_file loop_limiter_resize0.vhd VHDL PATH ip/loop_limiter_resize0.vhd
add_fileset_file resize_internal.v SYSTEM_VERILOG PATH resize_internal.v

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### Streaming interface for original_image
add_interface original_image avalon_streaming sink
set_interface_property original_image associatedClock clock
set_interface_property original_image associatedReset reset
set_interface_property original_image maxChannel 0
set_interface_property original_image readyLatency 0
set_interface_property original_image dataBitsPerSymbol 32
set_interface_property original_image firstSymbolInHighOrderBits false
set_interface_assignment original_image hls.cosim.name {original_image}
add_interface_port original_image original_image_data data input 32
add_interface_port original_image original_image_ready ready output 1
add_interface_port original_image original_image_valid valid input 1

#### Streaming interface for resized_image
add_interface resized_image avalon_streaming source
set_interface_property resized_image associatedClock clock
set_interface_property resized_image associatedReset reset
set_interface_property resized_image maxChannel 0
set_interface_property resized_image readyLatency 0
set_interface_property resized_image dataBitsPerSymbol 32
set_interface_property resized_image firstSymbolInHighOrderBits false
set_interface_assignment resized_image hls.cosim.name {resized_image}
add_interface_port resized_image resized_image_data data output 32
add_interface_port resized_image resized_image_ready ready input 1
add_interface_port resized_image resized_image_valid valid output 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### Parameter ratio interface
add_interface ratio conduit sink
set_interface_property ratio associatedClock clock
set_interface_property ratio associatedReset reset
set_interface_assignment ratio hls.cosim.name {ratio}
add_interface_port ratio ratio data input 32

#### Parameter rows interface
add_interface rows conduit sink
set_interface_property rows associatedClock clock
set_interface_property rows associatedReset reset
set_interface_assignment rows hls.cosim.name {rows}
add_interface_port rows rows data input 32

#### Parameter cols interface
add_interface cols conduit sink
set_interface_property cols associatedClock clock
set_interface_property cols associatedReset reset
set_interface_assignment cols hls.cosim.name {cols}
add_interface_port cols cols data input 32

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }