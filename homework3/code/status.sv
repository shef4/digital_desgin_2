// status module

// TODO: This module should output the status of the test in binary format. The output should be 0 if the test is not yet started, 1 if the test is in progress, and 2 if the test has completed successfully.

module status(
input clk,
input reset_n,
input begin_test,
input match,
output reg [7:0] status
);
always @(posedge clk)
begin
    if (!reset_n)
        status <= 0;
    else if (begin_test)
        status <= 1;
    else if (match)
        status <= 2;
end
endmodule