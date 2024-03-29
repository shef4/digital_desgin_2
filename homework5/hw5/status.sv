module status
#(parameter    IDLE = 3'd0, parameter    START = 3'd1, 
  parameter    SET_INPUTS = 3'd2, parameter    TEST_PROCESSING = 3'd3, 
  parameter    TEST_PASSED = 3'd4, parameter    TEST_FAILED = 3'd5, 
  parameter    UPDATE_INPUTS = 3'd6, parameter    TEST_COMPLETE = 3'd7)
(
    input  logic          clock,
    input  logic          reset_n,
    input  logic          begin_test,
    input  logic          inject_error,
    output logic [2:0]   state,
	 output logic [15:0]   a, 
	 output logic [15:0]   b
);

    // FSM signals
    logic [2:0]   next_state;
	 logic 	   	enable_count;
	 logic 	   	enable_mult;
	 
	 // Counter Signals
	 logic         overflow;
    logic [31:0]  count;
	 // Test Multiplier Signals
	 logic         busy;
	 // Verification Signals
    logic         match;
    logic [31:0]  test_result;
	 logic [31:0]  gold_result;
	 
	 // test multiplier to calculate product of A and B
    counter counter_inst(
        .clk(clock),
        .reset_n(reset_n),
        .enable(enable_count),
        .count(count),
		  .overflow(overflow)
    );

	 // test multiplier to calculate product of A and B
    test_mult test_mult_inst(
        .clk(clock),
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

    // always block for FSM
    always_ff @(posedge clock or negedge reset_n) begin

        if (!reset_n) begin
			   enable_count <= '0;
				enable_mult <= '0;
            state <= IDLE;
            next_state <= IDLE;
			   a <= '0;
			   b <= '0;
        end else begin
			   a <= count[31:16];
			   b <= count[15:0];
            state <= next_state;
        end

        case (state)
            IDLE: begin
					 enable_count <= '0;
					 enable_mult <= '0;
                if (begin_test) begin
                    next_state <= START;
                end else begin
                    next_state <= IDLE;
                end
            end

            START: begin
					 enable_count <= '0;
					 enable_mult <= '1;
					 next_state <= TEST_PROCESSING;
            end

            TEST_PROCESSING: begin
					 enable_count <= '0;
                if (!busy) begin
						  enable_mult <= '0;
                    if (match && !inject_error) begin
								next_state <= UPDATE_INPUTS;
                    end else begin
                        next_state <= TEST_FAILED;
                    end
                end else begin
						  enable_mult <= '1;
						  next_state <= TEST_PROCESSING;
                end
            end
				
            TEST_FAILED: begin
					 enable_count <= '0;
					 enable_mult <= '0;
                next_state <= TEST_FAILED;
            end

            UPDATE_INPUTS: begin
                if (overflow)begin
						  enable_count <= '0;
                    enable_mult <= '0;
                    next_state <= TEST_COMPLETE;
                end else begin
						  enable_count <= '1;
						  enable_mult <= '1;
                    next_state <= TEST_PROCESSING;
                end
            end

            TEST_COMPLETE: begin
					 enable_count <= '0;
					 enable_mult <= '0;
					 if (inject_error) begin
						 next_state <= TEST_FAILED;
					 end else begin
                   next_state <= TEST_COMPLETE;
					 end
            end

            default: begin
					 enable_count <= '0;
					 enable_mult <= '0;
                next_state <= IDLE;
            end
        endcase
	  end
endmodule

module status_tb;
	// Inputs
	logic          clock;
   logic          reset_n;
   logic          begin_test;
   logic          inject_error;
   logic [3:0]    state;
	
	//OUTPUTS
	logic [15:0]   a;
	logic [15:0]   b; 

	// Instantiate the module
	status uut(
        .clock(clock),
        .reset_n(reset_n),
        .begin_test(begin_test),
        .inject_error(inject_error),
        .state(state),
        .a(a),
        .b(b)
    );

	parameter clk_period = 10;
	// Reset generation
	initial begin
		 clock = 0;
		 begin_test = 0;
		 inject_error = 0;
		 reset_n = 0;
	end

	// Clock generation
	always #(clk_period)  clock = ~clock;
	
	// Test sequence
	initial begin
		 // Wait for a few clock cycles
		 reset_n = 1;
		 #50;
		 // Start test
		 begin_test = 1;
		 #50;

		 // Set inputs
		 begin_test = 0;
		 #50;

		 // Results match, no error
		 inject_error = 0;
		 #50;

		 // Update inputs
		 #50;

		 // Results don't match, no error
		 inject_error = 0;
		 #100;
		 reset_n = 0;

		 // Idle state
		 #50;
		 reset_n = 1;
		 // Start test again
		 begin_test = 1;
		 #50;

		 // Set inputs
		 begin_test = 0;
		 #50;

		 // Results don't match, error injected
		 inject_error = 1;
		 reset_n = 0;

		 // Idle state
		 #50;
		 reset_n = 1;

		 // Start test again
		 begin_test = 1;
		 #50;

		 // Set inputs
		 begin_test = 0;
		 #50;

		 // Results match, error injected
		 inject_error = 1;
		 #50;
		 reset_n = 0;

		 // Idle state
		 #50;
		 reset_n = 1;

		 $finish;
	end

endmodule