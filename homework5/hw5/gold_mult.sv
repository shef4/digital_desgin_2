module gold_mult(
    input [15:0] a,
    input [15:0] b,
    output reg [31:0] result
);

    always @(*) begin
        result = a * b;
    end

endmodule
