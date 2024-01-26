// tb_resize_inst.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module tb_resize_inst (
		input  wire        start,                //           call.valid
		output wire        busy,                 //               .stall
		input  wire        clock,                //          clock.clk
		input  wire [31:0] cols,                 //           cols.data
		input  wire [31:0] original_image_data,  // original_image.data
		output wire        original_image_ready, //               .ready
		input  wire        original_image_valid, //               .valid
		input  wire [31:0] ratio,                //          ratio.data
		input  wire        resetn,               //          reset.reset_n
		output wire [31:0] resized_image_data,   //  resized_image.data
		input  wire        resized_image_ready,  //               .ready
		output wire        resized_image_valid,  //               .valid
		output wire        done,                 //         return.valid
		input  wire        stall,                //               .stall
		input  wire [31:0] rows                  //           rows.data
	);

	resize_internal resize_internal_inst (
		.clock                (clock),                //          clock.clk
		.resetn               (resetn),               //          reset.reset_n
		.original_image_data  (original_image_data),  // original_image.data
		.original_image_ready (original_image_ready), //               .ready
		.original_image_valid (original_image_valid), //               .valid
		.resized_image_data   (resized_image_data),   //  resized_image.data
		.resized_image_ready  (resized_image_ready),  //               .ready
		.resized_image_valid  (resized_image_valid),  //               .valid
		.start                (start),                //           call.valid
		.busy                 (busy),                 //               .stall
		.done                 (done),                 //         return.valid
		.stall                (stall),                //               .stall
		.ratio                (ratio),                //          ratio.data
		.rows                 (rows),                 //           rows.data
		.cols                 (cols)                  //           cols.data
	);

endmodule