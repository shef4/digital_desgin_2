// count16 module

// TODO: This module should count up to 65535 and reset back to 0 when reaching the limit

module count16(
input clk,
input reset_n,
output reg [15:0] count
);

    always @(posedge clk)
    begin
        if (!reset_n)
            count <= 0;
        else
            count <= count == 65535 ? 0 : count + 1;
    end

endmodule