module buttons (
    input logic clk, // system clock
    input logic rst, // synchronous reset
    input logic raw_begin_test, // raw begin_test signal (active-low)
    input logic raw_inject_error, // raw inject_error signal (active-low)
    input logic raw_reset, // raw reset signal (active-low)
    output logic debounced_begin_test, // debounced and synchronized begin_test signal (active-high)
    output logic debounced_inject_error, // debounced and synchronized inject_error signal (active-high)
    output logic synced_reset // synchronized reset signal (active-high)
);

// Invert the raw signals
logic inverted_begin_test = ~raw_begin_test;
logic inverted_inject_error = ~raw_inject_error;
logic inverted_reset = ~raw_reset;

// Create a wrapping counter
localparam COUNT_MAX = 199999;
logic [17:0] count = 0;

always_ff @(posedge clk) begin
    if (rst) begin
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

// Create a pulse_gen module
module pulse_gen (
    input logic clk,
    input logic reset,
    input logic enable,
    input logic count_max,
    output logic pulse
);

logic [17:0] counter = 0;

always_ff @(posedge clk) begin
    if (reset) begin
        counter <= 0;
    end else if (enable && (counter == count_max)) begin
        counter <= 0;
        pulse <= 1;
    end else begin
        counter <= counter + 1;
        pulse <= 0;
    end
end

endmodule

// Instantiate a pulse_gen module
pulse_gen pulse_gen_inst (
    .clk(clk),
    .reset(rst),
    .enable(count == COUNT_MAX),
    .count_max(COUNT_MAX - 1),
    .pulse()
);

// Create a debouncer module
module debouncer (
    input logic clk,
    input logic pulse,
    output logic out
);

    logic [4:0] counter;

    always_ff @(posedge clk) begin
        if (pulse) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end
    end

    assign out = (counter == 5'b11111);

endmodule

// Instantiate a debouncer module for each input signal
debouncer debouncer_begin_test (
    .clk(clk),
    .pulse(pulse_gen_inst.pulse),
    .out(debounced_begin_test)
);

debouncer debouncer_inject_error (
    .clk(clk),
    .pulse(inverted_inject_error),
    .out(debounced_inject_error)
);

debouncer debouncer_synced_reset (
    .clk(clk),
    .pulse(inverted_reset),
    .out(synced_reset)
);

endmodule