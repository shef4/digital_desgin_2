`ifndef BS_DEFS
`define BS_DEFS

`timescale 1ns/1ps

// Three possible `define settings:
//  - BS_USE_CASES
//  - BS_USE_STAGES
//  - BS_USE_REVERSAL

`define BS_USE_CASES

 enum logic {LEFT = 1'b0, RIGHT = 1'b1} direction;

`endif // BS_DEFS
