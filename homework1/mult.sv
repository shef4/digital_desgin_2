module mult #(parameter N = 16)  // input operand width
(
   input  logic clk,
   input  logic reset_n,
   input  logic start,
   input  logic [N-1:0] a,
   input  logic [N-1:0] b,
   output logic [N*2-1:0] product,
   output logic busy
   );
	
   logic [N*2-1:0] a_reg;
   logic [N-1:0] b_reg;
   logic [$clog2(N)-1:0] i;
	
   always_ff @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         a_reg   <= '0;
         b_reg   <= '0;
         product <= '0;
         i       <= '0;
         busy    <= '0;
      end
      else begin
         if (!busy) begin
            a_reg   <= a;
            b_reg   <= b;
            product <= '0;
            i       <= '0;
            busy    <= start;
         end
         else begin

            // Version 1
            // if (b_reg[i] == 1'b1)
            //    product <= product + ({N'(0), a_reg} << i);

            // Version 2
            // Avoid variable indexing and variable-length shift
            // NEED TO ALSO MAKE a_reg THE SAME LENGTH AS THE product REGISTER
            // if (b_reg[0] == 1'b1)
            //    product <= product + a_reg;
            // a_reg <= (a_reg << 1);
            // b_reg <= (b_reg >> 1);

            // Version 3
            // Avoid 2N-bit addition
            b_reg <= (b_reg >> 1);
            product[2*N-1:0] <= {1'b0, product[2*N-1:1]};
            if (b_reg[0] == 1'b1)
               product[2*N-1:N-1] <= {1'b0, product[2*N-1:N]} + a_reg;

            busy <= (i < (N-1));
            i <= i + 1'b1;
         end
      end
   end
endmodule
