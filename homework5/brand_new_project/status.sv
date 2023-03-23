module control
#(parameter    IDLE = 4'd0              , parameter    START = 4'd1       , 
  parameter    SET_NEW_INPUT = 4'd2     , parameter    TEST_NEW_INPUT = 4'd3   , parameter    TEST_PROCESSING = 4'd4, 
  parameter    TEST_PASSED = 4'd5       , parameter    TEST_FAILED = 4'd6 , 
  parameter    UPDATE_INPUTS = 4'd7     , parameter    TEST_COMPLETE = 4'd8
 )
(
    input  logic          clock,
    input  logic          reset_n,
    input  logic          begin_test,
    input  logic          inject_error,
    input  logic          overflow,
    input  logic          match,
	 input  logic          busy, 
	 input  logic          enable_mult,
	 input  logic          input_set,
    output logic [3:0]    state,
	 output logic 	   	  enable_progress,
	 output logic 	   	  enable_mult
);
    // FSM signals
    logic [3:0]   state;
	 
    // always block for FSM
    always_ff @(posedge clock or negedge reset_n) begin
        if (!reset_n) begin
				enable_progress <= '0;
				enable_mult <= '0;
            state <= IDLE;
        end else begin
            state <= next_state;
        end

        case (state)
            IDLE: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
                if (begin_test) begin
                    next_state <= START;
                end else begin
                    next_state <= IDLE;
                end
            end

            START: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
					 if (!begin_test) begin
						  next_state <= TEST_NEW_INPUT;
                end else begin
						  next_state <= START;
                end
            end

            TEST_PROCESSING: begin
					 if (busy) begin
						  enable_progress <= '0;
						  enable_mult <= '0;
						  next_state <= TEST_PROCESSING;
                end else if (match && !inject_error) begin
						  enable_progress <= '1;
						  enable_mult <= '0;
						  next_state <= SET_NEW_INPUT;
				    end else begin
						  enable_progress <= '0;
						  enable_mult <= '0;
						  next_state <= TEST_FAILED;
				    end
				end
				
				
				SET_NEW_INPUT: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
                if (overflow) begin
						  next_state <= TEST_COMPLETE;
                end else if (input_set) begin
						  next_state <= TEST_NEW_INPUT;
					 end 
            end
				
				TEST_NEW_INPUT: begin
					 enable_progress <= '0;
					 enable_mult <= '1;
					 next_state <= TEST_PROCESSING;
            end
				
            TEST_FAILED: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
                next_state <= TEST_FAILED;
            end

            TEST_COMPLETE: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
                next_state <= TEST_COMPLETE;
            end

            default: begin
					 enable_progress <= '0;
					 enable_mult <= '0;
                next_state <= IDLE;
            end
        endcase
	  end
endmodule

module control_tb;
	// Inputs
   logic          clock;
   logic          reset_n;
   logic          begin_test;
   logic          inject_error;
   logic          overflow;
   logic          match;
	logic          busy;
	//OUTPUTS
   logic [2:0]    state;
   logic          enable_mult;
	logic          enable_progress;

	// status module to output the status register to the HEX displays
	control control_inst(
	.clock(CLOCK_50),
	.reset_n(reset_n),
	.begin_test(begin_test),
	.inject_error(inject_error),
	.overflow(overflow),
	.match(match),
	.busy(busy),
	.enable_mult(enable_mult),
	.input_set(input_set),
	.next_state(next_state),
	.enable_mult(enable_mult),
	.enable_progress(enable_progress),
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