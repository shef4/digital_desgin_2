`timescale 1ns/1ps

module enum_fsm
  (
   input  logic clk,
   input  logic reset,
   input  logic [7:0] data_in [0:3],
   output logic [7:0] data_out
  );

   typedef enum logic [3:0] {S0, S1, S2, S3, XX='x} state_t;
   state_t state;
   state_t next;

   always_ff @(posedge clk) begin
      if (reset)
         state <= S0;
      else
         state <= next;
   end

   always_comb begin
      next = XX;
      unique case(state)
         S0:      next = S1;
         S1:      next = S2;
         S2:      next = S3;
         S3:      next = S0;
         default: next = XX;
      endcase
   end

   always_ff @(posedge clk) begin
      if (reset) begin
         data_out <= '0;
      end
      else begin
         unique case(next)
            S0:      data_out <= data_in[0];
            S1:      data_out <= data_in[1];
            S2:      data_out <= data_in[2];
            S3:      data_out <= data_in[3];
            default: data_out <= 'x;
         endcase
      end
   end

endmodule
