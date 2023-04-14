module audio_codec
(
   //////////// Audio //////////
   // input  logic               AUD_ADCDAT,
   // inout  logic               AUD_ADCLRCK,
   inout  logic               AUD_BCLK,
   output logic               AUD_DACDAT,
   inout  logic               AUD_DACLRCK,
   output logic               AUD_XCK,

   //////////// CLOCK //////////
   // input  logic               CLOCK2_50,
   // input  logic               CLOCK3_50,
   // input  logic               CLOCK4_50,
   input  logic               CLOCK_50,

   //////////// I2C for Audio and Video-In //////////
   output                     FPGA_I2C_SCLK,
   inout                      FPGA_I2C_SDAT,
   //////////// SEG7 //////////
   // output logic     [6:0]     HEX0,
   // output logic     [6:0]     HEX1,
   // output logic     [6:0]     HEX2,
   // output logic     [6:0]     HEX3,
   // output logic     [6:0]     HEX4,
   // output logic     [6:0]     HEX5,

   //////////// KEY //////////
   input  logic     [3:0]     KEY

   //////////// LED //////////
   // output logic     [9:0]     LEDR,

   //////////// SW //////////
   // input  logic     [9:0]     SW
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
	//clock
   logic 			clk;
	
	//reset
   logic 			reset;
	logic  			reset_reg1;
	logic  			reset_reg2;
	
	//tone generator
	logic				sink_ready;
	logic  [15:0]	tone_generator_source_data;
	logic				tone_generator_source_valid;
	
	//fifo L & R
	logic  [15:0]	audio_fifo_left_channel_source_data;
	logic 			audio_fifo_left_channel_source_valid;
	logic 			audio_fifo_left_channel_sink_ready;
	logic  [15:0]	audio_fifo_right_channel_source_data;
	logic 			audio_fifo_right_channel_source_valid;
	logic 			audio_fifo_right_channel_sink_ready;
	
	//audio controller
	logic 			audio_controller_left_channel_sink_ready;
	logic 			audio_controller_right_channel_sink_ready;

//=======================================================
//  Structural coding
//=======================================================
	//clock
   assign clk = CLOCK_50;
	
	//button
	always_ff @ (posedge clk) begin
		reset_reg1 <= KEY[0];
   end
	
	always_ff @ (posedge clk) begin
		reset_reg2 <= reset_reg1;
   end
	
	always_ff @ (posedge clk) begin
		reset <= !reset_reg2;
   end
	
	// sink ready L & R FIFO to tone generator
	always_comb sink_ready = audio_fifo_left_channel_sink_ready & audio_fifo_right_channel_sink_ready;
//=======================================================
//  Submodules
//=======================================================
	//tone generator
	tone_generator tone_generator_inst(
		.clk(clk),
		.reset(reset),
		.sink_ready(sink_ready),
		.sample(tone_generator_source_data),
		.sample_valid(tone_generator_source_valid)
	);
	
	//audio fifo
	audio_fifo audio_fifo_left_channel_inst(
		.sc_fifo_0_clk_clk(clk),
		.sc_fifo_0_clk_reset_reset(reset),
		.sc_fifo_0_in_data(tone_generator_source_data),
		.sc_fifo_0_in_valid(tone_generator_source_valid),
		.sc_fifo_0_in_ready(audio_fifo_left_channel_sink_ready),
		.sc_fifo_0_out_data(audio_fifo_left_channel_source_data),
		.sc_fifo_0_out_valid(audio_fifo_left_channel_source_valid),
		.sc_fifo_0_out_ready(audio_controller_left_channel_sink_ready)
	);	
	
	audio_fifo audio_fifo_right_channel_inst(
		.sc_fifo_0_clk_clk(clk),
		.sc_fifo_0_clk_reset_reset(reset),
		.sc_fifo_0_in_data(tone_generator_source_data),
		.sc_fifo_0_in_valid(tone_generator_source_valid),
		.sc_fifo_0_in_ready(audio_fifo_right_channel_sink_ready),
		.sc_fifo_0_out_data(audio_fifo_right_channel_source_data),
		.sc_fifo_0_out_valid(audio_fifo_right_channel_source_valid),
		.sc_fifo_0_out_ready(audio_controller_right_channel_sink_ready)
	);
	
	//audio clock
	audio_clock audio_clock_inst(
		.audio_pll_0_ref_clk_clk(clk),
		.audio_pll_0_ref_reset_reset(reset),
		.audio_pll_0_audio_clk_clk(AUD_XCK)
	);
	
	//audio config
	audio_config audio_config_inst(
		.audio_and_video_config_0_clk_clk(clk),
		.audio_and_video_config_0_reset_reset(reset),
		.audio_and_video_config_0_external_interface_SCLK(FPGA_I2C_SCLK),
		.audio_and_video_config_0_external_interface_SDAT(FPGA_I2C_SDAT)
	);
	
	//audio controller
	audio_controller audio_controller_inst(
		.audio_0_clk_clk(clk),
		.audio_0_reset_reset(reset),
		.audio_0_avalon_left_channel_sink_data(audio_fifo_left_channel_source_data),
		.audio_0_avalon_left_channel_sink_valid(audio_fifo_left_channel_source_valid),
		.audio_0_avalon_left_channel_sink_ready(audio_controller_left_channel_sink_ready),
		.audio_0_avalon_right_channel_sink_data(audio_fifo_right_channel_source_data),
		.audio_0_avalon_right_channel_sink_valid(audio_fifo_right_channel_source_valid),
		.audio_0_avalon_right_channel_sink_ready(audio_controller_right_channel_sink_ready),
		.audio_0_external_interface_BCLK(AUD_BCLK),
		.audio_0_external_interface_DACDAT(AUD_DACDAT),
		.audio_0_external_interface_DACLRCK(AUD_DACLRCK)
	);
	
	
endmodule
