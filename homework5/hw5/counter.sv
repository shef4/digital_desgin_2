module counter #(parameter N = 33)  // input operand width
(  
	input  logic 			clk,
   input  logic 			reset_n,
   input  logic 			enable,
   output logic [N-2:0] count,
	output logic 			overflow
);

   logic [N-1:0] count_reg;
	
   always_ff @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         count_reg   <= '0;
         count   <= '0;
         overflow <= '0;
      end else if (enable) begin
			 count_reg<= count_reg+1;
			 if (count_reg[N-1]) begin 
				 overflow <= '1;
				 count   <= '0;
			 end else begin 
			 	 overflow <= '0;
				 count   <= count_reg[N-2:0];
          end
      end
   end
endmodule