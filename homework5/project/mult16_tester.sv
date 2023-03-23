

module mult16_tester(
    input         CLOCK_50, 
    input  [2:0]  KEY, 
    output [6:0]  HEX5, 
    output [6:0]  HEX4,
    output [6:0]  HEX3, 
    output [6:0]  HEX2, 
    output [6:0]  HEX1, 
    output [6:0]  HEX0
);

    reg 			 clock;
    wire [31:0] test_result, gold_result;
    wire        match,busy, begin_test, inject_error;
    wire        test_mult_start;
	logic 		reset;
	logic [1:0] reset_int;
	logic [4:0] status_out;
	logic [15:0] opA, opB;
    

    
    // button debouncing and edge detection
	// Define the first flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_int[0] <= KEY[0];

	// Define the second flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset_int[1] <= reset_int[0];

	// Define the output flip-flop stage
	always_ff @(posedge CLOCK_50)
		reset <= reset_int[1];
		
	// clock divider to generate 1Hz clock
	always @(posedge CLOCK_50) begin
        if (!reset) begin
            clock <= 0;
        end else if (clock) begin
            clock <= 0;
        end else begin
            clock <= 1;
        end
   end

											
	button start_debounce(  .clock(clock), 
							.reset(reset), 
							.button_in(KEY[1]), 
							.pulse_out(begin_test));
											
	button error_debounce( 	.clock(clock), 
							.reset(reset), 
							.button_in(KEY[1]), 
							.pulse_out(inject_error));
    
    // status module to output the status register to the HEX displays
    status status_inst(	.clock(CLOCK_50), .reset_n(reset),
					   	.begin_test(begin_test), .inject_error(inject_error),
					   	.busy(busy),.results_match(match),
						.status_out(status_out), 
						.opA(opA), .opB(opB),
						.test_mult_start(test_mult_start));
							  
    // test multiplier to calculate product of A and B
    test_mult test_mult_inst(.clk(clock),.reset_n(reset),.start(test_mult_start),
							.a(opA), .b(opB),
							.busy(busy),.result(test_result));
    
    // gold standard multiplier to calculate product of A and B
    gold_mult gold_mult_inst(.a(opA),.b(opB),.result(gold_result));
    
    // comparator to check if the test multiplier matches the gold multiplier
    compare compare_inst(.test_result(test_result), .gold_result(gold_result),.match(match));
    
    // output the status register to the HEX displays
	seg_disp seg_disp_inst5(.clock(clock),.num(status_out),.seg(HEX5));
	seg_disp seg_disp_inst4(.clock(clock),.num(status_out),.seg(HEX4));
	seg_disp seg_disp_inst3(.clock(clock),.num({1'b0,opA[15:12]}),.seg(HEX3));
	seg_disp seg_disp_inst2(.clock(clock),.num({1'b0,opA[11:8]}),.seg(HEX2));
	seg_disp seg_disp_inst1(.clock(clock),.num({1'b0,opB[15:12]}),.seg(HEX1));
	seg_disp seg_disp_inst0(.clock(clock),.num({1'b0,opB[11:8]}),.seg(HEX0));
		  
endmodule


