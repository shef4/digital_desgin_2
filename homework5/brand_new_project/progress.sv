// progress module

// TODO: This module should output the progress of the test in binary format. The output should be 0 if the test is not yet started or has completed successfully. If there is an error, it should output the values of a and b that caused the error.

module progress(
input  logic         clock,
input  logic         reset_n,
input logic  	      enable,
output logic         input_set,
output logic [15:0]  a,
output logic [15:0]  b,
output logic         overflow
);
  logic 			input_set_delay;
  logic 	      enable_count;
  logic [31:0] count;
  
	// test multiplier to calculate product of A and B
	counter counter_inst(
	.clk(clock),
	.reset_n(reset_n),
	.enable(enable),
	.count(count),
	.overflow(overflow)
	);


  always @(posedge clock) begin
      if (!reset_n) begin
			 input_set <= '0;
          a <= '0;
          b <= '0;
      end else if (enable) begin
		    input_set_delay <= '1;
      end else if (input_set_delay) begin
			 input_set_delay <= '0;
			 input_set <= '1;
          a <= count[31:16];
          b <= count[15:0];
		end else begin
			 input_set_delay <= '0;
			 input_set <= '0;
		end
  end
endmodule
