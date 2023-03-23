// compare module

// TODO: This module should compare the result of test_mult and gold_mult and output a match signal if they are equal

module compare(
input [31:0] test_mult,
input [31:0] gold_mult,
output reg match
);

  always @*
  begin
      match <= (test_mult == gold_mult);
  end

endmodule