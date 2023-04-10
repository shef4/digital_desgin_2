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
	
	sample_count_t sample_count = 0;
   note_count_t note_count = 0;
   logic square_wave = 0;
   logic square_wave_toggle = 0;
   
   always_ff @(posedge clk, posedge reset)
   begin
      if (reset) begin
         sample_count <= 0;
         note_count <= 0;
         square_wave <= 0;
         square_wave_toggle <= 0;
         sample_valid <= 0;
      end
      else if (sink_ready) begin
         sample_count <= sample_count + 1;
         if (sample_count == SAMPLE_CLK_COUNT) begin
            sample_count <= 0;
            square_wave_toggle <= ~square_wave_toggle;
            square_wave <= square_wave_toggle;
            note_count <= note_count + NOTE_CLK_COUNT;
            if (note_count >= 1<<24) begin
               note_count <= note_count - (1<<24);
            end
            sample <= square_wave ? VOLUME : 0;
            sample_valid <= 1;
         end
      end
      else begin
         sample_count <= 0;
         sample <= 0;
         sample_valid <= 0;
      end
   end
   
   // Assertions
   assert property (@(posedge clk) disable iff (reset) (!$fell(sink_ready) || !$changed(sample_valid))) (sample_valid == 1'b1);
   assert property (@(posedge clk) disable iff (reset) (!$fell(sink_ready))) (square_wave_toggle == 1'b1);
   assert property (@(posedge clk) disable iff (reset) (!$fell(sink_ready))) (note_count == NOTE_CLK_COUNT);
   assert property (@(posedge clk) disable iff (reset) (!$fell(sink_ready))) (sample == VOLUME || sample == 0);
   assert property (@(posedge clk) disable iff (reset) (!$fell(sink_ready))) (!$past(sample_valid) || !$past(square_wave_toggle) || !$past(note_count)) begin
		$error("Tone generator assertion failed");
	end

endmodule


`timescale 1ns / 1ps

module tone_generator_tb;

   // Parameters
   parameter REAL CLK_PERIOD = 20.0;
   parameter REAL SIM_TIME = 2000.0;

   // Inputs
   logic clk;
   logic reset;
   logic sink_ready;

   // Outputs
   logic [15:0] sample;
   logic sample_valid;

   // Instantiate the DUT
   tone_generator dut (
      .clk(clk),
      .reset(reset),
      .sink_ready(sink_ready),
      .sample(sample),
      .sample_valid(sample_valid)
   );

   // Clock generation
   initial clk = 0;
   always #(CLK_PERIOD / 2) clk = ~clk;

   // Reset generation
   initial begin
      reset = 1;
      #500;
      reset = 0;
   end

   // Stimulus generation
   initial begin
      sink_ready = 1;
      #1000;
      sink_ready = 0;
      #SIM_TIME;
      $finish;
   end

   // Assertions
   // Assert that the tone is generated correctly
   assert property (@(posedge clk) disable iff (reset) (sample_valid === 1'b1) |=> sample == (dut.square_wave ? dut.VOLUME : 0)) else $error("Tone is not generated correctly");

   // Assert that the square wave is toggling
   assert property (@(posedge clk) disable iff (reset) (sample_valid === 1'b1) |=> dut.square_wave_toggle === ~$past(dut.square_wave_toggle)) else $error("Square wave is not toggling");

   // Assert that the note count is incremented correctly
   assert property (@(posedge clk) disable iff (reset) (sample_valid === 1'b1) |=> dut.note_count === $past(dut.note_count) + dut.NOTE_CLK_COUNT) else $error("Note count is not incremented correctly");

   // Assert that sample_valid is asserted correctly
   assert property (@(posedge clk) disable iff (reset) $fell(sink_ready) |=> sample_valid === 1'b1) else $error("Sample_valid is not asserted correctly");

   // Assert that tone_generator assertion failed
   assert (!dut.$root_tone_generator.assertion_failed) else $error("tone_generator assertion failed");

endmodule