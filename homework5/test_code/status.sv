module status(
    input         clock,
    input         reset_n,
    input         begin_test,
    input         inject_error,
    input         busy,
    input         results_match,
    output reg    [6:0] status_out,
	 output reg		[15:0]	opA,
	 output reg		[15:0]	opB,
    output reg         test_mult_start
);


	 // FSM states
	 parameter IDLE = 0;
	 parameter RESET = 1;
	 parameter START = 2;
	 parameter SET_INPUTS = 3;
	 parameter COMPARE_RESULTS = 4;
	 parameter UPDATE_INPUTS = 5;
	 parameter FINISHED_TESTING = 6;

	 parameter IDLE_STATUS= 5'd16;
	 parameter START_STATUS = 5'd17;
	 parameter PROGRESS_STATUS = 5'd18;
	 parameter ERROR_STATUS = 5'd19;
	 parameter FINISHED_STATUS = 5'd20;

    reg [3:0] state;
    reg [3:0] next_state;
	 reg [32:0] count;
    reg [7:0] a_hex_display;
    reg [7:0] b_hex_display;

    always @(posedge clock) begin
        // update state
        state <= next_state;

        case (state)

            IDLE: begin
                if (!reset_n) begin
                    next_state = RESET;
                end else if (begin_test) begin
                    next_state = START;
                end else begin
                    next_state = IDLE;
                end
                test_mult_start <= 0;
				end
            RESET: begin
                next_state = IDLE;
                count <= 0;
				opA <= count[31:24];
				opB <= count[15:9];
                status_out <=  IDLE_STATUS;
				end
            START:begin
                next_state = SET_INPUTS;
				opA <= count[31:24];
				opB <= count[15:9];
                status_out <=  START_STATUS;
				end
            SET_INPUTS: begin
                next_state = COMPARE_RESULTS;
				opA <= count[31:24];
				opB <= count[15:9];
                status_out <=  PROGRESS_STATUS;
				test_mult_start <= 1;
				end
            COMPARE_RESULTS: begin
                if (!busy) begin
                    test_mult_start <= 0;
                    if (results_match && !inject_error) begin
                        next_state = UPDATE_INPUTS;
                    end else begin
                        next_state = IDLE;
                        status_out <=  ERROR_STATUS;
                    end
                end
            end 
            UPDATE_INPUTS: begin
                if (count == 32'hffffffff) begin
                    next_state = FINISHED_TESTING;
                end else begin
                    count <= count + 1;
                    next_state = SET_INPUTS;
                end
                opA <= count[31:24];
                opB <= count[15:9];
                status_out <=  PROGRESS_STATUS;
				end
            FINISHED_TESTING: begin
                next_state = IDLE;
                status_out <=  FINISHED_STATUS;
                test_mult_start <= 0;
				end
		endcase

	end

endmodule
