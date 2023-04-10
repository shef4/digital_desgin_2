`ifndef MULT16_TESTER_DEFS_SV
`define MULT16_TESTER_DEFS_SV

`timescale 1ns/1ns
`default_nettype none


 // FSM states
 parameter    IDLE = 3'd0;
 parameter    START = 3'd1;
 parameter    SET_INPUTS = 3'd2;
 parameter    TEST_PROCESSING = 3'd3;
 parameter    TEST_PASSED = 3'd4;
 parameter    TEST_FAILED = 3'd5;
 parameter    UPDATE_INPUTS = 3'd6;
 parameter    TEST_COMPLETE = 3'd7;
 // 7 Segment display values
 parameter    HEX_0 = 7'b100_0000;
 parameter    HEX_1 = 7'b111_1001;
 parameter    HEX_2 = 7'b010_0100;
 parameter    HEX_3 = 7'b011_0000;
 parameter    HEX_4 = 7'b001_1001;
 parameter    HEX_5 = 7'b001_0010;
 parameter    HEX_6 = 7'b000_0010;
 parameter    HEX_7 = 7'b111_1000;
 parameter    HEX_8 = 7'b000_0000;
 parameter    HEX_9 = 7'b001_0000;
 parameter    HEX_A = 7'b000_1000;
 parameter    HEX_B = 7'b000_1011;
 parameter    HEX_C = 7'b100_0110;
 parameter    HEX_D = 7'b010_0011;
 parameter    HEX_E = 7'b100_1110;
 parameter    HEX_F = 7'b000_1111;
 parameter    HEX_I = 7'b100_0000;
 parameter    HEX_S = 7'b100_1110;
 parameter    HEX_P = 7'b000_1111;

`endif // MULT16_TESTER_DEFS_SV