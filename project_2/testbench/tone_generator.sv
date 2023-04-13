module tone_generator
#(parameter NOTE = 9, OCTAVE = 5, VOLUME = 10)
(
   input  logic        clk,
   input  logic        reset,
   input  logic        sink_ready,
   output logic [15:0] sample,
   output logic        sample_valid
);

   typedef logic [11:0] sample_count_t;
   typedef logic [23:0] note_count_t;

   localparam real CLK_FREQ                   = 50000000.0;
   localparam real SAMPLE_FREQ                = 48000.0;
   localparam sample_count_t SAMPLE_CLK_COUNT = sample_count_t'(CLK_FREQ / SAMPLE_FREQ);

   localparam note_count_t NOTE_CLK_COUNTS [12] = '{
      note_count_t'(CLK_FREQ / 16.35),
      note_count_t'(CLK_FREQ / 17.32),
      note_count_t'(CLK_FREQ / 18.35),
      note_count_t'(CLK_FREQ / 19.45),
      note_count_t'(CLK_FREQ / 20.60),
      note_count_t'(CLK_FREQ / 21.83),
      note_count_t'(CLK_FREQ / 23.12),
      note_count_t'(CLK_FREQ / 24.50),
      note_count_t'(CLK_FREQ / 25.96),
      note_count_t'(CLK_FREQ / 27.50),
      note_count_t'(CLK_FREQ / 29.14),
      note_count_t'(CLK_FREQ / 30.87)
   };

   localparam note_count_t NOTE_CLK_COUNT = NOTE_CLK_COUNTS[NOTE] >> OCTAVE;
	
	
   logic [31:0] accumulator;
   logic        square_wave;
   logic [23:0] note_count;
   logic [11:0] sample_count;

	always_ff @(posedge clk, posedge reset) begin
		if (reset) begin
			accumulator <= 0;
         square_wave <= 0;
         note_count  <= NOTE_CLK_COUNT;
         sample_count <= 0;
			sample       <= accumulator[15:0];
			sample_valid <= (sample_count == SAMPLE_CLK_COUNT) ? 1 : 0;
      end else if (sink_ready) begin
         if (sample_count == SAMPLE_CLK_COUNT) begin
				sample_count <= 0;
				square_wave <= ~square_wave;
				accumulator <= square_wave ? VOLUME : -VOLUME;
			end else begin
				sample_count <= sample_count + 1;
			end
			note_count <= note_count - 1;
			if (note_count == 0) begin
				note_count <= NOTE_CLK_COUNT;
			end
			sample       <= accumulator[15:0];
			sample_valid <= (sample_count == SAMPLE_CLK_COUNT) ? 1 : 0;
		end
	end
	
   assert property (@(posedge clk) ($rose(reset) | $stable(NOTE)) & (NOTE >= 0 && NOTE <= 11));

   assert property (@(posedge clk) ($rose(reset) | $stable(VOLUME)) & (VOLUME >= 0 && VOLUME <= 15));

   assert property (@(posedge clk) ($rose(reset) | $stable(OCTAVE)) & (OCTAVE >= 0 && OCTAVE <= 7));

   assert property (@(posedge clk) (!$rose(reset)) & $stable(accumulator) & (accumulator <= 32767 && accumulator >= -32768));

   assert property (@(posedge clk) (!$rose(reset)) & ($stable(note_count) && (note_count >= 0)));

endmodule


`timescale 1ns / 1ps
module tone_generator_tb1;
   // Inputs
   logic clk, reset, sink_ready;
   
   // Outputs
   logic [15:0] sample;
   logic sample_valid;
   
   // Instantiate the unit under test (UUT)
   tone_generator #(.NOTE(9), .OCTAVE(5), .VOLUME(10)) uut (
      .clk(clk),
      .reset(reset),
      .sink_ready(sink_ready),
      .sample(sample),
      .sample_valid(sample_valid)
   );

   parameter clk_period = 10;
	// Reset generation
	initial begin
		clk = 0;
      reset = 0;
	end	
   // Clock generation
	always #(clk_period)  clk = ~clk;

   // Test the tone_generator in isolation with the sink_ready input tied high.
   initial begin
      reset = 1;
      #100;
      reset = 0;
      sink_ready = 1;
      #100000;
   end

endmodule


module tone_generator_tb1;
   // Inputs
   logic clk, reset, sink_ready;
   logic audio_controller_sink_ready;
   
   // Outputs
   logic [15:0] sample, audio_fifo_source_data;
   logic sample_valid, audio_fifo_source_valid;
   
   // Instantiate the unit under test (UUT)
   tone_generator #(.NOTE(9), .OCTAVE(5), .VOLUME(10)) uut (
      .clk(clk),
      .reset(reset),
      .sink_ready(sink_ready),
      .sample(sample),
      .sample_valid(sample_valid)
   );

   audio_fifo audio_fifo_left_channel_inst(
		.sc_fifo_0_clk_clk(clk),
		.sc_fifo_0_clk_reset_reset(reset),
		.sc_fifo_0_in_data(sample),
		.sc_fifo_0_in_valid(sample_valid),
		.sc_fifo_0_in_ready(sink_ready),
		.sc_fifo_0_out_data(audio_fifo_source_data),
		.sc_fifo_0_out_valid(audio_fifo_source_valid),
		.sc_fifo_0_out_ready(audio_controller_sink_ready)
	);	

   parameter clk_period = 10;
	// Reset generation
	initial begin
		clk = 0;
      reset = 0;
	end	
   // Clock generation
	always #(clk_period)  clk = ~clk;

   // Test the tone_generator in isolation with the sink_ready input tied high.
   initial begin
      reset = 1;
      #100;
      reset = 0;
      audio_controller_sink_ready = 1;
      #1000000;
   end

endmodule