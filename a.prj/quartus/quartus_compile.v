module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [31:0] resize_original_image_data
	, output logic [0:0] resize_original_image_ready
	, input logic [0:0] resize_original_image_valid
	, output logic [31:0] resize_resized_image_data
	, input logic [0:0] resize_resized_image_ready
	, output logic [0:0] resize_resized_image_valid
	, input logic [0:0] resize_start
	, output logic [0:0] resize_busy
	, output logic [0:0] resize_done
	, input logic [0:0] resize_stall
	, input logic [31:0] resize_ratio
	, input logic [31:0] resize_rows
	, input logic [31:0] resize_cols
	);
 
	logic [31:0] resize_original_image_data_reg;
	logic [0:0] resize_original_image_ready_reg;
	logic [0:0] resize_original_image_valid_reg;
	logic [31:0] resize_resized_image_data_reg;
	logic [0:0] resize_resized_image_ready_reg;
	logic [0:0] resize_resized_image_valid_reg;
	logic [0:0] resize_start_reg;
	logic [0:0] resize_busy_reg;
	logic [0:0] resize_done_reg;
	logic [0:0] resize_stall_reg;
	logic [31:0] resize_ratio_reg;
	logic [31:0] resize_rows_reg;
	logic [31:0] resize_cols_reg;


	always @(posedge clock) begin
		resize_original_image_data_reg <= resize_original_image_data;
		resize_original_image_ready <= resize_original_image_ready_reg;
		resize_original_image_valid_reg <= resize_original_image_valid;
		resize_resized_image_data <= resize_resized_image_data_reg;
		resize_resized_image_ready_reg <= resize_resized_image_ready;
		resize_resized_image_valid <= resize_resized_image_valid_reg;
		resize_start_reg <= resize_start;
		resize_busy <= resize_busy_reg;
		resize_done <= resize_done_reg;
		resize_stall_reg <= resize_stall;
		resize_ratio_reg <= resize_ratio;
		resize_rows_reg <= resize_rows;
		resize_cols_reg <= resize_cols;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	resize resize_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .original_image_data(resize_original_image_data_reg)
		, .original_image_ready(resize_original_image_ready_reg)
		, .original_image_valid(resize_original_image_valid_reg)
		, .resized_image_data(resize_resized_image_data_reg)
		, .resized_image_ready(resize_resized_image_ready_reg)
		, .resized_image_valid(resize_resized_image_valid_reg)
		, .start(resize_start_reg)
		, .busy(resize_busy_reg)
		, .done(resize_done_reg)
		, .stall(resize_stall_reg)
		, .ratio(resize_ratio_reg)
		, .rows(resize_rows_reg)
		, .cols(resize_cols_reg)
	);



endmodule
