module audio_codec
(
   //////////// Audio //////////
   // input  logic               AUD_ADCDAT,
   // inout  logic               AUD_ADCLRCK,
   input  logic               AUD_BCLK,
   output logic               AUD_DACDAT,
   input  logic               AUD_DACLRCK,
   output logic               AUD_XCK,

   //////////// CLOCK //////////
   // input  logic               CLOCK2_50,
   // input  logic               CLOCK3_50,
   // input  logic               CLOCK4_50,
   input  logic               CLOCK_50,

   //////////// I2C for Audio and Video-In //////////
   output                     FPGA_I2C_SCLK,
   input                      FPGA_I2C_SDAT,

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
	logic clk;
	logic [1:0] reset_intc;
	logic reset;
	logic play_toggle;
	logic change_note;
	logic ref_reset;
	logic reset_source;
	logic [1:0] address;
	logic [2:0] byteenable;
	logic read_r_ready;
	logic read_l_ready;
	logic write_l_ready;
	logic write_r_ready;
	logic [31:0] writedata;
	logic [31:0] readdata;
	logic waitrequest;
	logic adc_lc_valid;
	logic adc_rc_valid;
	logic sample_valid;
	logic sink_ready;
	logic [15:0] data;
	logic [9:0] usedw;
	logic empty;
	logic full;

//=======================================================
//  Structural coding
//=======================================================

   assign clk = CLOCK_50;
	
	//reset debopuce module for button KEY[0]
	// Define the first flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_intc[0] <= KEY[0];

	// Define the second flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_intc[1] <= reset_intc[0];

	// Define the output flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset <= reset_intc[1];


   // Instantiate the Audio Clock for DE-series Boards module with the appropriate parameters.
   audio_clock audio_clock_inst (
      .ref_clk_clk(clk),
      .ref_reset_reset(ref_reset),
      .audio_clk_clk(AUD_XCK),
		.reset_source_reset(reset_source)
   );
	
		
	// Instantiate the Audio and Audio Video Config modules using the Quartus Platform Designer tool.
   audio_config audio_config_inst (
      .clk(clk),//i
      .reset(reset),//i
      .address(address), //i 1
      .byteenable(byteenable),//i 3
      .read(read_r_ready && read_l_ready),//i
      .write(write_l_ready && write_r_ready),//i
      .writedata(writedata),//i 31
      .readdata(readdata),//o 31
		.waitrequest(waitrequest),//o
		.I2C_SDAT(FPGA_I2C_SDAT),//o
  		.I2C_SCLK(FPGA_I2C_SCLK)//o
   );

	
	audio_controller audio_controller_inst (
      .clk(clk),//i
      .reset(reset),//i
		.to_dac_left_channel_data(writedata),//i 15
		.to_dac_left_channel_valid(sample_valid),//i
		.to_dac_left_channel_ready(write_l_ready),//o
		.to_dac_right_channel_data(writedata),//i 15
		.to_dac_right_channel_valid(sample_valid),//i
		.to_dac_right_channel_ready(write_r_ready),//o
		.AUD_BCLK(AUD_BCLK),//i
		.AUD_DACDAT(AUD_DACDAT),//o
  		.AUD_DACLRCK(AUD_DACLRCK)//i
   );
	

   // Instantiate the Avalon-ST Single Clock FIFO module with the appropriate parameters.
   audio_fifo fifo_inst (
      .clock(clk),//i
      .data(source_data),//i 15
      .rdreq(write_l_ready && write_r_ready),//i
      .wrreq(sample_valid),//i
		.sclr(reset),//i
      .empty(empty),//o
      .full(full),//o
      .q(writedata),//o 15
		.usedw(usedw)//o 9
   );

	
   // Instantiate the tone_generator module with the ready/valid handshake protocol.
	assign sink_ready = !full;
	//#(parameter NOTE = 9, OCTAVE = 5, VOLUME = 10)
   tone_generator tone_generator_inst (
      .sink_ready(sink_ready),
      .sample_valid(sample_valid),
      .sample(source_data),
      .clk(clk),
      .reset(reset)
   );
	

   // Create at least 5 concurrent assertions for the tone_generator module.
   assert property (@(posedge clk) (source_valid == 1'b1) & (source_data != 16'h0));
   assert property (@(posedge clk) (source_valid == 1'b0) & (source_data == 16'h0));
   //assert property @(posedge clk) (sink_ready == 1'b1) & (source_data != 16'h0);
   assert property (@(posedge clk) (sink_ready == 1'b0) & (source_data == 16'h0));
   assert property (@(posedge clk) ($rose(sink_ready) & $stable(source_data)));


endmodule



`timescale 1ns/1ps

module audio_codec_tb;

    // Inputs
    reg AUD_BCLK;
    reg AUD_DACLRCK;
    reg CLOCK_50;
    reg [3:0] KEY;

    // Outputs
    wire AUD_DACDAT;
    wire AUD_XCK;
    wire FPGA_I2C_SCLK;
    wire FPGA_I2C_SDAT;
    wire [15:0] data;

    // Instantiate the audio_codec module
    audio_codec audio_codec_inst (
        .AUD_BCLK(AUD_BCLK),
        .AUD_DACDAT(AUD_DACDAT),
        .AUD_DACLRCK(AUD_DACLRCK),
        .AUD_XCK(AUD_XCK),
        .CLOCK_50(CLOCK_50),
        .FPGA_I2C_SCLK(FPGA_I2C_SCLK),
        .FPGA_I2C_SDAT(),
        .KEY(KEY)
    );

    // Drive inputs
    initial begin
        AUD_BCLK = 0;
        AUD_DACLRCK = 0;
        CLOCK_50 = 0;
        KEY = 4'b0000;

        // Wait for 100 ns to allow the audio_codec module to stabilize
        #100;

        // Generate a tone
        AUD_BCLK = 1;
        AUD_DACLRCK = 1;
        CLOCK_50 = 1;

        repeat (10000) begin
            #10;
            CLOCK_50 = ~CLOCK_50;
            AUD_BCLK = ~AUD_BCLK;
            AUD_DACLRCK = ~AUD_DACLRCK;
            data = 16'h7FFF; // set data to max volume
        end
    end

endmodule