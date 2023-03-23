module seg_disp 
#(parameter    HEX_0 = 7'b100_0000  , parameter    HEX_1 = 7'b111_1001, 
  parameter    HEX_2 = 7'b010_0100  , parameter    HEX_3 = 7'b011_0000, 
  parameter    HEX_4 = 7'b001_1001  , parameter    HEX_5 = 7'b001_0010,
  parameter    HEX_6 = 7'b000_0010  , parameter    HEX_7 = 7'b100_1110, 
  parameter    HEX_8 = 7'b000_0000  , parameter    HEX_9 = 7'b001_0000, 
  parameter    HEX_A = 7'b000_1000  , parameter    HEX_B = 7'b000_0011,
  parameter    HEX_C = 7'b100_0110  , parameter    HEX_D = 7'b010_0001, 
  parameter    HEX_E = 7'b000_0110  , parameter    HEX_F = 7'b000_1110, 
  parameter    HEX_S = 7'b001_0010  , parameter    HEX_P = 7'b000_1100)
(
    input logic [15:0] num,
    output logic [6:0] seg1,
	 output logic [6:0] seg2
);

	assign seg1 = (num[15:12] == 4'd0)  ? HEX_0 :
						(num[15:12] == 4'd1)  ? HEX_1 :
						(num[15:12] == 4'd2)  ? HEX_2 :
						(num[15:12] == 4'd3)  ? HEX_3 :
						(num[15:12] == 4'd4)  ? HEX_4 :
						(num[15:12] == 4'd5)  ? HEX_5 :
						(num[15:12] == 4'd6)  ? HEX_6 :
						(num[15:12] == 4'd7)  ? HEX_7 :
						(num[15:12] == 4'd8)  ? HEX_8 :
						(num[15:12] == 4'd9)  ? HEX_9 :
						(num[15:12] == 4'd10) ? HEX_A :
						(num[15:12] == 4'd11) ? HEX_B :
						(num[15:12] == 4'd12) ? HEX_C :
						(num[15:12] == 4'd13) ? HEX_D :
						(num[15:12] == 4'd14) ? HEX_E :
						(num[15:12] == 4'd15) ? HEX_F :
						HEX_E;
						
	assign seg2 = (num[11:8]  == 4'd0)  ? HEX_0 :
						(num[11:8]  == 4'd1)  ? HEX_1 :
						(num[11:8]  == 4'd2)  ? HEX_2 :
						(num[11:8]  == 4'd3)  ? HEX_3 :
						(num[11:8]  == 4'd4)  ? HEX_4 :
						(num[11:8]  == 4'd5)  ? HEX_5 :
						(num[11:8]  == 4'd6)  ? HEX_6 :
						(num[11:8]  == 4'd7)  ? HEX_7 :
						(num[11:8]  == 4'd8)  ? HEX_8 :
						(num[11:8]  == 4'd9)  ? HEX_9 :
						(num[11:8]  == 4'd10) ? HEX_A :
						(num[11:8]  == 4'd11) ? HEX_B :
						(num[11:8]  == 4'd12) ? HEX_C :
						(num[11:8]  == 4'd13) ? HEX_D :
						(num[11:8]  == 4'd14) ? HEX_E :
						(num[11:8]  == 4'd15) ? HEX_F :
						HEX_E;
endmodule

module tb_seg_disp();
	// Inputs
	logic       clk_en,clock;
	logic [4:0] num;
	// Outputs
	logic [6:0] seg;


	// Instantiate the unit under test (UUT)
	seg_disp uut(num, seg);
	
	parameter clk_period = 10;
	// Reset generation
	initial begin
		 clock = 0;
		 num = 0;
	end

	// Clock generation
	always #(clk_period)  clock = ~clock;
	// Stimulus
	integer i;
   initial begin
       num = 0;
       // Wait for clock to stabilize
       #400;
       // Test the digits 0-9
       for (i = 0; i <= 9; i++) begin
           num = i;#100;
       end
		 #400;
       // Test the letters A-F
       for (i = 10; i <= 15; i++) begin
           num = i;#100;
       end
		 #400;
       // Test the display modes
       for (i = 16; i <= 20; i++) begin
           num = i;#100;
       end
       // End simulation
       $stop;
   end
    
endmodule
