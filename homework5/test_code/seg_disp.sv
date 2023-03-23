module seg_disp(
    input clock,
    input [4:0] num,
    output reg [6:0] seg
    );

    reg [4:0] digit;
    
	 // Seven-segment display constants
	 parameter IDLE_DISPLAY= 7'b100_0000;
	 parameter START_DISPLAY = 7'b110_1111;
	 parameter PROGRESS_DISPLAY = 7'b011_1100;
	 parameter ERROR_DISPLAY = 7'b100_1110;
	 parameter FINISHED_DISPLAY = 7'b000_1111;
	 parameter HEX_ZERO = 7'b100_0000;
	 parameter HEX_ONE = 7'b111_1001;
	 parameter HEX_TWO = 7'b010_0100;
	 parameter HEX_THREE = 7'b011_0000;
	 parameter HEX_FOUR = 7'b001_1001;
	 parameter HEX_FIVE = 7'b001_0010;
	 parameter HEX_SIX = 7'b000_0010;
	 parameter HEX_SEVEN = 7'b111_1000;
	 parameter HEX_EIGHT = 7'b000_0000;
	 parameter HEX_NINE = 7'b001_0000;
	 parameter HEX_A = 7'b000_1000;
	 parameter HEX_B = 7'b000_1011;
	 parameter HEX_C = 7'b100_0110;
	 parameter HEX_D = 7'b010_0011;
	 parameter HEX_E = 7'b100_1110;
	 parameter HEX_F = 7'b000_1111;

    always @(posedge clock) begin
        digit <= num;
    end
    
    always @(*) begin
        case (digit)
            5'd0: seg[6:0] = HEX_ZERO;
            5'd1: seg[6:0] = HEX_ONE;
            5'd2: seg[6:0] = HEX_TWO;
            5'd3: seg[6:0] = HEX_THREE;
            5'd4: seg[6:0] = HEX_FOUR;
            5'd5: seg[6:0] = HEX_FIVE;
            5'd6: seg[6:0] = HEX_SIX;
            5'd7: seg[6:0] = HEX_SEVEN;
            5'd8: seg[6:0] = HEX_EIGHT;
            5'd9: seg[6:0] = HEX_NINE;
            5'd10: seg[6:0] = HEX_A;
            5'd11: seg[6:0] = HEX_B;
            5'd12: seg[6:0] = HEX_C;
            5'd13: seg[6:0] = HEX_D;
            5'd14: seg[6:0] = HEX_E;
            5'd15: seg[6:0] = HEX_F;
            5'd16: seg[6:0] = IDLE_DISPLAY;
            5'd17: seg[6:0] = START_DISPLAY;
            5'd18: seg[6:0] = PROGRESS_DISPLAY;
            5'd19: seg[6:0] = ERROR_DISPLAY;
            5'd20: seg[6:0] = FINISHED_DISPLAY;
        endcase
	end
endmodule