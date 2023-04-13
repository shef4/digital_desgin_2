// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

// DATE "04/13/2023 10:07:34"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module audio_clock (
	audio_pll_0_audio_clk_clk,
	audio_pll_0_ref_clk_clk,
	audio_pll_0_ref_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	audio_pll_0_audio_clk_clk;
input 	audio_pll_0_ref_clk_clk;
input 	audio_pll_0_ref_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \audio_pll_0|audio_pll|altera_pll_i|outclk_wire[0] ;
wire \audio_pll_0_ref_clk_clk~input_o ;
wire \audio_pll_0_ref_reset_reset~input_o ;


audio_clock_audio_clock_audio_pll_0 audio_pll_0(
	.outclk_wire_0(\audio_pll_0|audio_pll|altera_pll_i|outclk_wire[0] ),
	.audio_pll_0_ref_clk_clk(\audio_pll_0_ref_clk_clk~input_o ),
	.audio_pll_0_ref_reset_reset(\audio_pll_0_ref_reset_reset~input_o ));

assign \audio_pll_0_ref_clk_clk~input_o  = audio_pll_0_ref_clk_clk;

assign \audio_pll_0_ref_reset_reset~input_o  = audio_pll_0_ref_reset_reset;

assign audio_pll_0_audio_clk_clk = \audio_pll_0|audio_pll|altera_pll_i|outclk_wire[0] ;

endmodule

module audio_clock_audio_clock_audio_pll_0 (
	outclk_wire_0,
	audio_pll_0_ref_clk_clk,
	audio_pll_0_ref_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	outclk_wire_0;
input 	audio_pll_0_ref_clk_clk;
input 	audio_pll_0_ref_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_clock_audio_clock_audio_pll_0_audio_pll audio_pll(
	.outclk_wire_0(outclk_wire_0),
	.audio_pll_0_ref_clk_clk(audio_pll_0_ref_clk_clk),
	.audio_pll_0_ref_reset_reset(audio_pll_0_ref_reset_reset));

endmodule

module audio_clock_audio_clock_audio_pll_0_audio_pll (
	outclk_wire_0,
	audio_pll_0_ref_clk_clk,
	audio_pll_0_ref_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	outclk_wire_0;
input 	audio_pll_0_ref_clk_clk;
input 	audio_pll_0_ref_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_clock_altera_pll_1 altera_pll_i(
	.outclk({outclk_wire_0}),
	.refclk(audio_pll_0_ref_clk_clk),
	.rst(audio_pll_0_ref_reset_reset));

endmodule

module audio_clock_altera_pll_1 (
	outclk,
	refclk,
	rst)/* synthesis synthesis_greybox=0 */;
output 	[0:0] outclk;
input 	refclk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \fboutclk_wire[0] ;


generic_pll \general[0].gpll (
	.refclk(refclk),
	.fbclk(\fboutclk_wire[0] ),
	.rst(rst),
	.writerefclkdata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.writeoutclkdata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.writephaseshiftdata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.writedutycycledata(64'b0000000000000000000000000000000000000000000000000000000000000000),
	.outclk(outclk[0]),
	.fboutclk(\fboutclk_wire[0] ),
	.locked(),
	.readrefclkdata(),
	.readoutclkdata(),
	.readphaseshiftdata(),
	.readdutycycledata());
defparam \general[0].gpll .clock_name_global = "false";
defparam \general[0].gpll .duty_cycle = 50;
defparam \general[0].gpll .fractional_vco_multiplier = "false";
defparam \general[0].gpll .output_clock_frequency = "12.288135 mhz";
defparam \general[0].gpll .phase_shift = "0 ps";
defparam \general[0].gpll .reference_clock_frequency = "50.0 mhz";
defparam \general[0].gpll .simulation_type = "timing";

endmodule
