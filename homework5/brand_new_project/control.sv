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
	 input  logic          input_set,
    output logic [3:0]    state,
	 output logic 	   	  enable_progress,
	 output logic 	   	  enable_mult
);
    // FSM signals
    logic [3:0]   next_state;
	 
    // always block for FSM
    always_ff @(posedge clock) begin
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
					 end else begin
						  next_state <= SET_NEW_INPUT;
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
