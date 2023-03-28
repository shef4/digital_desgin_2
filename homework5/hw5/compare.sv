module compare
(
    input logic [31:0] test_result,
	 input logic [31:0] gold_result,
    output logic match
);
	 
    always_ff @(*) begin
        if (test_result == gold_result) begin
            match = 1;
        end
        else begin
            match = 0;
        end
    end

endmodule


module compare_tb();
    // Declare signals for testbench
    logic [31:0] test_result, gold_result;
    logic match;

    // Instantiate the module under test
    compare uut (test_result, gold_result, match);

    // Initialize the testbench inputs
    initial begin
        test_result = 32'h00000000;
        gold_result = 32'h00000000;
        #10;
        test_result = 32'h00000001;
        gold_result = 32'h00000000;
        #10;
        test_result = 32'h00000000;
        gold_result = 32'h00000001;
        #10;
        test_result = 32'hFFFFFFFF;
        gold_result = 32'hFFFFFFFF;
        #10;
        test_result = 32'hA5A5A5A5;
        gold_result = 32'hA5A5A5A5;
        #10;
        $finish;
    end

    // Check the module output
    always_ff @(match) begin
        $display("Test result: %d, Gold result: %d, Match: %d", test_result, gold_result, match);
    end

endmodule
