module button(
    input logic clk,
    input logic button_in,
    output logic pulse_out
);
	 logic button_sync;

	 Sync Sync_Inst( .clock(clk),.in(button_in), .out(button_sync));

    Debounce #(.MAX_COUNT(4)) Debounce_Inst(.clock(clk),.in(button_sync),.out(pulse_out));

endmodule

module Debounce #(parameter MAX_COUNT = 16)
(
    input logic clock,
    input logic in,    // Synchronous and noisy input.
    output logic out   // Debounced and filtered output.
);

    localparam COUNTER_BITS = $clog2(MAX_COUNT);

    logic [COUNTER_BITS - 1 : 0] counter;

    initial begin
        counter = 0;
        out = 0;
    end

    always @(posedge clock) begin
        counter <= 0;  // Freeze counter by default to reduce switching losses when input and output are equal.
        if (counter == MAX_COUNT - 1) begin
            out <= in;
        end else if (in != out) begin
            counter <= counter + 1;  // Only increment when input and output differ.
        end
    end


endmodule

module Sync #(parameter SYNC_BITS = 3) // Number of bits in the synchronisation buffer (2 minimum).
(
    input logic clock,
    input logic in,     // Asynchronous input.
    output logic out    // Synchronous output.
);

    localparam SYNC_MSB = SYNC_BITS - 1;

    logic [SYNC_MSB : 0] sync_buffer;

    assign out = sync_buffer[SYNC_MSB];

    always @(posedge clock)
    begin
        sync_buffer[SYNC_MSB : 0] <= {sync_buffer[SYNC_MSB - 1 : 0], in};
    end

endmodule

module button_tb;

    logic clock;
    logic button;
    logic button_sync_db;

    button uut( .clk(clock),.button_in(button), .pulse_out(button_sync_db));
	 parameter clk_period = 10;
    initial begin
        clock = 0;
    end

    always #(clk_period) clock = ~clock;

    always
    begin
        #2 button = 0; #20 button = 1; #20 button = 0;
        #22 button = 1; #20 button = 1; #20 button = 0; #20 button = 1;
        #22 button = 1; #20 button = 0; #20 button = 0; #20 button = 1;
        #22 button = 0; #20 button = 1; #20 button = 1; #20 button = 0;
        #80 $stop;
    end

endmodule