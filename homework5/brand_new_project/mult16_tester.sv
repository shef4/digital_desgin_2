module mult16_tester 
#(
  parameter    HEX_0 = 7'b100_0000      , parameter    HEX_1 = 7'b111_1001, 
  parameter    HEX_2 = 7'b010_0100      , parameter    HEX_3 = 7'b011_0000, 
  parameter    HEX_4 = 7'b001_1001      , parameter    HEX_5 = 7'b001_0010,
  parameter    HEX_6 = 7'b000_0010      , parameter    HEX_7 = 7'b100_1110, 
  parameter    HEX_8 = 7'b000_0000      , parameter    HEX_9 = 7'b001_0000, 
  parameter    HEX_A = 7'b000_1000      , parameter    HEX_B = 7'b000_0011,
  parameter    HEX_C = 7'b100_0110      , parameter    HEX_D = 7'b010_0001, 
  parameter    HEX_E = 7'b000_0110      , parameter    HEX_F = 7'b000_1110, 
  parameter    HEX_S = 7'b001_0010      , parameter    HEX_P = 7'b000_1100, 
  parameter    IDLE = 4'd0              , parameter    START = 4'd1       , 
  parameter    SET_NEW_INPUT = 4'd2     , parameter    TEST_NEW_INPUT = 4'd3   , parameter    TEST_PROCESSING = 4'd4, 
  parameter    TEST_PASSED = 4'd5       , parameter    TEST_FAILED = 4'd6 , 
  parameter    UPDATE_INPUTS = 4'd7     , parameter    TEST_COMPLETE = 4'd8
 )
(
    input  logic         CLOCK_50,
    input  logic  [2:0]  KEY,
    output logic  [6:0]  HEX5, 
    output logic  [6:0]  HEX4,
    output logic  [6:0]  HEX3, 
    output logic  [6:0]  HEX2, 
    output logic  [6:0]  HEX1, 
    output logic  [6:0]  HEX0
);
	logic 	   	enable_progress;
	logic 	   	enable_mult;
	logic          overflow;
	logic          busy;
	logic          match;
	logic 			inject_error;
	logic 			begin_test;
	logic 			input_set;
	logic				outclk_0;
	logic				locked;
	logic 			reset_clock;
	logic 			reset_n;
	logic [1:0] 	reset_int;
	logic [1:0] 	reset_intc;
	logic [15:0] 	a;
	logic [15:0] 	b;
	logic [31:0]   test_result;
	logic [31:0]   gold_result;
	logic [3:0] 	state;
	logic [6:0]		segA1;
	logic [6:0]		segA2;
	logic [6:0]		segB1;
	logic [6:0]		segB2;
	
		// Define the first flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_intc[0] <= KEY[0];

	// Define the second flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_intc[1] <= reset_intc[0];

	// Define the output flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_clock <= reset_intc[1];
		
	clock_doubler clock_doubler_inst(
	.refclk(CLOCK_50),
	.rst(reset_clock),
	.outclk_0(outclk_0),
	.locked(locked)
	);
	
    
   // button debouncing and edge detection
	// Define the first flip-flop stage
	always_ff @(posedge outclk_0)
		reset_int[0] <= (!KEY[0] || !locked);

	// Define the second flip-flop stage
	always_ff @(posedge outclk_0)
		reset_int[1] <= reset_int[0];

	// Define the output flip-flop stage
	always_ff @(posedge outclk_0)
		reset_n <= reset_int[1];
		
	button start_debounce(outclk_0, !KEY[1], begin_test);
	button error_debounce(outclk_0, !KEY[2], inject_error);
		
	// status module to output the status register to the HEX displays
	control control_inst(
	.clock(outclk_0),
	.reset_n(reset_n),
	.begin_test(begin_test),
	.inject_error(inject_error),
	.overflow(overflow),
	.match(match),
	.busy(busy),
	.input_set(input_set),
	.state(state),
	.enable_mult(enable_mult),
	.enable_progress(enable_progress)
	);
	
	// progress inputs values for multiplier
	progress progress_inst(
	.clock(outclk_0),
	.reset_n(reset_n),
	.enable(enable_progress),
	.input_set(input_set),
	.a(a),
	.b(b),
	.overflow(overflow)
	);
	
	
	// test multiplier to calculate product of A and B
	test_mult test_mult_inst(
	.clk(outclk_0),
	.reset_n(reset_n),
	.start(enable_mult),
	.a(a),
	.b(b),
	.result(test_result),
	.busy(busy)
	);

	// gold standard multiplier to calculate product of A and B
	gold_mult gold_mult_inst(
	.a(a),
	.b(b),
	.result(gold_result)
	);

	// comparator to check if the test multiplier matches the gold multiplier
	compare compare_inst(
	.test_result(test_result),
	.gold_result(gold_result),
	.match(match)
	);
	
	//encoder to map input A to 7 segment LED display value
	seg_disp seg_disp_A(
	.num(a),
	.seg1(segA1),
	.seg2(segA2)
	);
	
	//encoder to map input B to 7 segment LED display value
	seg_disp seg_disp_B(
	.num(b),
	.seg1(segB1),
	.seg2(segB2)
	);

	//status
   // HEX display update
   always_comb begin
		 case (state)
			   IDLE: begin
               HEX5 = HEX_0;
               HEX4 = HEX_0;
               HEX3 = HEX_0;
               HEX2 = HEX_0;
               HEX1 = HEX_0;
               HEX0 = HEX_0;
            end

            START: begin
               HEX5 = HEX_S;
               HEX4 = HEX_S;
               HEX3 = segA1;
               HEX2 = segA2;
               HEX1 = segB1;
               HEX0 = segB2;
            end

            TEST_PROCESSING: begin
               HEX5 = HEX_P;
               HEX4 = HEX_P;
               HEX3 = segA1;
               HEX2 = segA2;
               HEX1 = segB1;
               HEX0 = segB2;
            end
				
				SET_NEW_INPUT: begin
               HEX5 = HEX_P;
               HEX4 = HEX_P;
               HEX3 = segA1;
               HEX2 = segA2;
               HEX1 = segB1;
               HEX0 = segB2;
            end
				
				TEST_NEW_INPUT: begin
               HEX5 = HEX_P;
               HEX4 = HEX_P;
               HEX3 = segA1;
               HEX2 = segA2;
               HEX1 = segB1;
               HEX0 = segB2;
            end
				
            TEST_FAILED: begin
               HEX5 = HEX_E;
               HEX4 = HEX_E;
               HEX3 = segA1;
               HEX2 = segA2;
               HEX1 = segB1;
               HEX0 = segB2;
            end

            TEST_COMPLETE: begin
               HEX5 = HEX_F;
               HEX4 = HEX_F;
               HEX3 = HEX_F;
               HEX2 = HEX_F;
               HEX1 = HEX_F;
               HEX0 = HEX_F;
            end

            default: begin
               HEX5 = HEX_E;
               HEX4 = HEX_E;
               HEX3 = HEX_E;
               HEX2 = HEX_E;
               HEX1 = HEX_E;
               HEX0 = HEX_E;
            end
       endcase
   end
endmodule


module mult16_tester_tb();
	// Inputs
	logic         clock;
	logic  [2:0]  KEY;
	// Outputs
   logic  [6:0]  HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;
	
	
	// Instantiate the Unit Under Test (UUT)
	mult16_tester m16_tester(clock, KEY, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
	
	parameter clk_period = 10;
	// Reset generation
	initial begin
		 clock = 0;
		 KEY = 3'b111;
	end	
	// Clock generation
	always #(clk_period)  clock = ~clock;
	
	initial begin
		 // Wait 100 ns for global reset to finish
		 #200;
		 KEY = 3'b110; // Press the reset button
		 #100;
		 KEY = 3'b111;
		 #200;
		 KEY = 3'b101; // Press the start button
		 #100;
		 KEY = 3'b111;
		 #200000;
		 $stop;
	end

endmodule