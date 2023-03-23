// progress module

// TODO: This module should output the progress of the test in binary format. The output should be 0 if the test is not yet started or has completed successfully. If there is an error, it should output the values of a and b that caused the error.

module progress(
input clk,
input reset_n,
input a,
input b,
input error,
output reg [7:0] progress_a,
output reg [7:0] progress_b
);

  always @(posedge clk)
  begin
      if (!reset_n)
      begin
          progress_a <= 0;
          progress_b <= 0;
      end
      else if (error)
      begin
          progress_a <= a;
          progress_b <= b;
      end
      else
      begin
          progress_a <= 0;
          progress_b <= 0;
      end
  end
endmodule
