`timescale 1ns/1ps

module mult_tb;
   localparam N = 16;
   logic clk;
   logic reset_n;
   logic start;
   logic [N-1:0] a;
   logic [N-1:0] b;
   logic [N*2-1:0] product;
   logic busy;
   mult #(.N(N)) mult0(.clk(clk),
                     .reset_n(reset_n),
                     .start(start),
                     .a(a),
                     .b(b),
                     .product(product),
                     .busy(busy)
                     );

   always #10 clk = ~clk;
   // excusetivly test 16-bit multiplication with a for loop
   initial begin
      reset_n = 0;
      start = 0;
      a = 0;
      b = 0;
      #10;
      reset_n = 1;
      #10;

      $display("Start 8-bit Test ...");
      for (a = 0; a < 2**(N/2); a = a + 1) begin
         for (b = 0; b < 2**(N/2); b = b + 1) begin
            start = 1;
            #10;
            start = 0;
            #10;
            assert (product == (a*b)) 
            else $display(" %d * %d = %d, but product = %d", a, b, a * b, product);
            #10;
         end
      end
      $display("8-bit Test passed");

      #10;
      reset_n = 1;
      #10;

      $display("Start 16-bit Test ...");
      for (a = 0; a < 2**N; a = a + 1) begin
         for (b = 0; b < 2**N; b = b + 1) begin
            start = 1;
            #10;
            start = 0;
            #10;
            assert (product == (a*b)) 
            else $display(" %d * %d = %d, but product = %d", a, b, a * b, product);
            #10;
         end
      end
      $display("16-bit Test passed");

      #10;
      reset_n = 1;
      #10;

      $display("Start 32-bit Test ...");
      for (int i = 0; i < 100; i = i + 1) begin
         a = $urandom;
         b = $urandom;
         start = 1;
         #10;
         start = 0;
         #10;
         assert (product == (a*b)) 
         else $display(" %d * %d = %d, but product = %d", a, b, a * b, product);
         #10;
      end
      $display("32-bit Test passed");

      #10;
      $finish;
   end
   endmodule
