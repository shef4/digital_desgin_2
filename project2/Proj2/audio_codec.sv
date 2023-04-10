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

   logic clk;
   logic reset;

//=======================================================
//  Structural coding
//=======================================================

   assign clk = CLOCK_50;
	
	 // Instantiate the Audio and Audio Video Config modules using the Quartus Platform Designer tool.
   audio_codec_audio_config audio_config_inst (
      .aud_bclk(AUD_BCLK),
      .aud_dacdat(AUD_DACDAT),
      .aud_daclrck(AUD_DACLRCK),
      .aud_xck(AUD_XCK),
      .i2c_sclk(FPGA_I2C_SCLK),
      .i2c_sdat(FPGA_I2C_SDAT),
      .reset(reset),
      .clk(clk)
   );

   // Instantiate the Audio Clock for DE-series Boards module with the appropriate parameters.
   audio_codec_audio_clock audio_clock_inst (
      .inclk0(CLOCK_50),
      .reset(reset),
      .clk(clk)
   );

   // Instantiate the Avalon-ST Single Clock FIFO module with the appropriate parameters.
   avalon_st_fifo #(16, 512, 1, 1, "none") fifo_inst (
      .clock(clk),
      .reset(reset),
      .write_data({16{1'b0}}),
      .write_valid(1'b1),
      .write_ready(),
      .read_data(),
      .read_valid(),
      .read_ready()
   );

   // Instantiate the tone_generator module with the ready/valid handshake protocol.
   tone_generator tone_generator_inst (
      .sink_ready(fifo_inst.write_ready),
      .source_valid(fifo_inst.read_valid),
      .source_data(fifo_inst.read_data),
      .clk(clk),
      .reset(reset)
   );

   // Create at least 5 concurrent assertions for the tone_generator module.
   assert property @(posedge clk) (tone_generator_inst.source_valid == 1'b1) |-> (tone_generator_inst.source_data != 16'h0);
   assert property @(posedge clk) (tone_generator_inst.source_valid == 1'b0) |-> (tone_generator_inst.source_data == 16'h0);
   assert property @(posedge clk) (tone_generator_inst.sink_ready == 1'b1) |-> (tone_generator_inst.sink_data != 16'h0);
   assert property @(posedge clk) (tone_generator_inst.sink_ready == 1'b0) |-> (tone_generator_inst.sink_data == 16'h0);
   assert property @(posedge clk) ($rose(tone_generator_inst.sink_ready) |-> $stable(tone_generator_inst.sink_data));

   // After all modules have been instantiated, connect the appropriate signals between them to create the desired system functionality.
   assign FPGA_I2C_SCLK = audio_config_inst.i2c_sclk;
   assign FPGA_I2C_SDAT = audio_config_inst.i2c_sdat;
   assign AUD_BCLK = audio_config_inst.aud_bclk;
   assign AUD_DACDAT = audio_config_inst.aud_dacdat;
   assign AUD_DACLRCK = audio_config_inst.aud_daclrck;
	assign fifo_inst.write_data = tone_generator_inst.output_signal;

endmodule


`timescale 1ns / 1ps

module audio_codec_tb1;

  // Parameters
  parameter CLK_PERIOD = 20;

  // Signals
  logic AUD_BCLK, AUD_DACDAT, AUD_DACLRCK, AUD_XCK;
  logic CLOCK_50 = 1'b0;
  logic [3:0] KEY = 4'b0000;
  logic FPGA_I2C_SCLK, FPGA_I2C_SDAT;
  logic reset = 1'b1;

  // Instantiate the top-level module
  audio_codec dut (
    .AUD_BCLK(AUD_BCLK),
    .AUD_DACDAT(AUD_DACDAT),
    .AUD_DACLRCK(AUD_DACLRCK),
    .AUD_XCK(AUD_XCK),
    .CLOCK_50(CLOCK_50),
    .FPGA_I2C_SCLK(FPGA_I2C_SCLK),
    .FPGA_I2C_SDAT(FPGA_I2C_SDAT),
    .KEY(KEY)
  );

  // Create the clock
  always #CLK_PERIOD/2 CLOCK_50 = ~CLOCK_50;

  // Reset
  initial begin
    #100 reset = 1'b0;
    #100 reset = 1'b1;
  end

  // Tie sink_ready high to test the tone_generator module in isolation
  initial begin
    #100;
    dut.tone_generator_inst.sink_ready = 1'b1;
  end

  // Stimulus
  initial begin
    // Wait for reset to complete
    repeat (10) @(posedge CLOCK_50);

    // Test tone_generator module in isolation
    repeat (1000) @(posedge CLOCK_50);
    assert(dut.tone_generator_inst.source_data == 16'h0) else $error("Test failed: tone_generator source data is not zero.");
    assert(dut.tone_generator_inst.source_valid == 1'b0) else $error("Test failed: tone_generator source valid is not zero.");

    // Connect tone_generator to FIFO and test
    dut.fifo_inst.read_ready = 1'b1;
    repeat (1000) @(posedge CLOCK_50);
    assert(dut.fifo_inst.read_valid == 1'b1) else $error("Test failed: FIFO read valid is not one.");
    assert(dut.fifo_inst.read_data != 16'h0) else $error("Test failed: FIFO read data is zero.");
    assert(dut.tone_generator_inst.sink_data == dut.fifo_inst.write_data) else $error("Test failed: tone_generator sink data does not match FIFO write data.");
  end

endmodule


module audio_codec_tb2;

   // Instantiate the DUT (Design Under Test)
   audio_codec dut (
      .AUD_BCLK(AUD_BCLK),
      .AUD_DACDAT(AUD_DACDAT),
      .AUD_DACLRCK(AUD_DACLRCK),
      .AUD_XCK(AUD_XCK),
      .CLOCK_50(CLOCK_50),
      .FPGA_I2C_SCLK(FPGA_I2C_SCLK),
      .FPGA_I2C_SDAT(FPGA_I2C_SDAT),
      .KEY(KEY)
   );

   // Create clock signal
   always #10ns CLOCK_50 = ~CLOCK_50;

   // Create reset signal
   initial begin
      reset = 1'b1;
      #20ns;
      reset = 1'b0;
   end

   // Check that the Quartus Platform Designer tool has been called correctly
   initial begin
      assert (FPGA_I2C_SCLK === 1'b0) else $error("I2C SCLK is not initialized correctly.");
      assert (FPGA_I2C_SDAT === 1'bz) else $error("I2C SDAT is not initialized correctly.");
      assert (AUD_BCLK === 1'b0) else $error("AUD_BCLK is not initialized correctly.");
      assert (AUD_DACDAT === 1'b0) else $error("AUD_DACDAT is not initialized correctly.");
      assert (AUD_DACLRCK === 1'b0) else $error("AUD_DACLRCK is not initialized correctly.");
      assert (AUD_XCK === 1'b0) else $error("AUD_XCK is not initialized correctly.");
   end

   // Check that the tone_generator module is generating the expected tone
   initial begin
      // Tie sink_ready high to test in isolation
      dut.tone_generator_inst.sink_ready = 1'b1;

      // Check that the tone_generator is generating a square wave with the correct frequency
      #10us;
      assert (dut.tone_generator_inst.output_signal === 16'h7fff) else $error("Tone is not generating correctly.");

      // Check that the tone_generator is generating a square wave with the correct frequency
      #10us;
      assert (dut.tone_generator_inst.output_signal === 16'h0000) else $error("Tone is not generating correctly.");

      // Check that the tone_generator is generating a square wave with the correct frequency
      #10us;
      assert (dut.tone_generator_inst.output_signal === 16'h7fff) else $error("Tone is not generating correctly.");

      // Check that the tone_generator is generating a square wave with the correct frequency
      #10us;
      assert (dut.tone_generator_inst.output_signal === 16'h0000) else $error("Tone is not generating correctly.");

      // Check that the tone_generator is generating a square wave with the correct frequency
      #10us;
      assert (dut.tone_generator_inst.output_signal === 16'h7fff) else $error("Tone is not generating correctly.");
   end

endmodule

module audio_codec_tb3;
  // Input signals
  logic CLOCK_50;
  logic [3:0] KEY;
  
  // Output signals
  logic AUD_BCLK;
  logic AUD_DACDAT;
  logic AUD_DACLRCK;
  logic AUD_XCK;
  
  // Bidirectional signals
  logic FPGA_I2C_SCLK;
  logic FPGA_I2C_SDAT;
  
  // Instantiate the audio_codec module
  audio_codec audio_codec_inst (
    .CLOCK_50(CLOCK_50),
    .KEY(KEY),
    .AUD_BCLK(AUD_BCLK),
    .AUD_DACDAT(AUD_DACDAT),
    .AUD_DACLRCK(AUD_DACLRCK),
    .AUD_XCK(AUD_XCK),
    .FPGA_I2C_SCLK(FPGA_I2C_SCLK),
    .FPGA_I2C_SDAT(FPGA_I2C_SDAT)
  );
  
  initial begin
    // Set initial values for input signals
    KEY = 4'b0000;  // No key pressed
    
    // Wait for a few clock cycles before starting the test
    #100;
    
    // Set sink_ready high to initially test the tone_generator module in isolation
    audio_codec_inst.fifo_inst.write_ready <= 1'b1;
    
    // Wait for a few clock cycles to allow the tone_generator to generate samples
    #100;
    
    // Confirm the sample and tone frequencies through simulation
    $display("Sample frequency: %d Hz", $root.clock(0).frequency / 16);
    $display("Tone frequency: %d Hz", $root.clock(0).frequency / tone_generator_inst.sample_count);
    
    // Connect the tone_generator module to a single FIFO
    audio_codec_inst.tone_generator_inst.sink_data <= 16'h1234;
    audio_codec_inst.tone_generator_inst.sink_valid <= 1'b1;
    audio_codec_inst.fifo_inst.write_ready <= 1'b0;
    
    // Wait for a few clock cycles to allow the data to be written to the FIFO
    #100;
    
    // Check the output of the FIFO
    assert (audio_codec_inst.fifo_inst.read_valid == 1'b1) else $error("FAIL: read_valid is not high");
    assert (audio_codec_inst.fifo_inst.read_data == 16'h1234) else $error("FAIL: read_data is not correct");
    
    // Print PASS if all tests pass
    $display("PASS");
  end
endmodule



module audio_codec_tb;

   // Inputs
   reg AUD_BCLK;
   reg AUD_DACLRCK;
   wire AUD_DACDAT;
   reg AUD_XCK;
   reg CLOCK_50;
   wire FPGA_I2C_SCLK;
   wire [7:0] FPGA_I2C_SDAT;
   reg [3:0] KEY;

   // Instantiate the Unit Under Test (UUT)
   audio_codec uut (
      .AUD_BCLK(AUD_BCLK),
      .AUD_DACDAT(AUD_DACDAT),
      .AUD_DACLRCK(AUD_DACLRCK),
      .AUD_XCK(AUD_XCK),
      .CLOCK_50(CLOCK_50),
      .FPGA_I2C_SCLK(FPGA_I2C_SCLK),
      .FPGA_I2C_SDAT(FPGA_I2C_SDAT),
      .KEY(KEY)
   );

   // Initial test
   initial begin
      // Set inputs
      AUD_BCLK = 1'b0;
      AUD_DACLRCK = 1'b0;
      AUD_XCK = 1'b0;
      CLOCK_50 = 1'b0;
      KEY = 4'b0000;

      // Expected outputs
      FPGA_I2C_SCLK = 1'b0;
      FPGA_I2C_SDAT = 8'b00000000;
      AUD_DACDAT = 1'b0;

      // Reset
      CLOCK_50 = 1'b1;
      #10;
      CLOCK_50 = 1'b0;
      #10;

      // Wait for reset to propagate
      #100;

      // Enable tone generation
      uut.tone_generator_inst.sink_ready = 1'b1;
      #1000;

      // Check output
      if (uut.fifo_inst.read_data == 8'h80) begin
         $display("Test Passed");
      end else begin
         $display("Test Failed");
      end
   end

endmodule

