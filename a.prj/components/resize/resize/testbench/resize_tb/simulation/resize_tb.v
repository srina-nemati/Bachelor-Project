// resize_tb.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module resize_tb (
	);
	
	// Define constants
    parameter CLK_PERIOD = 10;	// Clock period in ps
	parameter ROW = 32'd396;	// 528px = 396 (*32bit)
	parameter COL = 32'd264;	// 352px = 264 (*32bit)
	parameter RATIO = 32'd128;
	reg [31:0] inputTestIMG [0:ROW*COL];

	integer j,i;
	initial begin
		for (j = 0; j < ROW*COL; j = j + 1) begin
			inputTestIMG[j] = 32'hffffffff;
		end
	end
	
	
	// Signals for the testbench
	reg         resize_inst_resized_image_valid;          // resize_inst:resized_image_valid -> resize_inst_resized_image_bfm:sink_valid
	wire  [31:0] resize_inst_resized_image_data;           // resize_inst:resized_image_data -> resize_inst_resized_image_bfm:sink_data
	reg         resize_inst_resized_image_ready;          // resize_inst_resized_image_bfm:sink_ready -> resize_inst:resized_image_ready
	reg   [0:0] resize_inst_original_image_bfm_src_valid; // resize_inst_original_image_bfm:src_valid -> resize_inst:original_image_valid
	reg  [31:0] resize_inst_original_image_bfm_src_data;  // resize_inst_original_image_bfm:src_data -> resize_inst:original_image_data
	wire         resize_inst_original_image_bfm_src_ready; // resize_inst:original_image_ready -> resize_inst_original_image_bfm:src_ready
	reg         resize_inst_clock_bfm_clk_clk;            // resize_inst_clock_bfm:clk -> [resize_inst:clock, resize_inst_call_bfm:clk, resize_inst_cols_bfm:clk, resize_inst_original_image_bfm:clk, resize_inst_ratio_bfm:clk, resize_inst_reset_bfm:clk, resize_inst_resized_image_bfm:clk, resize_inst_return_bfm:clk, resize_inst_rows_bfm:clk]
	reg   [0:0] resize_inst_call_bfm_conduit_valid;       // resize_inst_call_bfm:sig_valid -> resize_inst:start
	wire         resize_inst_call_stall;                   // resize_inst:busy -> resize_inst_call_bfm:sig_stall
	reg  [31:0] resize_inst_cols_bfm_conduit_data;        // resize_inst_cols_bfm:sig_data -> resize_inst:cols
	reg  [31:0] resize_inst_ratio_bfm_conduit_data;       // resize_inst_ratio_bfm:sig_data -> resize_inst:ratio
	wire         resize_inst_return_valid;                 // resize_inst:done -> resize_inst_return_bfm:sig_valid
	reg   [0:0] resize_inst_return_bfm_conduit_stall;     // resize_inst_return_bfm:sig_stall -> resize_inst:stall
	reg  [31:0] resize_inst_rows_bfm_conduit_data;        // resize_inst_rows_bfm:sig_data -> resize_inst:rows
	reg         resize_inst_reset_bfm_reset_reset;        // resize_inst_reset_bfm:reset -> [resize_inst:resetn, resize_inst_call_bfm:reset, resize_inst_cols_bfm:reset, resize_inst_original_image_bfm:reset, resize_inst_ratio_bfm:reset, resize_inst_resized_image_bfm:reset, resize_inst_return_bfm:reset, resize_inst_rows_bfm:reset]

	resize resize_inst (
		.start                (resize_inst_call_bfm_conduit_valid),       //           call.valid
		.busy                 (resize_inst_call_stall),                   //               .stall
		.clock                (resize_inst_clock_bfm_clk_clk),            //          clock.clk
		.cols                 (resize_inst_cols_bfm_conduit_data),        //           cols.data
		.original_image_data  (resize_inst_original_image_bfm_src_data),  // original_image.data
		.original_image_ready (resize_inst_original_image_bfm_src_ready), //               .ready
		.original_image_valid (resize_inst_original_image_bfm_src_valid), //               .valid
		.ratio                (resize_inst_ratio_bfm_conduit_data),       //          ratio.data
		.resetn               (resize_inst_reset_bfm_reset_reset),        //          reset.reset_n
		.resized_image_data   (resize_inst_resized_image_data),           //  resized_image.data
		.resized_image_ready  (resize_inst_resized_image_ready),          //               .ready
		.resized_image_valid  (resize_inst_resized_image_valid),          //               .valid
		.done                 (resize_inst_return_valid),                 //         return.valid
		.stall                (resize_inst_return_bfm_conduit_stall),     //               .stall
		.rows                 (resize_inst_rows_bfm_conduit_data)         //           rows.data
	);

	// Clock generation
	always #((CLK_PERIOD)/2) resize_inst_clock_bfm_clk_clk <= ~resize_inst_clock_bfm_clk_clk;

	// Initial block for testbench
	initial begin
		 // Initialize signals
		 resize_inst_rows_bfm_conduit_data <= ROW;
		 resize_inst_cols_bfm_conduit_data <= COL;
		 resize_inst_ratio_bfm_conduit_data <= RATIO;
		 resize_inst_call_bfm_conduit_valid <= 1;
		 resize_inst_original_image_bfm_src_valid <= 0;
		 resize_inst_reset_bfm_reset_reset <= 1;
		 resize_inst_resized_image_ready <= 0;
		 resize_inst_return_bfm_conduit_stall <= 0;

		 // Apply stimulus
		 forever begin
			  @(posedge resize_inst_clock_bfm_clk_clk);
			  if (i < ROW*COL) begin
					if (resize_inst_original_image_bfm_src_ready == 1) begin
						 resize_inst_original_image_bfm_src_data = inputTestIMG[i]; 
						 resize_inst_resized_image_valid = 1;
						 i = i + 1;
					end 
					else begin
						 resize_inst_resized_image_valid <= 0;
					end
			  end
		 end
	end

	
	altera_conduit_bfm resize_inst_call_bfm (
		.clk       (resize_inst_clock_bfm_clk_clk),      //     clk.clk
		.reset     (~resize_inst_reset_bfm_reset_reset), //   reset.reset
		.sig_stall (resize_inst_call_stall),             // conduit.stall
		.sig_valid (resize_inst_call_bfm_conduit_valid)  //        .valid
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) resize_inst_clock_bfm (
		.clk (resize_inst_clock_bfm_clk_clk)  // clk.clk
	);

	altera_conduit_bfm_0002 resize_inst_cols_bfm (
		.clk      (resize_inst_clock_bfm_clk_clk),      //     clk.clk
		.reset    (~resize_inst_reset_bfm_reset_reset), //   reset.reset
		.sig_data (resize_inst_cols_bfm_conduit_data)   // conduit.data
	);

	altera_avalon_st_source_bfm #(
		.USE_PACKET       (0),
		.USE_CHANNEL      (0),
		.USE_ERROR        (0),
		.USE_READY        (1),
		.USE_VALID        (1),
		.USE_EMPTY        (0),
		.ST_SYMBOL_W      (32),
		.ST_NUMSYMBOLS    (1),
		.ST_CHANNEL_W     (1),
		.ST_ERROR_W       (1),
		.ST_EMPTY_W       (1),
		.ST_READY_LATENCY (0),
		.ST_BEATSPERCYCLE (1),
		.ST_MAX_CHANNELS  (0),
		.VHDL_ID          (0)
	) resize_inst_original_image_bfm (
		.clk               (resize_inst_clock_bfm_clk_clk),            //       clk.clk
		.reset             (~resize_inst_reset_bfm_reset_reset),       // clk_reset.reset
		.src_data          (resize_inst_original_image_bfm_src_data),  //       src.data
		.src_valid         (resize_inst_original_image_bfm_src_valid), //          .valid
		.src_ready         (resize_inst_original_image_bfm_src_ready), //          .ready
		.src_startofpacket (),                                         // (terminated)
		.src_endofpacket   (),                                         // (terminated)
		.src_empty         (),                                         // (terminated)
		.src_channel       (),                                         // (terminated)
		.src_error         ()                                          // (terminated)
	);

	altera_conduit_bfm_0002 resize_inst_ratio_bfm (
		.clk      (resize_inst_clock_bfm_clk_clk),      //     clk.clk
		.reset    (~resize_inst_reset_bfm_reset_reset), //   reset.reset
		.sig_data (resize_inst_ratio_bfm_conduit_data)  // conduit.data
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) resize_inst_reset_bfm (
		.reset (resize_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (resize_inst_clock_bfm_clk_clk)      //   clk.clk
	);

	altera_avalon_st_sink_bfm #(
		.USE_PACKET       (0),
		.USE_CHANNEL      (0),
		.USE_ERROR        (0),
		.USE_READY        (1),
		.USE_VALID        (1),
		.USE_EMPTY        (0),
		.ST_SYMBOL_W      (32),
		.ST_NUMSYMBOLS    (1),
		.ST_CHANNEL_W     (1),
		.ST_ERROR_W       (1),
		.ST_EMPTY_W       (1),
		.ST_READY_LATENCY (0),
		.ST_BEATSPERCYCLE (1),
		.ST_MAX_CHANNELS  (0),
		.VHDL_ID          (0)
	) resize_inst_resized_image_bfm (
		.clk                (resize_inst_clock_bfm_clk_clk),      //       clk.clk
		.reset              (~resize_inst_reset_bfm_reset_reset), // clk_reset.reset
		.sink_data          (resize_inst_resized_image_data),     //      sink.data
		.sink_valid         (resize_inst_resized_image_valid),    //          .valid
		.sink_ready         (resize_inst_resized_image_ready),    //          .ready
		.sink_startofpacket (1'b0),                               // (terminated)
		.sink_endofpacket   (1'b0),                               // (terminated)
		.sink_empty         (1'b0),                               // (terminated)
		.sink_channel       (1'b0),                               // (terminated)
		.sink_error         (1'b0)                                // (terminated)
	);

	altera_conduit_bfm_0003 resize_inst_return_bfm (
		.clk       (resize_inst_clock_bfm_clk_clk),        //     clk.clk
		.reset     (~resize_inst_reset_bfm_reset_reset),   //   reset.reset
		.sig_valid (resize_inst_return_valid),             // conduit.valid
		.sig_stall (resize_inst_return_bfm_conduit_stall)  //        .stall
	);

	altera_conduit_bfm_0002 resize_inst_rows_bfm (
		.clk      (resize_inst_clock_bfm_clk_clk),      //     clk.clk
		.reset    (~resize_inst_reset_bfm_reset_reset), //   reset.reset
		.sig_data (resize_inst_rows_bfm_conduit_data)   // conduit.data
	);

endmodule