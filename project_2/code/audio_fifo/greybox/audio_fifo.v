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

// DATE "04/13/2023 10:21:09"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module audio_fifo (
	sc_fifo_0_clk_clk,
	sc_fifo_0_clk_reset_reset,
	sc_fifo_0_in_data,
	sc_fifo_0_in_valid,
	sc_fifo_0_in_ready,
	sc_fifo_0_out_data,
	sc_fifo_0_out_valid,
	sc_fifo_0_out_ready)/* synthesis synthesis_greybox=0 */;
input 	sc_fifo_0_clk_clk;
input 	sc_fifo_0_clk_reset_reset;
input 	[15:0] sc_fifo_0_in_data;
input 	sc_fifo_0_in_valid;
output 	sc_fifo_0_in_ready;
output 	[15:0] sc_fifo_0_out_data;
output 	sc_fifo_0_out_valid;
input 	sc_fifo_0_out_ready;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sc_fifo_0|full~q ;
wire \sc_fifo_0|out_payload[0]~q ;
wire \sc_fifo_0|out_payload[1]~q ;
wire \sc_fifo_0|out_payload[2]~q ;
wire \sc_fifo_0|out_payload[3]~q ;
wire \sc_fifo_0|out_payload[4]~q ;
wire \sc_fifo_0|out_payload[5]~q ;
wire \sc_fifo_0|out_payload[6]~q ;
wire \sc_fifo_0|out_payload[7]~q ;
wire \sc_fifo_0|out_payload[8]~q ;
wire \sc_fifo_0|out_payload[9]~q ;
wire \sc_fifo_0|out_payload[10]~q ;
wire \sc_fifo_0|out_payload[11]~q ;
wire \sc_fifo_0|out_payload[12]~q ;
wire \sc_fifo_0|out_payload[13]~q ;
wire \sc_fifo_0|out_payload[14]~q ;
wire \sc_fifo_0|out_payload[15]~q ;
wire \sc_fifo_0|out_valid~q ;
wire \~GND~combout ;
wire \sc_fifo_0_clk_clk~input_o ;
wire \sc_fifo_0_in_valid~input_o ;
wire \sc_fifo_0_clk_reset_reset~input_o ;
wire \sc_fifo_0_out_ready~input_o ;
wire \sc_fifo_0_in_data[0]~input_o ;
wire \sc_fifo_0_in_data[1]~input_o ;
wire \sc_fifo_0_in_data[2]~input_o ;
wire \sc_fifo_0_in_data[3]~input_o ;
wire \sc_fifo_0_in_data[4]~input_o ;
wire \sc_fifo_0_in_data[5]~input_o ;
wire \sc_fifo_0_in_data[6]~input_o ;
wire \sc_fifo_0_in_data[7]~input_o ;
wire \sc_fifo_0_in_data[8]~input_o ;
wire \sc_fifo_0_in_data[9]~input_o ;
wire \sc_fifo_0_in_data[10]~input_o ;
wire \sc_fifo_0_in_data[11]~input_o ;
wire \sc_fifo_0_in_data[12]~input_o ;
wire \sc_fifo_0_in_data[13]~input_o ;
wire \sc_fifo_0_in_data[14]~input_o ;
wire \sc_fifo_0_in_data[15]~input_o ;


audio_fifo_altera_avalon_sc_fifo sc_fifo_0(
	.full1(\sc_fifo_0|full~q ),
	.out_payload_0(\sc_fifo_0|out_payload[0]~q ),
	.out_payload_1(\sc_fifo_0|out_payload[1]~q ),
	.out_payload_2(\sc_fifo_0|out_payload[2]~q ),
	.out_payload_3(\sc_fifo_0|out_payload[3]~q ),
	.out_payload_4(\sc_fifo_0|out_payload[4]~q ),
	.out_payload_5(\sc_fifo_0|out_payload[5]~q ),
	.out_payload_6(\sc_fifo_0|out_payload[6]~q ),
	.out_payload_7(\sc_fifo_0|out_payload[7]~q ),
	.out_payload_8(\sc_fifo_0|out_payload[8]~q ),
	.out_payload_9(\sc_fifo_0|out_payload[9]~q ),
	.out_payload_10(\sc_fifo_0|out_payload[10]~q ),
	.out_payload_11(\sc_fifo_0|out_payload[11]~q ),
	.out_payload_12(\sc_fifo_0|out_payload[12]~q ),
	.out_payload_13(\sc_fifo_0|out_payload[13]~q ),
	.out_payload_14(\sc_fifo_0|out_payload[14]~q ),
	.out_payload_15(\sc_fifo_0|out_payload[15]~q ),
	.out_valid1(\sc_fifo_0|out_valid~q ),
	.GND_port(\~GND~combout ),
	.clk(\sc_fifo_0_clk_clk~input_o ),
	.sc_fifo_0_in_valid(\sc_fifo_0_in_valid~input_o ),
	.reset(\sc_fifo_0_clk_reset_reset~input_o ),
	.sc_fifo_0_out_ready(\sc_fifo_0_out_ready~input_o ),
	.sc_fifo_0_in_data_0(\sc_fifo_0_in_data[0]~input_o ),
	.sc_fifo_0_in_data_1(\sc_fifo_0_in_data[1]~input_o ),
	.sc_fifo_0_in_data_2(\sc_fifo_0_in_data[2]~input_o ),
	.sc_fifo_0_in_data_3(\sc_fifo_0_in_data[3]~input_o ),
	.sc_fifo_0_in_data_4(\sc_fifo_0_in_data[4]~input_o ),
	.sc_fifo_0_in_data_5(\sc_fifo_0_in_data[5]~input_o ),
	.sc_fifo_0_in_data_6(\sc_fifo_0_in_data[6]~input_o ),
	.sc_fifo_0_in_data_7(\sc_fifo_0_in_data[7]~input_o ),
	.sc_fifo_0_in_data_8(\sc_fifo_0_in_data[8]~input_o ),
	.sc_fifo_0_in_data_9(\sc_fifo_0_in_data[9]~input_o ),
	.sc_fifo_0_in_data_10(\sc_fifo_0_in_data[10]~input_o ),
	.sc_fifo_0_in_data_11(\sc_fifo_0_in_data[11]~input_o ),
	.sc_fifo_0_in_data_12(\sc_fifo_0_in_data[12]~input_o ),
	.sc_fifo_0_in_data_13(\sc_fifo_0_in_data[13]~input_o ),
	.sc_fifo_0_in_data_14(\sc_fifo_0_in_data[14]~input_o ),
	.sc_fifo_0_in_data_15(\sc_fifo_0_in_data[15]~input_o ));

cyclonev_lcell_comb \~GND (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\~GND~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \~GND .extended_lut = "off";
defparam \~GND .lut_mask = 64'h0000000000000000;
defparam \~GND .shared_arith = "off";

assign \sc_fifo_0_clk_clk~input_o  = sc_fifo_0_clk_clk;

assign \sc_fifo_0_in_valid~input_o  = sc_fifo_0_in_valid;

assign \sc_fifo_0_clk_reset_reset~input_o  = sc_fifo_0_clk_reset_reset;

assign \sc_fifo_0_out_ready~input_o  = sc_fifo_0_out_ready;

assign \sc_fifo_0_in_data[0]~input_o  = sc_fifo_0_in_data[0];

assign \sc_fifo_0_in_data[1]~input_o  = sc_fifo_0_in_data[1];

assign \sc_fifo_0_in_data[2]~input_o  = sc_fifo_0_in_data[2];

assign \sc_fifo_0_in_data[3]~input_o  = sc_fifo_0_in_data[3];

assign \sc_fifo_0_in_data[4]~input_o  = sc_fifo_0_in_data[4];

assign \sc_fifo_0_in_data[5]~input_o  = sc_fifo_0_in_data[5];

assign \sc_fifo_0_in_data[6]~input_o  = sc_fifo_0_in_data[6];

assign \sc_fifo_0_in_data[7]~input_o  = sc_fifo_0_in_data[7];

assign \sc_fifo_0_in_data[8]~input_o  = sc_fifo_0_in_data[8];

assign \sc_fifo_0_in_data[9]~input_o  = sc_fifo_0_in_data[9];

assign \sc_fifo_0_in_data[10]~input_o  = sc_fifo_0_in_data[10];

assign \sc_fifo_0_in_data[11]~input_o  = sc_fifo_0_in_data[11];

assign \sc_fifo_0_in_data[12]~input_o  = sc_fifo_0_in_data[12];

assign \sc_fifo_0_in_data[13]~input_o  = sc_fifo_0_in_data[13];

assign \sc_fifo_0_in_data[14]~input_o  = sc_fifo_0_in_data[14];

assign \sc_fifo_0_in_data[15]~input_o  = sc_fifo_0_in_data[15];

assign sc_fifo_0_in_ready = ~ \sc_fifo_0|full~q ;

assign sc_fifo_0_out_data[0] = \sc_fifo_0|out_payload[0]~q ;

assign sc_fifo_0_out_data[1] = \sc_fifo_0|out_payload[1]~q ;

assign sc_fifo_0_out_data[2] = \sc_fifo_0|out_payload[2]~q ;

assign sc_fifo_0_out_data[3] = \sc_fifo_0|out_payload[3]~q ;

assign sc_fifo_0_out_data[4] = \sc_fifo_0|out_payload[4]~q ;

assign sc_fifo_0_out_data[5] = \sc_fifo_0|out_payload[5]~q ;

assign sc_fifo_0_out_data[6] = \sc_fifo_0|out_payload[6]~q ;

assign sc_fifo_0_out_data[7] = \sc_fifo_0|out_payload[7]~q ;

assign sc_fifo_0_out_data[8] = \sc_fifo_0|out_payload[8]~q ;

assign sc_fifo_0_out_data[9] = \sc_fifo_0|out_payload[9]~q ;

assign sc_fifo_0_out_data[10] = \sc_fifo_0|out_payload[10]~q ;

assign sc_fifo_0_out_data[11] = \sc_fifo_0|out_payload[11]~q ;

assign sc_fifo_0_out_data[12] = \sc_fifo_0|out_payload[12]~q ;

assign sc_fifo_0_out_data[13] = \sc_fifo_0|out_payload[13]~q ;

assign sc_fifo_0_out_data[14] = \sc_fifo_0|out_payload[14]~q ;

assign sc_fifo_0_out_data[15] = \sc_fifo_0|out_payload[15]~q ;

assign sc_fifo_0_out_valid = \sc_fifo_0|out_valid~q ;

endmodule

module audio_fifo_altera_avalon_sc_fifo (
	full1,
	out_payload_0,
	out_payload_1,
	out_payload_2,
	out_payload_3,
	out_payload_4,
	out_payload_5,
	out_payload_6,
	out_payload_7,
	out_payload_8,
	out_payload_9,
	out_payload_10,
	out_payload_11,
	out_payload_12,
	out_payload_13,
	out_payload_14,
	out_payload_15,
	out_valid1,
	GND_port,
	clk,
	sc_fifo_0_in_valid,
	reset,
	sc_fifo_0_out_ready,
	sc_fifo_0_in_data_0,
	sc_fifo_0_in_data_1,
	sc_fifo_0_in_data_2,
	sc_fifo_0_in_data_3,
	sc_fifo_0_in_data_4,
	sc_fifo_0_in_data_5,
	sc_fifo_0_in_data_6,
	sc_fifo_0_in_data_7,
	sc_fifo_0_in_data_8,
	sc_fifo_0_in_data_9,
	sc_fifo_0_in_data_10,
	sc_fifo_0_in_data_11,
	sc_fifo_0_in_data_12,
	sc_fifo_0_in_data_13,
	sc_fifo_0_in_data_14,
	sc_fifo_0_in_data_15)/* synthesis synthesis_greybox=0 */;
output 	full1;
output 	out_payload_0;
output 	out_payload_1;
output 	out_payload_2;
output 	out_payload_3;
output 	out_payload_4;
output 	out_payload_5;
output 	out_payload_6;
output 	out_payload_7;
output 	out_payload_8;
output 	out_payload_9;
output 	out_payload_10;
output 	out_payload_11;
output 	out_payload_12;
output 	out_payload_13;
output 	out_payload_14;
output 	out_payload_15;
output 	out_valid1;
input 	GND_port;
input 	clk;
input 	sc_fifo_0_in_valid;
input 	reset;
input 	sc_fifo_0_out_ready;
input 	sc_fifo_0_in_data_0;
input 	sc_fifo_0_in_data_1;
input 	sc_fifo_0_in_data_2;
input 	sc_fifo_0_in_data_3;
input 	sc_fifo_0_in_data_4;
input 	sc_fifo_0_in_data_5;
input 	sc_fifo_0_in_data_6;
input 	sc_fifo_0_in_data_7;
input 	sc_fifo_0_in_data_8;
input 	sc_fifo_0_in_data_9;
input 	sc_fifo_0_in_data_10;
input 	sc_fifo_0_in_data_11;
input 	sc_fifo_0_in_data_12;
input 	sc_fifo_0_in_data_13;
input 	sc_fifo_0_in_data_14;
input 	sc_fifo_0_in_data_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add1~25_sumout ;
wire \Add0~25_sumout ;
wire \write~combout ;
wire \wr_ptr[0]~q ;
wire \Add0~26 ;
wire \Add0~29_sumout ;
wire \wr_ptr[1]~q ;
wire \Add0~30 ;
wire \Add0~13_sumout ;
wire \wr_ptr[2]~q ;
wire \Add0~14 ;
wire \Add0~17_sumout ;
wire \wr_ptr[3]~q ;
wire \Add0~18 ;
wire \Add0~21_sumout ;
wire \wr_ptr[4]~q ;
wire \Add0~22 ;
wire \Add0~1_sumout ;
wire \wr_ptr[5]~q ;
wire \Add0~2 ;
wire \Add0~5_sumout ;
wire \wr_ptr[6]~q ;
wire \Add0~6 ;
wire \Add0~9_sumout ;
wire \wr_ptr[7]~q ;
wire \rd_ptr[6]~q ;
wire \Add1~2 ;
wire \Add1~5_sumout ;
wire \rd_ptr[7]~q ;
wire \Add1~6 ;
wire \Add1~9_sumout ;
wire \internal_out_valid~0_combout ;
wire \internal_out_valid~1_combout ;
wire \internal_out_valid~5_combout ;
wire \Add0~10 ;
wire \Add0~33_sumout ;
wire \wr_ptr[8]~q ;
wire \Add0~34 ;
wire \Add0~37_sumout ;
wire \wr_ptr[9]~q ;
wire \rd_ptr[8]~q ;
wire \Add1~10 ;
wire \Add1~33_sumout ;
wire \rd_ptr[9]~q ;
wire \Add1~34 ;
wire \Add1~37_sumout ;
wire \internal_out_valid~3_combout ;
wire \next_empty~0_combout ;
wire \next_empty~1_combout ;
wire \empty~q ;
wire \Equal0~0_combout ;
wire \internal_out_valid~2_combout ;
wire \internal_out_valid~4_combout ;
wire \internal_out_valid~q ;
wire \read~0_combout ;
wire \rd_ptr[0]~q ;
wire \Add1~26 ;
wire \Add1~29_sumout ;
wire \rd_ptr[1]~q ;
wire \Add1~30 ;
wire \Add1~13_sumout ;
wire \rd_ptr[2]~q ;
wire \Add1~14 ;
wire \Add1~17_sumout ;
wire \rd_ptr[3]~q ;
wire \Add1~18 ;
wire \Add1~21_sumout ;
wire \rd_ptr[4]~q ;
wire \Add1~22 ;
wire \Add1~1_sumout ;
wire \rd_ptr[5]~q ;
wire \next_full~0_combout ;
wire \next_full~1_combout ;
wire \next_full~2_combout ;
wire \next_full~3_combout ;
wire \next_full~4_combout ;
wire \mem_rd_ptr[0]~0_combout ;
wire \mem_rd_ptr[1]~1_combout ;
wire \mem_rd_ptr[2]~2_combout ;
wire \mem_rd_ptr[3]~3_combout ;
wire \mem_rd_ptr[4]~4_combout ;
wire \mem_rd_ptr[5]~5_combout ;
wire \mem_rd_ptr[6]~6_combout ;
wire \mem_rd_ptr[7]~7_combout ;
wire \mem_rd_ptr[8]~8_combout ;
wire \mem_rd_ptr[9]~9_combout ;
wire \mem_rtl_0|auto_generated|ram_block1a0~portbdataout ;
wire \internal_out_ready~combout ;
wire \mem_rtl_0|auto_generated|ram_block1a1~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a2~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a3~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a4~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a5~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a6~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a7~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a8~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a9~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a10~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a11~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a12~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a13~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a14~portbdataout ;
wire \mem_rtl_0|auto_generated|ram_block1a15~portbdataout ;

wire [143:0] \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus ;
wire [143:0] \mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus ;

assign \mem_rtl_0|auto_generated|ram_block1a0~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a1~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a2~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a3~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a4~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a5~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a6~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a7~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a8~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a9~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a10~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a11~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a12~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a13~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a14~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus [0];

assign \mem_rtl_0|auto_generated|ram_block1a15~portbdataout  = \mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus [0];

dffeas full(
	.clk(clk),
	.d(GND_port),
	.asdata(\next_full~4_combout ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(full1),
	.prn(vcc));
defparam full.is_wysiwyg = "true";
defparam full.power_up = "low";

dffeas \out_payload[0] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a0~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_0),
	.prn(vcc));
defparam \out_payload[0] .is_wysiwyg = "true";
defparam \out_payload[0] .power_up = "low";

dffeas \out_payload[1] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a1~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_1),
	.prn(vcc));
defparam \out_payload[1] .is_wysiwyg = "true";
defparam \out_payload[1] .power_up = "low";

dffeas \out_payload[2] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a2~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_2),
	.prn(vcc));
defparam \out_payload[2] .is_wysiwyg = "true";
defparam \out_payload[2] .power_up = "low";

dffeas \out_payload[3] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a3~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_3),
	.prn(vcc));
defparam \out_payload[3] .is_wysiwyg = "true";
defparam \out_payload[3] .power_up = "low";

dffeas \out_payload[4] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a4~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_4),
	.prn(vcc));
defparam \out_payload[4] .is_wysiwyg = "true";
defparam \out_payload[4] .power_up = "low";

dffeas \out_payload[5] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a5~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_5),
	.prn(vcc));
defparam \out_payload[5] .is_wysiwyg = "true";
defparam \out_payload[5] .power_up = "low";

dffeas \out_payload[6] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a6~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_6),
	.prn(vcc));
defparam \out_payload[6] .is_wysiwyg = "true";
defparam \out_payload[6] .power_up = "low";

dffeas \out_payload[7] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a7~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_7),
	.prn(vcc));
defparam \out_payload[7] .is_wysiwyg = "true";
defparam \out_payload[7] .power_up = "low";

dffeas \out_payload[8] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a8~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_8),
	.prn(vcc));
defparam \out_payload[8] .is_wysiwyg = "true";
defparam \out_payload[8] .power_up = "low";

dffeas \out_payload[9] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a9~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_9),
	.prn(vcc));
defparam \out_payload[9] .is_wysiwyg = "true";
defparam \out_payload[9] .power_up = "low";

dffeas \out_payload[10] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a10~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_10),
	.prn(vcc));
defparam \out_payload[10] .is_wysiwyg = "true";
defparam \out_payload[10] .power_up = "low";

dffeas \out_payload[11] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a11~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_11),
	.prn(vcc));
defparam \out_payload[11] .is_wysiwyg = "true";
defparam \out_payload[11] .power_up = "low";

dffeas \out_payload[12] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a12~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_12),
	.prn(vcc));
defparam \out_payload[12] .is_wysiwyg = "true";
defparam \out_payload[12] .power_up = "low";

dffeas \out_payload[13] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a13~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_13),
	.prn(vcc));
defparam \out_payload[13] .is_wysiwyg = "true";
defparam \out_payload[13] .power_up = "low";

dffeas \out_payload[14] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a14~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_14),
	.prn(vcc));
defparam \out_payload[14] .is_wysiwyg = "true";
defparam \out_payload[14] .power_up = "low";

dffeas \out_payload[15] (
	.clk(clk),
	.d(\mem_rtl_0|auto_generated|ram_block1a15~portbdataout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_payload_15),
	.prn(vcc));
defparam \out_payload[15] .is_wysiwyg = "true";
defparam \out_payload[15] .power_up = "low";

dffeas out_valid(
	.clk(clk),
	.d(\internal_out_valid~q ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\internal_out_ready~combout ),
	.q(out_valid1),
	.prn(vcc));
defparam out_valid.is_wysiwyg = "true";
defparam out_valid.power_up = "low";

cyclonev_lcell_comb \Add1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(\Add1~26 ),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h00000000000000FF;
defparam \Add1~25 .shared_arith = "off";

cyclonev_lcell_comb \Add0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~25_sumout ),
	.cout(\Add0~26 ),
	.shareout());
defparam \Add0~25 .extended_lut = "off";
defparam \Add0~25 .lut_mask = 64'h00000000000000FF;
defparam \Add0~25 .shared_arith = "off";

cyclonev_lcell_comb write(
	.dataa(!full1),
	.datab(!sc_fifo_0_in_valid),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\write~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam write.extended_lut = "off";
defparam write.lut_mask = 64'h2222222222222222;
defparam write.shared_arith = "off";

dffeas \wr_ptr[0] (
	.clk(clk),
	.d(\Add0~25_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[0]~q ),
	.prn(vcc));
defparam \wr_ptr[0] .is_wysiwyg = "true";
defparam \wr_ptr[0] .power_up = "low";

cyclonev_lcell_comb \Add0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~29_sumout ),
	.cout(\Add0~30 ),
	.shareout());
defparam \Add0~29 .extended_lut = "off";
defparam \Add0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~29 .shared_arith = "off";

dffeas \wr_ptr[1] (
	.clk(clk),
	.d(\Add0~29_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[1]~q ),
	.prn(vcc));
defparam \wr_ptr[1] .is_wysiwyg = "true";
defparam \wr_ptr[1] .power_up = "low";

cyclonev_lcell_comb \Add0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~13_sumout ),
	.cout(\Add0~14 ),
	.shareout());
defparam \Add0~13 .extended_lut = "off";
defparam \Add0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~13 .shared_arith = "off";

dffeas \wr_ptr[2] (
	.clk(clk),
	.d(\Add0~13_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[2]~q ),
	.prn(vcc));
defparam \wr_ptr[2] .is_wysiwyg = "true";
defparam \wr_ptr[2] .power_up = "low";

cyclonev_lcell_comb \Add0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~17_sumout ),
	.cout(\Add0~18 ),
	.shareout());
defparam \Add0~17 .extended_lut = "off";
defparam \Add0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~17 .shared_arith = "off";

dffeas \wr_ptr[3] (
	.clk(clk),
	.d(\Add0~17_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[3]~q ),
	.prn(vcc));
defparam \wr_ptr[3] .is_wysiwyg = "true";
defparam \wr_ptr[3] .power_up = "low";

cyclonev_lcell_comb \Add0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~21_sumout ),
	.cout(\Add0~22 ),
	.shareout());
defparam \Add0~21 .extended_lut = "off";
defparam \Add0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~21 .shared_arith = "off";

dffeas \wr_ptr[4] (
	.clk(clk),
	.d(\Add0~21_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[4]~q ),
	.prn(vcc));
defparam \wr_ptr[4] .is_wysiwyg = "true";
defparam \wr_ptr[4] .power_up = "low";

cyclonev_lcell_comb \Add0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~1_sumout ),
	.cout(\Add0~2 ),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~1 .shared_arith = "off";

dffeas \wr_ptr[5] (
	.clk(clk),
	.d(\Add0~1_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[5]~q ),
	.prn(vcc));
defparam \wr_ptr[5] .is_wysiwyg = "true";
defparam \wr_ptr[5] .power_up = "low";

cyclonev_lcell_comb \Add0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~5_sumout ),
	.cout(\Add0~6 ),
	.shareout());
defparam \Add0~5 .extended_lut = "off";
defparam \Add0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~5 .shared_arith = "off";

dffeas \wr_ptr[6] (
	.clk(clk),
	.d(\Add0~5_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[6]~q ),
	.prn(vcc));
defparam \wr_ptr[6] .is_wysiwyg = "true";
defparam \wr_ptr[6] .power_up = "low";

cyclonev_lcell_comb \Add0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~9_sumout ),
	.cout(\Add0~10 ),
	.shareout());
defparam \Add0~9 .extended_lut = "off";
defparam \Add0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~9 .shared_arith = "off";

dffeas \wr_ptr[7] (
	.clk(clk),
	.d(\Add0~9_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[7]~q ),
	.prn(vcc));
defparam \wr_ptr[7] .is_wysiwyg = "true";
defparam \wr_ptr[7] .power_up = "low";

dffeas \rd_ptr[6] (
	.clk(clk),
	.d(\Add1~5_sumout ),
	.asdata(\rd_ptr[6]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[6]~q ),
	.prn(vcc));
defparam \rd_ptr[6] .is_wysiwyg = "true";
defparam \rd_ptr[6] .power_up = "low";

cyclonev_lcell_comb \Add1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(\Add1~2 ),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~1 .shared_arith = "off";

cyclonev_lcell_comb \Add1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(\Add1~6 ),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~5 .shared_arith = "off";

dffeas \rd_ptr[7] (
	.clk(clk),
	.d(\Add1~9_sumout ),
	.asdata(\rd_ptr[7]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[7]~q ),
	.prn(vcc));
defparam \rd_ptr[7] .is_wysiwyg = "true";
defparam \rd_ptr[7] .power_up = "low";

cyclonev_lcell_comb \Add1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~9 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~0 (
	.dataa(!\wr_ptr[5]~q ),
	.datab(!\wr_ptr[6]~q ),
	.datac(!\wr_ptr[7]~q ),
	.datad(!\Add1~1_sumout ),
	.datae(!\Add1~5_sumout ),
	.dataf(!\Add1~9_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~0 .extended_lut = "off";
defparam \internal_out_valid~0 .lut_mask = 64'h8040201008040201;
defparam \internal_out_valid~0 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~1 (
	.dataa(!\wr_ptr[2]~q ),
	.datab(!\wr_ptr[3]~q ),
	.datac(!\wr_ptr[4]~q ),
	.datad(!\Add1~13_sumout ),
	.datae(!\Add1~17_sumout ),
	.dataf(!\Add1~21_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~1 .extended_lut = "off";
defparam \internal_out_valid~1 .lut_mask = 64'h8040201008040201;
defparam \internal_out_valid~1 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~5 (
	.dataa(!\wr_ptr[0]~q ),
	.datab(!\wr_ptr[1]~q ),
	.datac(!\read~0_combout ),
	.datad(!\Add1~25_sumout ),
	.datae(!\Add1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~5 .extended_lut = "off";
defparam \internal_out_valid~5 .lut_mask = 64'h8040201080402010;
defparam \internal_out_valid~5 .shared_arith = "off";

cyclonev_lcell_comb \Add0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~33_sumout ),
	.cout(\Add0~34 ),
	.shareout());
defparam \Add0~33 .extended_lut = "off";
defparam \Add0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~33 .shared_arith = "off";

dffeas \wr_ptr[8] (
	.clk(clk),
	.d(\Add0~33_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[8]~q ),
	.prn(vcc));
defparam \wr_ptr[8] .is_wysiwyg = "true";
defparam \wr_ptr[8] .power_up = "low";

cyclonev_lcell_comb \Add0~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\wr_ptr[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~37_sumout ),
	.cout(),
	.shareout());
defparam \Add0~37 .extended_lut = "off";
defparam \Add0~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~37 .shared_arith = "off";

dffeas \wr_ptr[9] (
	.clk(clk),
	.d(\Add0~37_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\write~combout ),
	.q(\wr_ptr[9]~q ),
	.prn(vcc));
defparam \wr_ptr[9] .is_wysiwyg = "true";
defparam \wr_ptr[9] .power_up = "low";

dffeas \rd_ptr[8] (
	.clk(clk),
	.d(\Add1~33_sumout ),
	.asdata(\rd_ptr[8]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[8]~q ),
	.prn(vcc));
defparam \rd_ptr[8] .is_wysiwyg = "true";
defparam \rd_ptr[8] .power_up = "low";

cyclonev_lcell_comb \Add1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~33_sumout ),
	.cout(\Add1~34 ),
	.shareout());
defparam \Add1~33 .extended_lut = "off";
defparam \Add1~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~33 .shared_arith = "off";

dffeas \rd_ptr[9] (
	.clk(clk),
	.d(\Add1~37_sumout ),
	.asdata(\rd_ptr[9]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[9]~q ),
	.prn(vcc));
defparam \rd_ptr[9] .is_wysiwyg = "true";
defparam \rd_ptr[9] .power_up = "low";

cyclonev_lcell_comb \Add1~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~37_sumout ),
	.cout(),
	.shareout());
defparam \Add1~37 .extended_lut = "off";
defparam \Add1~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~37 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~3 (
	.dataa(!\wr_ptr[8]~q ),
	.datab(!\wr_ptr[9]~q ),
	.datac(!\Add1~33_sumout ),
	.datad(!\Add1~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~3 .extended_lut = "off";
defparam \internal_out_valid~3 .lut_mask = 64'h8421842184218421;
defparam \internal_out_valid~3 .shared_arith = "off";

cyclonev_lcell_comb \next_empty~0 (
	.dataa(!full1),
	.datab(!out_valid1),
	.datac(!sc_fifo_0_in_valid),
	.datad(!sc_fifo_0_out_ready),
	.datae(!\internal_out_valid~q ),
	.dataf(!\empty~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_empty~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_empty~0 .extended_lut = "off";
defparam \next_empty~0 .lut_mask = 64'hF5F5FDFF00000000;
defparam \next_empty~0 .shared_arith = "off";

cyclonev_lcell_comb \next_empty~1 (
	.dataa(!\internal_out_valid~0_combout ),
	.datab(!\internal_out_valid~1_combout ),
	.datac(!\internal_out_valid~5_combout ),
	.datad(!\internal_out_valid~3_combout ),
	.datae(!\write~combout ),
	.dataf(!\next_empty~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_empty~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_empty~1 .extended_lut = "off";
defparam \next_empty~1 .lut_mask = 64'hFFFEFFFF00000000;
defparam \next_empty~1 .shared_arith = "off";

dffeas empty(
	.clk(clk),
	.d(\next_empty~1_combout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\empty~q ),
	.prn(vcc));
defparam empty.is_wysiwyg = "true";
defparam empty.power_up = "low";

cyclonev_lcell_comb \Equal0~0 (
	.dataa(!\wr_ptr[1]~q ),
	.datab(!\Add1~29_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~0 .extended_lut = "off";
defparam \Equal0~0 .lut_mask = 64'h6666666666666666;
defparam \Equal0~0 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~2 (
	.dataa(!out_valid1),
	.datab(!\wr_ptr[0]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~2 .extended_lut = "off";
defparam \internal_out_valid~2 .lut_mask = 64'h008C0023008C0023;
defparam \internal_out_valid~2 .shared_arith = "off";

cyclonev_lcell_comb \internal_out_valid~4 (
	.dataa(!\empty~q ),
	.datab(!\Equal0~0_combout ),
	.datac(!\internal_out_valid~0_combout ),
	.datad(!\internal_out_valid~1_combout ),
	.datae(!\internal_out_valid~2_combout ),
	.dataf(!\internal_out_valid~3_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_valid~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \internal_out_valid~4 .extended_lut = "off";
defparam \internal_out_valid~4 .lut_mask = 64'h5555555555555551;
defparam \internal_out_valid~4 .shared_arith = "off";

dffeas internal_out_valid(
	.clk(clk),
	.d(\internal_out_valid~4_combout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\internal_out_valid~q ),
	.prn(vcc));
defparam internal_out_valid.is_wysiwyg = "true";
defparam internal_out_valid.power_up = "low";

cyclonev_lcell_comb \read~0 (
	.dataa(!out_valid1),
	.datab(!sc_fifo_0_out_ready),
	.datac(!\internal_out_valid~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\read~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \read~0 .extended_lut = "off";
defparam \read~0 .lut_mask = 64'hF4F4F4F4F4F4F4F4;
defparam \read~0 .shared_arith = "off";

dffeas \rd_ptr[0] (
	.clk(clk),
	.d(\Add1~25_sumout ),
	.asdata(\rd_ptr[0]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[0]~q ),
	.prn(vcc));
defparam \rd_ptr[0] .is_wysiwyg = "true";
defparam \rd_ptr[0] .power_up = "low";

cyclonev_lcell_comb \Add1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~29_sumout ),
	.cout(\Add1~30 ),
	.shareout());
defparam \Add1~29 .extended_lut = "off";
defparam \Add1~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~29 .shared_arith = "off";

dffeas \rd_ptr[1] (
	.clk(clk),
	.d(\Add1~29_sumout ),
	.asdata(\rd_ptr[1]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[1]~q ),
	.prn(vcc));
defparam \rd_ptr[1] .is_wysiwyg = "true";
defparam \rd_ptr[1] .power_up = "low";

cyclonev_lcell_comb \Add1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~13_sumout ),
	.cout(\Add1~14 ),
	.shareout());
defparam \Add1~13 .extended_lut = "off";
defparam \Add1~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~13 .shared_arith = "off";

dffeas \rd_ptr[2] (
	.clk(clk),
	.d(\Add1~13_sumout ),
	.asdata(\rd_ptr[2]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[2]~q ),
	.prn(vcc));
defparam \rd_ptr[2] .is_wysiwyg = "true";
defparam \rd_ptr[2] .power_up = "low";

cyclonev_lcell_comb \Add1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~17_sumout ),
	.cout(\Add1~18 ),
	.shareout());
defparam \Add1~17 .extended_lut = "off";
defparam \Add1~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~17 .shared_arith = "off";

dffeas \rd_ptr[3] (
	.clk(clk),
	.d(\Add1~17_sumout ),
	.asdata(\rd_ptr[3]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[3]~q ),
	.prn(vcc));
defparam \rd_ptr[3] .is_wysiwyg = "true";
defparam \rd_ptr[3] .power_up = "low";

cyclonev_lcell_comb \Add1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\rd_ptr[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~21_sumout ),
	.cout(\Add1~22 ),
	.shareout());
defparam \Add1~21 .extended_lut = "off";
defparam \Add1~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add1~21 .shared_arith = "off";

dffeas \rd_ptr[4] (
	.clk(clk),
	.d(\Add1~21_sumout ),
	.asdata(\rd_ptr[4]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[4]~q ),
	.prn(vcc));
defparam \rd_ptr[4] .is_wysiwyg = "true";
defparam \rd_ptr[4] .power_up = "low";

dffeas \rd_ptr[5] (
	.clk(clk),
	.d(\Add1~1_sumout ),
	.asdata(\rd_ptr[5]~q ),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read~0_combout ),
	.ena(vcc),
	.q(\rd_ptr[5]~q ),
	.prn(vcc));
defparam \rd_ptr[5] .is_wysiwyg = "true";
defparam \rd_ptr[5] .power_up = "low";

cyclonev_lcell_comb \next_full~0 (
	.dataa(!\rd_ptr[5]~q ),
	.datab(!\Add0~1_sumout ),
	.datac(!\rd_ptr[6]~q ),
	.datad(!\Add0~5_sumout ),
	.datae(!\rd_ptr[7]~q ),
	.dataf(!\Add0~9_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_full~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_full~0 .extended_lut = "off";
defparam \next_full~0 .lut_mask = 64'h9009000000009009;
defparam \next_full~0 .shared_arith = "off";

cyclonev_lcell_comb \next_full~1 (
	.dataa(!\rd_ptr[2]~q ),
	.datab(!\Add0~13_sumout ),
	.datac(!\rd_ptr[3]~q ),
	.datad(!\Add0~17_sumout ),
	.datae(!\rd_ptr[4]~q ),
	.dataf(!\Add0~21_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_full~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_full~1 .extended_lut = "off";
defparam \next_full~1 .lut_mask = 64'h9009000000009009;
defparam \next_full~1 .shared_arith = "off";

cyclonev_lcell_comb \next_full~2 (
	.dataa(!sc_fifo_0_in_valid),
	.datab(!\rd_ptr[0]~q ),
	.datac(!\Add0~25_sumout ),
	.datad(!\rd_ptr[1]~q ),
	.datae(!\Add0~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_full~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_full~2 .extended_lut = "off";
defparam \next_full~2 .lut_mask = 64'h4100004141000041;
defparam \next_full~2 .shared_arith = "off";

cyclonev_lcell_comb \next_full~3 (
	.dataa(!\rd_ptr[8]~q ),
	.datab(!\Add0~33_sumout ),
	.datac(!\rd_ptr[9]~q ),
	.datad(!\Add0~37_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_full~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_full~3 .extended_lut = "off";
defparam \next_full~3 .lut_mask = 64'h9009900990099009;
defparam \next_full~3 .shared_arith = "off";

cyclonev_lcell_comb \next_full~4 (
	.dataa(!full1),
	.datab(!\next_full~0_combout ),
	.datac(!\next_full~1_combout ),
	.datad(!\next_full~2_combout ),
	.datae(!\next_full~3_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\next_full~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \next_full~4 .extended_lut = "off";
defparam \next_full~4 .lut_mask = 64'h5555555755555557;
defparam \next_full~4 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[0]~0 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[0]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[0]~0 .extended_lut = "off";
defparam \mem_rd_ptr[0]~0 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[1]~1 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[1]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[1]~1 .extended_lut = "off";
defparam \mem_rd_ptr[1]~1 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[2]~2 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[2]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~13_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[2]~2 .extended_lut = "off";
defparam \mem_rd_ptr[2]~2 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[3]~3 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[3]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[3]~3 .extended_lut = "off";
defparam \mem_rd_ptr[3]~3 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[4]~4 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[4]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[4]~4 .extended_lut = "off";
defparam \mem_rd_ptr[4]~4 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[5]~5 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[5]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~1_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[5]~5 .extended_lut = "off";
defparam \mem_rd_ptr[5]~5 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[6]~6 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[6]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[6]~6 .extended_lut = "off";
defparam \mem_rd_ptr[6]~6 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[7]~7 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[7]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~9_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[7]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[7]~7 .extended_lut = "off";
defparam \mem_rd_ptr[7]~7 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[7]~7 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[8]~8 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[8]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[8]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[8]~8 .extended_lut = "off";
defparam \mem_rd_ptr[8]~8 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[8]~8 .shared_arith = "off";

cyclonev_lcell_comb \mem_rd_ptr[9]~9 (
	.dataa(!out_valid1),
	.datab(!\rd_ptr[9]~q ),
	.datac(!sc_fifo_0_out_ready),
	.datad(!\internal_out_valid~q ),
	.datae(!\Add1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\mem_rd_ptr[9]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \mem_rd_ptr[9]~9 .extended_lut = "off";
defparam \mem_rd_ptr[9]~9 .lut_mask = 64'h331033BF331033BF;
defparam \mem_rd_ptr[9]~9 .shared_arith = "off";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a0 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_0}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_first_bit_number = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a0 .ram_block_type = "auto";

cyclonev_lcell_comb internal_out_ready(
	.dataa(!out_valid1),
	.datab(!sc_fifo_0_out_ready),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\internal_out_ready~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam internal_out_ready.extended_lut = "off";
defparam internal_out_ready.lut_mask = 64'hBBBBBBBBBBBBBBBB;
defparam internal_out_ready.shared_arith = "off";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a1 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_1}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a1 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_first_bit_number = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_first_bit_number = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a1 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a2 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_2}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a2 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_first_bit_number = 2;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_first_bit_number = 2;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a2 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a3 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_3}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a3 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_first_bit_number = 3;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_first_bit_number = 3;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a3 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a4 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_4}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a4 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_first_bit_number = 4;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_first_bit_number = 4;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a4 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a5 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_5}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a5 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_first_bit_number = 5;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_first_bit_number = 5;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a5 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a6 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_6}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a6 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_first_bit_number = 6;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_first_bit_number = 6;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a6 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a7 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_7}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a7 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_first_bit_number = 7;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_first_bit_number = 7;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a7 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a8 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_8}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a8 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_first_bit_number = 8;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_first_bit_number = 8;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a8 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a9 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_9}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a9 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_first_bit_number = 9;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_first_bit_number = 9;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a9 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a10 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_10}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a10 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_first_bit_number = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_first_bit_number = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a10 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a11 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_11}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a11 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_first_bit_number = 11;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_first_bit_number = 11;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a11 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a12 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_12}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a12 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_first_bit_number = 12;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_first_bit_number = 12;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a12 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a13 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_13}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a13 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_first_bit_number = 13;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_first_bit_number = 13;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a13 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a14 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_14}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a14 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_first_bit_number = 14;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_first_bit_number = 14;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a14 .ram_block_type = "auto";

cyclonev_ram_block \mem_rtl_0|auto_generated|ram_block1a15 (
	.portawe(\write~combout ),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,sc_fifo_0_in_data_15}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,\wr_ptr[9]~q ,\wr_ptr[8]~q ,\wr_ptr[7]~q ,\wr_ptr[6]~q ,\wr_ptr[5]~q ,\wr_ptr[4]~q ,\wr_ptr[3]~q ,\wr_ptr[2]~q ,\wr_ptr[1]~q ,\wr_ptr[0]~q }),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,\mem_rd_ptr[9]~9_combout ,\mem_rd_ptr[8]~8_combout ,\mem_rd_ptr[7]~7_combout ,\mem_rd_ptr[6]~6_combout ,\mem_rd_ptr[5]~5_combout ,\mem_rd_ptr[4]~4_combout ,\mem_rd_ptr[3]~3_combout ,\mem_rd_ptr[2]~2_combout ,\mem_rd_ptr[1]~1_combout ,
\mem_rd_ptr[0]~0_combout }),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(\mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus ),
	.eccstatus(),
	.dftout());
defparam \mem_rtl_0|auto_generated|ram_block1a15 .data_interleave_offset_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .data_interleave_width_in_bits = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .logical_ram_name = "altera_avalon_sc_fifo:sc_fifo_0|altsyncram:mem_rtl_0|altsyncram_ubn1:auto_generated|ALTSYNCRAM";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .mixed_port_feed_through_mode = "old";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .operation_mode = "dual_port";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_first_bit_number = 15;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_address_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_address_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_address_width = 10;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_data_out_clear = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_data_out_clock = "none";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_data_width = 1;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_first_address = 0;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_first_bit_number = 15;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_last_address = 1023;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_logical_ram_depth = 1024;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_logical_ram_width = 16;
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .port_b_read_enable_clock = "clock0";
defparam \mem_rtl_0|auto_generated|ram_block1a15 .ram_block_type = "auto";

endmodule
