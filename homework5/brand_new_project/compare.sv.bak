module compare(
    input [31:0] test_result,
    input [31:0] gold_result,
    output reg match
    );

    always @* begin
        if (test_result == gold_result) begin
            match = 1;
        end
        else begin
            match = 0;
        end
    end

endmodule
