module debounce_reset
(
   input logic  reset_raw,
   output logic reset
);

   // 1st stage
   logic reset_stage1;
   always_ff @(posedge clk) begin
      reset_stage1 <= reset_raw;
   end
   
   // 2nd stage
   always_ff @(posedge clk) begin
      if (reset_stage1 && !reset_raw)
         reset <= 1'b1;
      else if (!reset_stage1 && reset_raw)
         reset <= 1'b0;
   end

endmodule
