`timescale 1 ns/1 ns


module mult16_tester_tb;
	// Inputs
	reg         clk_enable;
	reg  [2:0]  KEY;

	// Outputs
	wire [6:0]  HEX5;
	wire [6:0]  HEX4;
	wire [6:0]  HEX3;
	wire [6:0]  HEX2;
	wire [6:0]  HEX1;
	wire [6:0]  HEX0;
	wire clock;
	
	
	clk #(20) clk1(clk_enable, clock);
	// Instantiate the Unit Under Test (UUT)
	mult16_tester uut (
		 .CLOCK_50(clock), 
		 .KEY(KEY), 
		 .HEX5(HEX5), 
		 .HEX4(HEX4), 
		 .HEX3(HEX3), 
		 .HEX2(HEX2), 
		 .HEX1(HEX1), 
		 .HEX0(HEX0)
	);

	initial begin
		 // Initialize Inputs
		 clk_enable = 1'b1;
		 KEY = 0;

		 // Wait 100 ns for global reset to finish
		 #100;

		 // Add stimulus here
		 KEY = 1; // Press the start button
		 #100;
		 KEY = 0; // Release the start button
		 #100;
		 KEY = 2;
		 #100;
		 KEY = 0;
		 #20000;

		 $finish;
	end

endmodule

module clk(clk_en, clk_out);
   input  clk_en;		// Allow clk_out to "run" when asserted.
   output clk_out;		// Enable-controlled clock output.
   reg    clk_out;		// Variable clk_out is defined procedurally.

   parameter PERIOD = 50;	// The default period of the clock.

// Set initial value for clk_out on power-up
   initial clk_out = 0;

// Produce controlled free-running clock
   always begin
      #(PERIOD/2) if(clk_en)
         clk_out = ~clk_out;
   end

endmodule