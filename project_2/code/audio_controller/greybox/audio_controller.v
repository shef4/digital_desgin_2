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

// DATE "04/13/2023 09:33:52"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module audio_controller (
	audio_0_avalon_left_channel_sink_data,
	audio_0_avalon_left_channel_sink_valid,
	audio_0_avalon_left_channel_sink_ready,
	audio_0_avalon_right_channel_sink_data,
	audio_0_avalon_right_channel_sink_valid,
	audio_0_avalon_right_channel_sink_ready,
	audio_0_clk_clk,
	audio_0_external_interface_BCLK,
	audio_0_external_interface_DACDAT,
	audio_0_external_interface_DACLRCK,
	audio_0_reset_reset)/* synthesis synthesis_greybox=0 */;
input 	[15:0] audio_0_avalon_left_channel_sink_data;
input 	audio_0_avalon_left_channel_sink_valid;
output 	audio_0_avalon_left_channel_sink_ready;
input 	[15:0] audio_0_avalon_right_channel_sink_data;
input 	audio_0_avalon_right_channel_sink_valid;
output 	audio_0_avalon_right_channel_sink_ready;
input 	audio_0_clk_clk;
input 	audio_0_external_interface_BCLK;
output 	audio_0_external_interface_DACDAT;
input 	audio_0_external_interface_DACLRCK;
input 	audio_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \audio_0|Audio_Out_Serializer|serial_audio_out_data~q ;
wire \audio_0|WideOr0~combout ;
wire \audio_0|WideOr1~combout ;
wire \audio_0_clk_clk~input_o ;
wire \audio_0_reset_reset~input_o ;
wire \audio_0_avalon_left_channel_sink_valid~input_o ;
wire \audio_0_avalon_right_channel_sink_valid~input_o ;
wire \audio_0_avalon_left_channel_sink_data[15]~input_o ;
wire \audio_0_external_interface_DACLRCK~input_o ;
wire \audio_0_avalon_right_channel_sink_data[15]~input_o ;
wire \audio_0_external_interface_BCLK~input_o ;
wire \audio_0_avalon_left_channel_sink_data[14]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[14]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[13]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[13]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[12]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[12]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[11]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[11]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[10]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[10]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[9]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[9]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[8]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[8]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[7]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[7]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[6]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[6]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[5]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[5]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[4]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[4]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[3]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[3]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[2]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[2]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[1]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[1]~input_o ;
wire \audio_0_avalon_left_channel_sink_data[0]~input_o ;
wire \audio_0_avalon_right_channel_sink_data[0]~input_o ;


audio_controller_audio_controller_audio_0 audio_0(
	.serial_audio_out_data(\audio_0|Audio_Out_Serializer|serial_audio_out_data~q ),
	.WideOr01(\audio_0|WideOr0~combout ),
	.WideOr11(\audio_0|WideOr1~combout ),
	.audio_0_clk_clk(\audio_0_clk_clk~input_o ),
	.audio_0_reset_reset(\audio_0_reset_reset~input_o ),
	.audio_0_avalon_left_channel_sink_valid(\audio_0_avalon_left_channel_sink_valid~input_o ),
	.audio_0_avalon_right_channel_sink_valid(\audio_0_avalon_right_channel_sink_valid~input_o ),
	.audio_0_avalon_left_channel_sink_data_15(\audio_0_avalon_left_channel_sink_data[15]~input_o ),
	.audio_0_external_interface_DACLRCK(\audio_0_external_interface_DACLRCK~input_o ),
	.audio_0_avalon_right_channel_sink_data_15(\audio_0_avalon_right_channel_sink_data[15]~input_o ),
	.audio_0_external_interface_BCLK(\audio_0_external_interface_BCLK~input_o ),
	.audio_0_avalon_left_channel_sink_data_14(\audio_0_avalon_left_channel_sink_data[14]~input_o ),
	.audio_0_avalon_right_channel_sink_data_14(\audio_0_avalon_right_channel_sink_data[14]~input_o ),
	.audio_0_avalon_left_channel_sink_data_13(\audio_0_avalon_left_channel_sink_data[13]~input_o ),
	.audio_0_avalon_right_channel_sink_data_13(\audio_0_avalon_right_channel_sink_data[13]~input_o ),
	.audio_0_avalon_left_channel_sink_data_12(\audio_0_avalon_left_channel_sink_data[12]~input_o ),
	.audio_0_avalon_right_channel_sink_data_12(\audio_0_avalon_right_channel_sink_data[12]~input_o ),
	.audio_0_avalon_left_channel_sink_data_11(\audio_0_avalon_left_channel_sink_data[11]~input_o ),
	.audio_0_avalon_right_channel_sink_data_11(\audio_0_avalon_right_channel_sink_data[11]~input_o ),
	.audio_0_avalon_left_channel_sink_data_10(\audio_0_avalon_left_channel_sink_data[10]~input_o ),
	.audio_0_avalon_right_channel_sink_data_10(\audio_0_avalon_right_channel_sink_data[10]~input_o ),
	.audio_0_avalon_left_channel_sink_data_9(\audio_0_avalon_left_channel_sink_data[9]~input_o ),
	.audio_0_avalon_right_channel_sink_data_9(\audio_0_avalon_right_channel_sink_data[9]~input_o ),
	.audio_0_avalon_left_channel_sink_data_8(\audio_0_avalon_left_channel_sink_data[8]~input_o ),
	.audio_0_avalon_right_channel_sink_data_8(\audio_0_avalon_right_channel_sink_data[8]~input_o ),
	.audio_0_avalon_left_channel_sink_data_7(\audio_0_avalon_left_channel_sink_data[7]~input_o ),
	.audio_0_avalon_right_channel_sink_data_7(\audio_0_avalon_right_channel_sink_data[7]~input_o ),
	.audio_0_avalon_left_channel_sink_data_6(\audio_0_avalon_left_channel_sink_data[6]~input_o ),
	.audio_0_avalon_right_channel_sink_data_6(\audio_0_avalon_right_channel_sink_data[6]~input_o ),
	.audio_0_avalon_left_channel_sink_data_5(\audio_0_avalon_left_channel_sink_data[5]~input_o ),
	.audio_0_avalon_right_channel_sink_data_5(\audio_0_avalon_right_channel_sink_data[5]~input_o ),
	.audio_0_avalon_left_channel_sink_data_4(\audio_0_avalon_left_channel_sink_data[4]~input_o ),
	.audio_0_avalon_right_channel_sink_data_4(\audio_0_avalon_right_channel_sink_data[4]~input_o ),
	.audio_0_avalon_left_channel_sink_data_3(\audio_0_avalon_left_channel_sink_data[3]~input_o ),
	.audio_0_avalon_right_channel_sink_data_3(\audio_0_avalon_right_channel_sink_data[3]~input_o ),
	.audio_0_avalon_left_channel_sink_data_2(\audio_0_avalon_left_channel_sink_data[2]~input_o ),
	.audio_0_avalon_right_channel_sink_data_2(\audio_0_avalon_right_channel_sink_data[2]~input_o ),
	.audio_0_avalon_left_channel_sink_data_1(\audio_0_avalon_left_channel_sink_data[1]~input_o ),
	.audio_0_avalon_right_channel_sink_data_1(\audio_0_avalon_right_channel_sink_data[1]~input_o ),
	.audio_0_avalon_left_channel_sink_data_0(\audio_0_avalon_left_channel_sink_data[0]~input_o ),
	.audio_0_avalon_right_channel_sink_data_0(\audio_0_avalon_right_channel_sink_data[0]~input_o ));

assign \audio_0_clk_clk~input_o  = audio_0_clk_clk;

assign \audio_0_reset_reset~input_o  = audio_0_reset_reset;

assign \audio_0_avalon_left_channel_sink_valid~input_o  = audio_0_avalon_left_channel_sink_valid;

assign \audio_0_avalon_right_channel_sink_valid~input_o  = audio_0_avalon_right_channel_sink_valid;

assign \audio_0_avalon_left_channel_sink_data[15]~input_o  = audio_0_avalon_left_channel_sink_data[15];

assign \audio_0_external_interface_DACLRCK~input_o  = audio_0_external_interface_DACLRCK;

assign \audio_0_avalon_right_channel_sink_data[15]~input_o  = audio_0_avalon_right_channel_sink_data[15];

assign \audio_0_external_interface_BCLK~input_o  = audio_0_external_interface_BCLK;

assign \audio_0_avalon_left_channel_sink_data[14]~input_o  = audio_0_avalon_left_channel_sink_data[14];

assign \audio_0_avalon_right_channel_sink_data[14]~input_o  = audio_0_avalon_right_channel_sink_data[14];

assign \audio_0_avalon_left_channel_sink_data[13]~input_o  = audio_0_avalon_left_channel_sink_data[13];

assign \audio_0_avalon_right_channel_sink_data[13]~input_o  = audio_0_avalon_right_channel_sink_data[13];

assign \audio_0_avalon_left_channel_sink_data[12]~input_o  = audio_0_avalon_left_channel_sink_data[12];

assign \audio_0_avalon_right_channel_sink_data[12]~input_o  = audio_0_avalon_right_channel_sink_data[12];

assign \audio_0_avalon_left_channel_sink_data[11]~input_o  = audio_0_avalon_left_channel_sink_data[11];

assign \audio_0_avalon_right_channel_sink_data[11]~input_o  = audio_0_avalon_right_channel_sink_data[11];

assign \audio_0_avalon_left_channel_sink_data[10]~input_o  = audio_0_avalon_left_channel_sink_data[10];

assign \audio_0_avalon_right_channel_sink_data[10]~input_o  = audio_0_avalon_right_channel_sink_data[10];

assign \audio_0_avalon_left_channel_sink_data[9]~input_o  = audio_0_avalon_left_channel_sink_data[9];

assign \audio_0_avalon_right_channel_sink_data[9]~input_o  = audio_0_avalon_right_channel_sink_data[9];

assign \audio_0_avalon_left_channel_sink_data[8]~input_o  = audio_0_avalon_left_channel_sink_data[8];

assign \audio_0_avalon_right_channel_sink_data[8]~input_o  = audio_0_avalon_right_channel_sink_data[8];

assign \audio_0_avalon_left_channel_sink_data[7]~input_o  = audio_0_avalon_left_channel_sink_data[7];

assign \audio_0_avalon_right_channel_sink_data[7]~input_o  = audio_0_avalon_right_channel_sink_data[7];

assign \audio_0_avalon_left_channel_sink_data[6]~input_o  = audio_0_avalon_left_channel_sink_data[6];

assign \audio_0_avalon_right_channel_sink_data[6]~input_o  = audio_0_avalon_right_channel_sink_data[6];

assign \audio_0_avalon_left_channel_sink_data[5]~input_o  = audio_0_avalon_left_channel_sink_data[5];

assign \audio_0_avalon_right_channel_sink_data[5]~input_o  = audio_0_avalon_right_channel_sink_data[5];

assign \audio_0_avalon_left_channel_sink_data[4]~input_o  = audio_0_avalon_left_channel_sink_data[4];

assign \audio_0_avalon_right_channel_sink_data[4]~input_o  = audio_0_avalon_right_channel_sink_data[4];

assign \audio_0_avalon_left_channel_sink_data[3]~input_o  = audio_0_avalon_left_channel_sink_data[3];

assign \audio_0_avalon_right_channel_sink_data[3]~input_o  = audio_0_avalon_right_channel_sink_data[3];

assign \audio_0_avalon_left_channel_sink_data[2]~input_o  = audio_0_avalon_left_channel_sink_data[2];

assign \audio_0_avalon_right_channel_sink_data[2]~input_o  = audio_0_avalon_right_channel_sink_data[2];

assign \audio_0_avalon_left_channel_sink_data[1]~input_o  = audio_0_avalon_left_channel_sink_data[1];

assign \audio_0_avalon_right_channel_sink_data[1]~input_o  = audio_0_avalon_right_channel_sink_data[1];

assign \audio_0_avalon_left_channel_sink_data[0]~input_o  = audio_0_avalon_left_channel_sink_data[0];

assign \audio_0_avalon_right_channel_sink_data[0]~input_o  = audio_0_avalon_right_channel_sink_data[0];

assign audio_0_avalon_left_channel_sink_ready = \audio_0|WideOr0~combout ;

assign audio_0_avalon_right_channel_sink_ready = \audio_0|WideOr1~combout ;

assign audio_0_external_interface_DACDAT = \audio_0|Audio_Out_Serializer|serial_audio_out_data~q ;

endmodule

module audio_controller_audio_controller_audio_0 (
	serial_audio_out_data,
	WideOr01,
	WideOr11,
	audio_0_clk_clk,
	audio_0_reset_reset,
	audio_0_avalon_left_channel_sink_valid,
	audio_0_avalon_right_channel_sink_valid,
	audio_0_avalon_left_channel_sink_data_15,
	audio_0_external_interface_DACLRCK,
	audio_0_avalon_right_channel_sink_data_15,
	audio_0_external_interface_BCLK,
	audio_0_avalon_left_channel_sink_data_14,
	audio_0_avalon_right_channel_sink_data_14,
	audio_0_avalon_left_channel_sink_data_13,
	audio_0_avalon_right_channel_sink_data_13,
	audio_0_avalon_left_channel_sink_data_12,
	audio_0_avalon_right_channel_sink_data_12,
	audio_0_avalon_left_channel_sink_data_11,
	audio_0_avalon_right_channel_sink_data_11,
	audio_0_avalon_left_channel_sink_data_10,
	audio_0_avalon_right_channel_sink_data_10,
	audio_0_avalon_left_channel_sink_data_9,
	audio_0_avalon_right_channel_sink_data_9,
	audio_0_avalon_left_channel_sink_data_8,
	audio_0_avalon_right_channel_sink_data_8,
	audio_0_avalon_left_channel_sink_data_7,
	audio_0_avalon_right_channel_sink_data_7,
	audio_0_avalon_left_channel_sink_data_6,
	audio_0_avalon_right_channel_sink_data_6,
	audio_0_avalon_left_channel_sink_data_5,
	audio_0_avalon_right_channel_sink_data_5,
	audio_0_avalon_left_channel_sink_data_4,
	audio_0_avalon_right_channel_sink_data_4,
	audio_0_avalon_left_channel_sink_data_3,
	audio_0_avalon_right_channel_sink_data_3,
	audio_0_avalon_left_channel_sink_data_2,
	audio_0_avalon_right_channel_sink_data_2,
	audio_0_avalon_left_channel_sink_data_1,
	audio_0_avalon_right_channel_sink_data_1,
	audio_0_avalon_left_channel_sink_data_0,
	audio_0_avalon_right_channel_sink_data_0)/* synthesis synthesis_greybox=0 */;
output 	serial_audio_out_data;
output 	WideOr01;
output 	WideOr11;
input 	audio_0_clk_clk;
input 	audio_0_reset_reset;
input 	audio_0_avalon_left_channel_sink_valid;
input 	audio_0_avalon_right_channel_sink_valid;
input 	audio_0_avalon_left_channel_sink_data_15;
input 	audio_0_external_interface_DACLRCK;
input 	audio_0_avalon_right_channel_sink_data_15;
input 	audio_0_external_interface_BCLK;
input 	audio_0_avalon_left_channel_sink_data_14;
input 	audio_0_avalon_right_channel_sink_data_14;
input 	audio_0_avalon_left_channel_sink_data_13;
input 	audio_0_avalon_right_channel_sink_data_13;
input 	audio_0_avalon_left_channel_sink_data_12;
input 	audio_0_avalon_right_channel_sink_data_12;
input 	audio_0_avalon_left_channel_sink_data_11;
input 	audio_0_avalon_right_channel_sink_data_11;
input 	audio_0_avalon_left_channel_sink_data_10;
input 	audio_0_avalon_right_channel_sink_data_10;
input 	audio_0_avalon_left_channel_sink_data_9;
input 	audio_0_avalon_right_channel_sink_data_9;
input 	audio_0_avalon_left_channel_sink_data_8;
input 	audio_0_avalon_right_channel_sink_data_8;
input 	audio_0_avalon_left_channel_sink_data_7;
input 	audio_0_avalon_right_channel_sink_data_7;
input 	audio_0_avalon_left_channel_sink_data_6;
input 	audio_0_avalon_right_channel_sink_data_6;
input 	audio_0_avalon_left_channel_sink_data_5;
input 	audio_0_avalon_right_channel_sink_data_5;
input 	audio_0_avalon_left_channel_sink_data_4;
input 	audio_0_avalon_right_channel_sink_data_4;
input 	audio_0_avalon_left_channel_sink_data_3;
input 	audio_0_avalon_right_channel_sink_data_3;
input 	audio_0_avalon_left_channel_sink_data_2;
input 	audio_0_avalon_right_channel_sink_data_2;
input 	audio_0_avalon_left_channel_sink_data_1;
input 	audio_0_avalon_right_channel_sink_data_1;
input 	audio_0_avalon_left_channel_sink_data_0;
input 	audio_0_avalon_right_channel_sink_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Audio_Out_Serializer|left_channel_fifo_write_space[0]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[1]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[2]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[3]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[4]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[5]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[6]~q ;
wire \Audio_Out_Serializer|left_channel_fifo_write_space[7]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[6]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[7]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[0]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[1]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[2]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[3]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[4]~q ;
wire \Audio_Out_Serializer|right_channel_fifo_write_space[5]~q ;
wire \done_dac_channel_sync~q ;
wire \DAC_Left_Right_Clock_Edges|cur_test_clk~q ;
wire \DAC_Left_Right_Clock_Edges|last_test_clk~q ;
wire \Bit_Clock_Edges|last_test_clk~q ;
wire \Bit_Clock_Edges|cur_test_clk~q ;
wire \DAC_Left_Right_Clock_Edges|found_edge~combout ;
wire \done_dac_channel_sync~0_combout ;
wire \WideOr0~0_combout ;
wire \WideOr0~1_combout ;
wire \WideOr1~0_combout ;


audio_controller_altera_up_clock_edge Bit_Clock_Edges(
	.last_test_clk1(\Bit_Clock_Edges|last_test_clk~q ),
	.cur_test_clk1(\Bit_Clock_Edges|cur_test_clk~q ),
	.clk(audio_0_clk_clk),
	.test_clk(audio_0_external_interface_BCLK));

audio_controller_altera_up_clock_edge_1 DAC_Left_Right_Clock_Edges(
	.cur_test_clk1(\DAC_Left_Right_Clock_Edges|cur_test_clk~q ),
	.last_test_clk1(\DAC_Left_Right_Clock_Edges|last_test_clk~q ),
	.found_edge1(\DAC_Left_Right_Clock_Edges|found_edge~combout ),
	.clk(audio_0_clk_clk),
	.test_clk(audio_0_external_interface_DACLRCK));

audio_controller_altera_up_audio_out_serializer Audio_Out_Serializer(
	.left_channel_fifo_write_space_0(\Audio_Out_Serializer|left_channel_fifo_write_space[0]~q ),
	.left_channel_fifo_write_space_1(\Audio_Out_Serializer|left_channel_fifo_write_space[1]~q ),
	.left_channel_fifo_write_space_2(\Audio_Out_Serializer|left_channel_fifo_write_space[2]~q ),
	.left_channel_fifo_write_space_3(\Audio_Out_Serializer|left_channel_fifo_write_space[3]~q ),
	.left_channel_fifo_write_space_4(\Audio_Out_Serializer|left_channel_fifo_write_space[4]~q ),
	.left_channel_fifo_write_space_5(\Audio_Out_Serializer|left_channel_fifo_write_space[5]~q ),
	.left_channel_fifo_write_space_6(\Audio_Out_Serializer|left_channel_fifo_write_space[6]~q ),
	.left_channel_fifo_write_space_7(\Audio_Out_Serializer|left_channel_fifo_write_space[7]~q ),
	.right_channel_fifo_write_space_6(\Audio_Out_Serializer|right_channel_fifo_write_space[6]~q ),
	.right_channel_fifo_write_space_7(\Audio_Out_Serializer|right_channel_fifo_write_space[7]~q ),
	.right_channel_fifo_write_space_0(\Audio_Out_Serializer|right_channel_fifo_write_space[0]~q ),
	.right_channel_fifo_write_space_1(\Audio_Out_Serializer|right_channel_fifo_write_space[1]~q ),
	.right_channel_fifo_write_space_2(\Audio_Out_Serializer|right_channel_fifo_write_space[2]~q ),
	.right_channel_fifo_write_space_3(\Audio_Out_Serializer|right_channel_fifo_write_space[3]~q ),
	.right_channel_fifo_write_space_4(\Audio_Out_Serializer|right_channel_fifo_write_space[4]~q ),
	.right_channel_fifo_write_space_5(\Audio_Out_Serializer|right_channel_fifo_write_space[5]~q ),
	.serial_audio_out_data1(serial_audio_out_data),
	.done_dac_channel_sync(\done_dac_channel_sync~q ),
	.WideOr0(\WideOr0~0_combout ),
	.WideOr01(\WideOr0~1_combout ),
	.WideOr02(WideOr01),
	.WideOr1(\WideOr1~0_combout ),
	.WideOr11(WideOr11),
	.cur_test_clk(\DAC_Left_Right_Clock_Edges|cur_test_clk~q ),
	.last_test_clk(\DAC_Left_Right_Clock_Edges|last_test_clk~q ),
	.last_test_clk1(\Bit_Clock_Edges|last_test_clk~q ),
	.cur_test_clk1(\Bit_Clock_Edges|cur_test_clk~q ),
	.found_edge(\DAC_Left_Right_Clock_Edges|found_edge~combout ),
	.audio_0_clk_clk(audio_0_clk_clk),
	.audio_0_reset_reset(audio_0_reset_reset),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid),
	.audio_0_avalon_left_channel_sink_data_15(audio_0_avalon_left_channel_sink_data_15),
	.audio_0_avalon_right_channel_sink_data_15(audio_0_avalon_right_channel_sink_data_15),
	.audio_0_avalon_left_channel_sink_data_14(audio_0_avalon_left_channel_sink_data_14),
	.audio_0_avalon_right_channel_sink_data_14(audio_0_avalon_right_channel_sink_data_14),
	.audio_0_avalon_left_channel_sink_data_13(audio_0_avalon_left_channel_sink_data_13),
	.audio_0_avalon_right_channel_sink_data_13(audio_0_avalon_right_channel_sink_data_13),
	.audio_0_avalon_left_channel_sink_data_12(audio_0_avalon_left_channel_sink_data_12),
	.audio_0_avalon_right_channel_sink_data_12(audio_0_avalon_right_channel_sink_data_12),
	.audio_0_avalon_left_channel_sink_data_11(audio_0_avalon_left_channel_sink_data_11),
	.audio_0_avalon_right_channel_sink_data_11(audio_0_avalon_right_channel_sink_data_11),
	.audio_0_avalon_left_channel_sink_data_10(audio_0_avalon_left_channel_sink_data_10),
	.audio_0_avalon_right_channel_sink_data_10(audio_0_avalon_right_channel_sink_data_10),
	.audio_0_avalon_left_channel_sink_data_9(audio_0_avalon_left_channel_sink_data_9),
	.audio_0_avalon_right_channel_sink_data_9(audio_0_avalon_right_channel_sink_data_9),
	.audio_0_avalon_left_channel_sink_data_8(audio_0_avalon_left_channel_sink_data_8),
	.audio_0_avalon_right_channel_sink_data_8(audio_0_avalon_right_channel_sink_data_8),
	.audio_0_avalon_left_channel_sink_data_7(audio_0_avalon_left_channel_sink_data_7),
	.audio_0_avalon_right_channel_sink_data_7(audio_0_avalon_right_channel_sink_data_7),
	.audio_0_avalon_left_channel_sink_data_6(audio_0_avalon_left_channel_sink_data_6),
	.audio_0_avalon_right_channel_sink_data_6(audio_0_avalon_right_channel_sink_data_6),
	.audio_0_avalon_left_channel_sink_data_5(audio_0_avalon_left_channel_sink_data_5),
	.audio_0_avalon_right_channel_sink_data_5(audio_0_avalon_right_channel_sink_data_5),
	.audio_0_avalon_left_channel_sink_data_4(audio_0_avalon_left_channel_sink_data_4),
	.audio_0_avalon_right_channel_sink_data_4(audio_0_avalon_right_channel_sink_data_4),
	.audio_0_avalon_left_channel_sink_data_3(audio_0_avalon_left_channel_sink_data_3),
	.audio_0_avalon_right_channel_sink_data_3(audio_0_avalon_right_channel_sink_data_3),
	.audio_0_avalon_left_channel_sink_data_2(audio_0_avalon_left_channel_sink_data_2),
	.audio_0_avalon_right_channel_sink_data_2(audio_0_avalon_right_channel_sink_data_2),
	.audio_0_avalon_left_channel_sink_data_1(audio_0_avalon_left_channel_sink_data_1),
	.audio_0_avalon_right_channel_sink_data_1(audio_0_avalon_right_channel_sink_data_1),
	.audio_0_avalon_left_channel_sink_data_0(audio_0_avalon_left_channel_sink_data_0),
	.audio_0_avalon_right_channel_sink_data_0(audio_0_avalon_right_channel_sink_data_0));

dffeas done_dac_channel_sync(
	.clk(audio_0_clk_clk),
	.d(\done_dac_channel_sync~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\done_dac_channel_sync~q ),
	.prn(vcc));
defparam done_dac_channel_sync.is_wysiwyg = "true";
defparam done_dac_channel_sync.power_up = "low";

cyclonev_lcell_comb \done_dac_channel_sync~0 (
	.dataa(!\DAC_Left_Right_Clock_Edges|cur_test_clk~q ),
	.datab(!\DAC_Left_Right_Clock_Edges|last_test_clk~q ),
	.datac(!\done_dac_channel_sync~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\done_dac_channel_sync~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \done_dac_channel_sync~0 .extended_lut = "off";
defparam \done_dac_channel_sync~0 .lut_mask = 64'h2F2F2F2F2F2F2F2F;
defparam \done_dac_channel_sync~0 .shared_arith = "off";

cyclonev_lcell_comb WideOr0(
	.dataa(!\WideOr0~0_combout ),
	.datab(!\WideOr0~1_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(WideOr01),
	.sumout(),
	.cout(),
	.shareout());
defparam WideOr0.extended_lut = "off";
defparam WideOr0.lut_mask = 64'hEEEEEEEEEEEEEEEE;
defparam WideOr0.shared_arith = "off";

cyclonev_lcell_comb WideOr1(
	.dataa(!\Audio_Out_Serializer|right_channel_fifo_write_space[6]~q ),
	.datab(!\Audio_Out_Serializer|right_channel_fifo_write_space[7]~q ),
	.datac(!\WideOr1~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(WideOr11),
	.sumout(),
	.cout(),
	.shareout());
defparam WideOr1.extended_lut = "off";
defparam WideOr1.lut_mask = 64'hF7F7F7F7F7F7F7F7;
defparam WideOr1.shared_arith = "off";

cyclonev_lcell_comb \WideOr0~0 (
	.dataa(!\Audio_Out_Serializer|left_channel_fifo_write_space[0]~q ),
	.datab(!\Audio_Out_Serializer|left_channel_fifo_write_space[1]~q ),
	.datac(!\Audio_Out_Serializer|left_channel_fifo_write_space[2]~q ),
	.datad(!\Audio_Out_Serializer|left_channel_fifo_write_space[3]~q ),
	.datae(!\Audio_Out_Serializer|left_channel_fifo_write_space[4]~q ),
	.dataf(!\Audio_Out_Serializer|left_channel_fifo_write_space[5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\WideOr0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \WideOr0~0 .extended_lut = "off";
defparam \WideOr0~0 .lut_mask = 64'h8000000000000000;
defparam \WideOr0~0 .shared_arith = "off";

cyclonev_lcell_comb \WideOr0~1 (
	.dataa(!\Audio_Out_Serializer|left_channel_fifo_write_space[6]~q ),
	.datab(!\Audio_Out_Serializer|left_channel_fifo_write_space[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\WideOr0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \WideOr0~1 .extended_lut = "off";
defparam \WideOr0~1 .lut_mask = 64'h8888888888888888;
defparam \WideOr0~1 .shared_arith = "off";

cyclonev_lcell_comb \WideOr1~0 (
	.dataa(!\Audio_Out_Serializer|right_channel_fifo_write_space[0]~q ),
	.datab(!\Audio_Out_Serializer|right_channel_fifo_write_space[1]~q ),
	.datac(!\Audio_Out_Serializer|right_channel_fifo_write_space[2]~q ),
	.datad(!\Audio_Out_Serializer|right_channel_fifo_write_space[3]~q ),
	.datae(!\Audio_Out_Serializer|right_channel_fifo_write_space[4]~q ),
	.dataf(!\Audio_Out_Serializer|right_channel_fifo_write_space[5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\WideOr1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \WideOr1~0 .extended_lut = "off";
defparam \WideOr1~0 .lut_mask = 64'h8000000000000000;
defparam \WideOr1~0 .shared_arith = "off";

endmodule

module audio_controller_altera_up_audio_out_serializer (
	left_channel_fifo_write_space_0,
	left_channel_fifo_write_space_1,
	left_channel_fifo_write_space_2,
	left_channel_fifo_write_space_3,
	left_channel_fifo_write_space_4,
	left_channel_fifo_write_space_5,
	left_channel_fifo_write_space_6,
	left_channel_fifo_write_space_7,
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	right_channel_fifo_write_space_0,
	right_channel_fifo_write_space_1,
	right_channel_fifo_write_space_2,
	right_channel_fifo_write_space_3,
	right_channel_fifo_write_space_4,
	right_channel_fifo_write_space_5,
	serial_audio_out_data1,
	done_dac_channel_sync,
	WideOr0,
	WideOr01,
	WideOr02,
	WideOr1,
	WideOr11,
	cur_test_clk,
	last_test_clk,
	last_test_clk1,
	cur_test_clk1,
	found_edge,
	audio_0_clk_clk,
	audio_0_reset_reset,
	audio_0_avalon_left_channel_sink_valid,
	audio_0_avalon_right_channel_sink_valid,
	audio_0_avalon_left_channel_sink_data_15,
	audio_0_avalon_right_channel_sink_data_15,
	audio_0_avalon_left_channel_sink_data_14,
	audio_0_avalon_right_channel_sink_data_14,
	audio_0_avalon_left_channel_sink_data_13,
	audio_0_avalon_right_channel_sink_data_13,
	audio_0_avalon_left_channel_sink_data_12,
	audio_0_avalon_right_channel_sink_data_12,
	audio_0_avalon_left_channel_sink_data_11,
	audio_0_avalon_right_channel_sink_data_11,
	audio_0_avalon_left_channel_sink_data_10,
	audio_0_avalon_right_channel_sink_data_10,
	audio_0_avalon_left_channel_sink_data_9,
	audio_0_avalon_right_channel_sink_data_9,
	audio_0_avalon_left_channel_sink_data_8,
	audio_0_avalon_right_channel_sink_data_8,
	audio_0_avalon_left_channel_sink_data_7,
	audio_0_avalon_right_channel_sink_data_7,
	audio_0_avalon_left_channel_sink_data_6,
	audio_0_avalon_right_channel_sink_data_6,
	audio_0_avalon_left_channel_sink_data_5,
	audio_0_avalon_right_channel_sink_data_5,
	audio_0_avalon_left_channel_sink_data_4,
	audio_0_avalon_right_channel_sink_data_4,
	audio_0_avalon_left_channel_sink_data_3,
	audio_0_avalon_right_channel_sink_data_3,
	audio_0_avalon_left_channel_sink_data_2,
	audio_0_avalon_right_channel_sink_data_2,
	audio_0_avalon_left_channel_sink_data_1,
	audio_0_avalon_right_channel_sink_data_1,
	audio_0_avalon_left_channel_sink_data_0,
	audio_0_avalon_right_channel_sink_data_0)/* synthesis synthesis_greybox=0 */;
output 	left_channel_fifo_write_space_0;
output 	left_channel_fifo_write_space_1;
output 	left_channel_fifo_write_space_2;
output 	left_channel_fifo_write_space_3;
output 	left_channel_fifo_write_space_4;
output 	left_channel_fifo_write_space_5;
output 	left_channel_fifo_write_space_6;
output 	left_channel_fifo_write_space_7;
output 	right_channel_fifo_write_space_6;
output 	right_channel_fifo_write_space_7;
output 	right_channel_fifo_write_space_0;
output 	right_channel_fifo_write_space_1;
output 	right_channel_fifo_write_space_2;
output 	right_channel_fifo_write_space_3;
output 	right_channel_fifo_write_space_4;
output 	right_channel_fifo_write_space_5;
output 	serial_audio_out_data1;
input 	done_dac_channel_sync;
input 	WideOr0;
input 	WideOr01;
input 	WideOr02;
input 	WideOr1;
input 	WideOr11;
input 	cur_test_clk;
input 	last_test_clk;
input 	last_test_clk1;
input 	cur_test_clk1;
input 	found_edge;
input 	audio_0_clk_clk;
input 	audio_0_reset_reset;
input 	audio_0_avalon_left_channel_sink_valid;
input 	audio_0_avalon_right_channel_sink_valid;
input 	audio_0_avalon_left_channel_sink_data_15;
input 	audio_0_avalon_right_channel_sink_data_15;
input 	audio_0_avalon_left_channel_sink_data_14;
input 	audio_0_avalon_right_channel_sink_data_14;
input 	audio_0_avalon_left_channel_sink_data_13;
input 	audio_0_avalon_right_channel_sink_data_13;
input 	audio_0_avalon_left_channel_sink_data_12;
input 	audio_0_avalon_right_channel_sink_data_12;
input 	audio_0_avalon_left_channel_sink_data_11;
input 	audio_0_avalon_right_channel_sink_data_11;
input 	audio_0_avalon_left_channel_sink_data_10;
input 	audio_0_avalon_right_channel_sink_data_10;
input 	audio_0_avalon_left_channel_sink_data_9;
input 	audio_0_avalon_right_channel_sink_data_9;
input 	audio_0_avalon_left_channel_sink_data_8;
input 	audio_0_avalon_right_channel_sink_data_8;
input 	audio_0_avalon_left_channel_sink_data_7;
input 	audio_0_avalon_right_channel_sink_data_7;
input 	audio_0_avalon_left_channel_sink_data_6;
input 	audio_0_avalon_right_channel_sink_data_6;
input 	audio_0_avalon_left_channel_sink_data_5;
input 	audio_0_avalon_right_channel_sink_data_5;
input 	audio_0_avalon_left_channel_sink_data_4;
input 	audio_0_avalon_right_channel_sink_data_4;
input 	audio_0_avalon_left_channel_sink_data_3;
input 	audio_0_avalon_right_channel_sink_data_3;
input 	audio_0_avalon_left_channel_sink_data_2;
input 	audio_0_avalon_right_channel_sink_data_2;
input 	audio_0_avalon_left_channel_sink_data_1;
input 	audio_0_avalon_right_channel_sink_data_1;
input 	audio_0_avalon_left_channel_sink_data_0;
input 	audio_0_avalon_right_channel_sink_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ;
wire \Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ;
wire \Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ;
wire \comb~0_combout ;
wire \comb~1_combout ;
wire \Add0~1_sumout ;
wire \Add0~2 ;
wire \Add0~5_sumout ;
wire \Add0~6 ;
wire \Add0~9_sumout ;
wire \Add0~10 ;
wire \Add0~13_sumout ;
wire \Add0~14 ;
wire \Add0~17_sumout ;
wire \Add0~18 ;
wire \Add0~21_sumout ;
wire \Add0~22 ;
wire \Add0~25_sumout ;
wire \Add0~26 ;
wire \Add0~29_sumout ;
wire \Add1~10 ;
wire \Add1~14 ;
wire \Add1~18 ;
wire \Add1~22 ;
wire \Add1~26 ;
wire \Add1~30 ;
wire \Add1~1_sumout ;
wire \Add1~2 ;
wire \Add1~5_sumout ;
wire \Add1~9_sumout ;
wire \Add1~13_sumout ;
wire \Add1~17_sumout ;
wire \Add1~21_sumout ;
wire \Add1~25_sumout ;
wire \Add1~29_sumout ;
wire \read_left_channel~combout ;
wire \left_channel_was_read~0_combout ;
wire \left_channel_was_read~q ;
wire \read_right_channel~0_combout ;
wire \data_out_shift_reg~18_combout ;
wire \data_out_shift_reg~17_combout ;
wire \data_out_shift_reg~19_combout ;
wire \data_out_shift_reg[0]~q ;
wire \data_out_shift_reg~16_combout ;
wire \read_left_channel~0_combout ;
wire \data_out_shift_reg[15]~1_combout ;
wire \data_out_shift_reg[15]~2_combout ;
wire \data_out_shift_reg[1]~q ;
wire \data_out_shift_reg~15_combout ;
wire \data_out_shift_reg[2]~q ;
wire \data_out_shift_reg~14_combout ;
wire \data_out_shift_reg[3]~q ;
wire \data_out_shift_reg~13_combout ;
wire \data_out_shift_reg[4]~q ;
wire \data_out_shift_reg~12_combout ;
wire \data_out_shift_reg[5]~q ;
wire \data_out_shift_reg~11_combout ;
wire \data_out_shift_reg[6]~q ;
wire \data_out_shift_reg~10_combout ;
wire \data_out_shift_reg[7]~q ;
wire \data_out_shift_reg~9_combout ;
wire \data_out_shift_reg[8]~q ;
wire \data_out_shift_reg~8_combout ;
wire \data_out_shift_reg[9]~q ;
wire \data_out_shift_reg~7_combout ;
wire \data_out_shift_reg[10]~q ;
wire \data_out_shift_reg~6_combout ;
wire \data_out_shift_reg[11]~q ;
wire \data_out_shift_reg~5_combout ;
wire \data_out_shift_reg[12]~q ;
wire \data_out_shift_reg~4_combout ;
wire \data_out_shift_reg[13]~q ;
wire \data_out_shift_reg~3_combout ;
wire \data_out_shift_reg[14]~q ;
wire \data_out_shift_reg~0_combout ;
wire \data_out_shift_reg[15]~q ;


audio_controller_altera_up_sync_fifo Audio_Out_Left_Channel_FIFO(
	.counter_reg_bit_0(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ),
	.full_dff(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.q_b_15(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ),
	.done_dac_channel_sync(done_dac_channel_sync),
	.q_b_14(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ),
	.q_b_13(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ),
	.q_b_12(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ),
	.q_b_11(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ),
	.q_b_10(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ),
	.q_b_9(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.q_b_8(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.q_b_7(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.q_b_6(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_5(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_4(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_3(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_2(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_1(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_0(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.WideOr0(WideOr0),
	.WideOr01(WideOr01),
	.WideOr02(WideOr02),
	.cur_test_clk(cur_test_clk),
	.empty_dff(\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.empty_dff1(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.last_test_clk(last_test_clk),
	.read_left_channel(\read_left_channel~combout ),
	.read_left_channel1(\read_left_channel~0_combout ),
	.comb(\comb~1_combout ),
	.found_edge(found_edge),
	.audio_0_clk_clk(audio_0_clk_clk),
	.audio_0_reset_reset(audio_0_reset_reset),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid),
	.audio_0_avalon_left_channel_sink_data_15(audio_0_avalon_left_channel_sink_data_15),
	.audio_0_avalon_left_channel_sink_data_14(audio_0_avalon_left_channel_sink_data_14),
	.audio_0_avalon_left_channel_sink_data_13(audio_0_avalon_left_channel_sink_data_13),
	.audio_0_avalon_left_channel_sink_data_12(audio_0_avalon_left_channel_sink_data_12),
	.audio_0_avalon_left_channel_sink_data_11(audio_0_avalon_left_channel_sink_data_11),
	.audio_0_avalon_left_channel_sink_data_10(audio_0_avalon_left_channel_sink_data_10),
	.audio_0_avalon_left_channel_sink_data_9(audio_0_avalon_left_channel_sink_data_9),
	.audio_0_avalon_left_channel_sink_data_8(audio_0_avalon_left_channel_sink_data_8),
	.audio_0_avalon_left_channel_sink_data_7(audio_0_avalon_left_channel_sink_data_7),
	.audio_0_avalon_left_channel_sink_data_6(audio_0_avalon_left_channel_sink_data_6),
	.audio_0_avalon_left_channel_sink_data_5(audio_0_avalon_left_channel_sink_data_5),
	.audio_0_avalon_left_channel_sink_data_4(audio_0_avalon_left_channel_sink_data_4),
	.audio_0_avalon_left_channel_sink_data_3(audio_0_avalon_left_channel_sink_data_3),
	.audio_0_avalon_left_channel_sink_data_2(audio_0_avalon_left_channel_sink_data_2),
	.audio_0_avalon_left_channel_sink_data_1(audio_0_avalon_left_channel_sink_data_1),
	.audio_0_avalon_left_channel_sink_data_0(audio_0_avalon_left_channel_sink_data_0));

audio_controller_altera_up_sync_fifo_1 Audio_Out_Right_Channel_FIFO(
	.right_channel_fifo_write_space_6(right_channel_fifo_write_space_6),
	.right_channel_fifo_write_space_7(right_channel_fifo_write_space_7),
	.counter_reg_bit_6(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ),
	.full_dff(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.counter_reg_bit_0(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ),
	.done_dac_channel_sync(done_dac_channel_sync),
	.q_b_15(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ),
	.left_channel_was_read(\left_channel_was_read~q ),
	.q_b_14(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ),
	.q_b_13(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ),
	.q_b_12(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ),
	.q_b_11(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ),
	.q_b_10(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ),
	.q_b_9(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.q_b_8(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.q_b_7(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.q_b_6(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.q_b_5(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.q_b_4(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.q_b_3(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.q_b_2(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.q_b_1(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.q_b_0(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.WideOr1(WideOr1),
	.WideOr11(WideOr11),
	.cur_test_clk(cur_test_clk),
	.empty_dff(\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.last_test_clk(last_test_clk),
	.read_right_channel(\read_right_channel~0_combout ),
	.comb(\comb~0_combout ),
	.audio_0_clk_clk(audio_0_clk_clk),
	.audio_0_reset_reset(audio_0_reset_reset),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid),
	.audio_0_avalon_right_channel_sink_data_15(audio_0_avalon_right_channel_sink_data_15),
	.audio_0_avalon_right_channel_sink_data_14(audio_0_avalon_right_channel_sink_data_14),
	.audio_0_avalon_right_channel_sink_data_13(audio_0_avalon_right_channel_sink_data_13),
	.audio_0_avalon_right_channel_sink_data_12(audio_0_avalon_right_channel_sink_data_12),
	.audio_0_avalon_right_channel_sink_data_11(audio_0_avalon_right_channel_sink_data_11),
	.audio_0_avalon_right_channel_sink_data_10(audio_0_avalon_right_channel_sink_data_10),
	.audio_0_avalon_right_channel_sink_data_9(audio_0_avalon_right_channel_sink_data_9),
	.audio_0_avalon_right_channel_sink_data_8(audio_0_avalon_right_channel_sink_data_8),
	.audio_0_avalon_right_channel_sink_data_7(audio_0_avalon_right_channel_sink_data_7),
	.audio_0_avalon_right_channel_sink_data_6(audio_0_avalon_right_channel_sink_data_6),
	.audio_0_avalon_right_channel_sink_data_5(audio_0_avalon_right_channel_sink_data_5),
	.audio_0_avalon_right_channel_sink_data_4(audio_0_avalon_right_channel_sink_data_4),
	.audio_0_avalon_right_channel_sink_data_3(audio_0_avalon_right_channel_sink_data_3),
	.audio_0_avalon_right_channel_sink_data_2(audio_0_avalon_right_channel_sink_data_2),
	.audio_0_avalon_right_channel_sink_data_1(audio_0_avalon_right_channel_sink_data_1),
	.audio_0_avalon_right_channel_sink_data_0(audio_0_avalon_right_channel_sink_data_0));

cyclonev_lcell_comb \comb~0 (
	.dataa(!right_channel_fifo_write_space_6),
	.datab(!right_channel_fifo_write_space_7),
	.datac(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.datad(!audio_0_avalon_right_channel_sink_valid),
	.datae(!WideOr1),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\comb~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \comb~0 .extended_lut = "off";
defparam \comb~0 .lut_mask = 64'h00F0007000F00070;
defparam \comb~0 .shared_arith = "off";

cyclonev_lcell_comb \comb~1 (
	.dataa(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.datab(!audio_0_avalon_left_channel_sink_valid),
	.datac(!WideOr0),
	.datad(!WideOr01),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\comb~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \comb~1 .extended_lut = "off";
defparam \comb~1 .lut_mask = 64'h2220222022202220;
defparam \comb~1 .shared_arith = "off";

dffeas \left_channel_fifo_write_space[0] (
	.clk(audio_0_clk_clk),
	.d(\Add0~1_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_0),
	.prn(vcc));
defparam \left_channel_fifo_write_space[0] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[0] .power_up = "low";

dffeas \left_channel_fifo_write_space[1] (
	.clk(audio_0_clk_clk),
	.d(\Add0~5_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_1),
	.prn(vcc));
defparam \left_channel_fifo_write_space[1] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[1] .power_up = "low";

dffeas \left_channel_fifo_write_space[2] (
	.clk(audio_0_clk_clk),
	.d(\Add0~9_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_2),
	.prn(vcc));
defparam \left_channel_fifo_write_space[2] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[2] .power_up = "low";

dffeas \left_channel_fifo_write_space[3] (
	.clk(audio_0_clk_clk),
	.d(\Add0~13_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_3),
	.prn(vcc));
defparam \left_channel_fifo_write_space[3] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[3] .power_up = "low";

dffeas \left_channel_fifo_write_space[4] (
	.clk(audio_0_clk_clk),
	.d(\Add0~17_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_4),
	.prn(vcc));
defparam \left_channel_fifo_write_space[4] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[4] .power_up = "low";

dffeas \left_channel_fifo_write_space[5] (
	.clk(audio_0_clk_clk),
	.d(\Add0~21_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_5),
	.prn(vcc));
defparam \left_channel_fifo_write_space[5] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[5] .power_up = "low";

dffeas \left_channel_fifo_write_space[6] (
	.clk(audio_0_clk_clk),
	.d(\Add0~25_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_6),
	.prn(vcc));
defparam \left_channel_fifo_write_space[6] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[6] .power_up = "low";

dffeas \left_channel_fifo_write_space[7] (
	.clk(audio_0_clk_clk),
	.d(\Add0~29_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(left_channel_fifo_write_space_7),
	.prn(vcc));
defparam \left_channel_fifo_write_space[7] .is_wysiwyg = "true";
defparam \left_channel_fifo_write_space[7] .power_up = "low";

dffeas \right_channel_fifo_write_space[6] (
	.clk(audio_0_clk_clk),
	.d(\Add1~1_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_6),
	.prn(vcc));
defparam \right_channel_fifo_write_space[6] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[6] .power_up = "low";

dffeas \right_channel_fifo_write_space[7] (
	.clk(audio_0_clk_clk),
	.d(\Add1~5_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_7),
	.prn(vcc));
defparam \right_channel_fifo_write_space[7] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[7] .power_up = "low";

dffeas \right_channel_fifo_write_space[0] (
	.clk(audio_0_clk_clk),
	.d(\Add1~9_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_0),
	.prn(vcc));
defparam \right_channel_fifo_write_space[0] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[0] .power_up = "low";

dffeas \right_channel_fifo_write_space[1] (
	.clk(audio_0_clk_clk),
	.d(\Add1~13_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_1),
	.prn(vcc));
defparam \right_channel_fifo_write_space[1] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[1] .power_up = "low";

dffeas \right_channel_fifo_write_space[2] (
	.clk(audio_0_clk_clk),
	.d(\Add1~17_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_2),
	.prn(vcc));
defparam \right_channel_fifo_write_space[2] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[2] .power_up = "low";

dffeas \right_channel_fifo_write_space[3] (
	.clk(audio_0_clk_clk),
	.d(\Add1~21_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_3),
	.prn(vcc));
defparam \right_channel_fifo_write_space[3] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[3] .power_up = "low";

dffeas \right_channel_fifo_write_space[4] (
	.clk(audio_0_clk_clk),
	.d(\Add1~25_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_4),
	.prn(vcc));
defparam \right_channel_fifo_write_space[4] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[4] .power_up = "low";

dffeas \right_channel_fifo_write_space[5] (
	.clk(audio_0_clk_clk),
	.d(\Add1~29_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(right_channel_fifo_write_space_5),
	.prn(vcc));
defparam \right_channel_fifo_write_space[5] .is_wysiwyg = "true";
defparam \right_channel_fifo_write_space[5] .power_up = "low";

dffeas serial_audio_out_data(
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg[15]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(serial_audio_out_data1),
	.prn(vcc));
defparam serial_audio_out_data.is_wysiwyg = "true";
defparam serial_audio_out_data.power_up = "low";

cyclonev_lcell_comb \Add0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~1_sumout ),
	.cout(\Add0~2 ),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h000000000000FF00;
defparam \Add0~1 .shared_arith = "off";

cyclonev_lcell_comb \Add0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ),
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
defparam \Add0~5 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~5 .shared_arith = "off";

cyclonev_lcell_comb \Add0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ),
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
defparam \Add0~9 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~9 .shared_arith = "off";

cyclonev_lcell_comb \Add0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~13_sumout ),
	.cout(\Add0~14 ),
	.shareout());
defparam \Add0~13 .extended_lut = "off";
defparam \Add0~13 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~13 .shared_arith = "off";

cyclonev_lcell_comb \Add0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ),
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
defparam \Add0~17 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~17 .shared_arith = "off";

cyclonev_lcell_comb \Add0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ),
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
defparam \Add0~21 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~21 .shared_arith = "off";

cyclonev_lcell_comb \Add0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~25_sumout ),
	.cout(\Add0~26 ),
	.shareout());
defparam \Add0~25 .extended_lut = "off";
defparam \Add0~25 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add0~25 .shared_arith = "off";

cyclonev_lcell_comb \Add0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~29_sumout ),
	.cout(),
	.shareout());
defparam \Add0~29 .extended_lut = "off";
defparam \Add0~29 .lut_mask = 64'h000000000000FF00;
defparam \Add0~29 .shared_arith = "off";

cyclonev_lcell_comb \Add1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h000000000000FF00;
defparam \Add1~9 .shared_arith = "off";

cyclonev_lcell_comb \Add1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~13_sumout ),
	.cout(\Add1~14 ),
	.shareout());
defparam \Add1~13 .extended_lut = "off";
defparam \Add1~13 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~13 .shared_arith = "off";

cyclonev_lcell_comb \Add1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]~q ),
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
defparam \Add1~17 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~17 .shared_arith = "off";

cyclonev_lcell_comb \Add1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]~q ),
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
defparam \Add1~21 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~21 .shared_arith = "off";

cyclonev_lcell_comb \Add1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(\Add1~26 ),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~25 .shared_arith = "off";

cyclonev_lcell_comb \Add1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]~q ),
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
defparam \Add1~29 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~29 .shared_arith = "off";

cyclonev_lcell_comb \Add1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(\Add1~2 ),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add1~1 .shared_arith = "off";

cyclonev_lcell_comb \Add1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h000000000000FF00;
defparam \Add1~5 .shared_arith = "off";

cyclonev_lcell_comb read_left_channel(
	.dataa(!cur_test_clk),
	.datab(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datac(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datad(!last_test_clk),
	.datae(!done_dac_channel_sync),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\read_left_channel~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam read_left_channel.extended_lut = "off";
defparam read_left_channel.lut_mask = 64'h0000010000000100;
defparam read_left_channel.shared_arith = "off";

cyclonev_lcell_comb \left_channel_was_read~0 (
	.dataa(!cur_test_clk),
	.datab(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datac(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datad(!last_test_clk),
	.datae(!done_dac_channel_sync),
	.dataf(!\left_channel_was_read~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\left_channel_was_read~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \left_channel_was_read~0 .extended_lut = "off";
defparam \left_channel_was_read~0 .lut_mask = 64'h00000100FFFFFF55;
defparam \left_channel_was_read~0 .shared_arith = "off";

dffeas left_channel_was_read(
	.clk(audio_0_clk_clk),
	.d(\left_channel_was_read~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\left_channel_was_read~q ),
	.prn(vcc));
defparam left_channel_was_read.is_wysiwyg = "true";
defparam left_channel_was_read.power_up = "low";

cyclonev_lcell_comb \read_right_channel~0 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!\left_channel_was_read~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\read_right_channel~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \read_right_channel~0 .extended_lut = "off";
defparam \read_right_channel~0 .lut_mask = 64'h0002000200020002;
defparam \read_right_channel~0 .shared_arith = "off";

cyclonev_lcell_comb \data_out_shift_reg~18 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~18 .extended_lut = "off";
defparam \data_out_shift_reg~18 .lut_mask = 64'hFDFDFDFDFDFDFDFD;
defparam \data_out_shift_reg~18 .shared_arith = "off";

cyclonev_lcell_comb \data_out_shift_reg~17 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!last_test_clk1),
	.datae(!cur_test_clk1),
	.dataf(!\data_out_shift_reg[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~17 .extended_lut = "off";
defparam \data_out_shift_reg~17 .lut_mask = 64'h02020202FB02FBFB;
defparam \data_out_shift_reg~17 .shared_arith = "off";

cyclonev_lcell_comb \data_out_shift_reg~19 (
	.dataa(!audio_0_reset_reset),
	.datab(!\data_out_shift_reg~18_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[0] ),
	.datae(!\read_left_channel~combout ),
	.dataf(!\left_channel_was_read~q ),
	.datag(!\data_out_shift_reg~17_combout ),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~19 .extended_lut = "on";
defparam \data_out_shift_reg~19 .lut_mask = 64'h02020A0A020A0A0A;
defparam \data_out_shift_reg~19 .shared_arith = "off";

dffeas \data_out_shift_reg[0] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\data_out_shift_reg[0]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[0] .is_wysiwyg = "true";
defparam \data_out_shift_reg[0] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~16 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[1] ),
	.datae(!\data_out_shift_reg[0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~16 .extended_lut = "off";
defparam \data_out_shift_reg~16 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~16 .shared_arith = "off";

cyclonev_lcell_comb \read_left_channel~0 (
	.dataa(!cur_test_clk),
	.datab(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datac(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\read_left_channel~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \read_left_channel~0 .extended_lut = "off";
defparam \read_left_channel~0 .lut_mask = 64'h0101010101010101;
defparam \read_left_channel~0 .shared_arith = "off";

cyclonev_lcell_comb \data_out_shift_reg[15]~1 (
	.dataa(!audio_0_reset_reset),
	.datab(!cur_test_clk),
	.datac(!last_test_clk),
	.datad(!done_dac_channel_sync),
	.datae(!\read_left_channel~0_combout ),
	.dataf(!\left_channel_was_read~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg[15]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg[15]~1 .extended_lut = "off";
defparam \data_out_shift_reg[15]~1 .lut_mask = 64'h557D555555755555;
defparam \data_out_shift_reg[15]~1 .shared_arith = "off";

cyclonev_lcell_comb \data_out_shift_reg[15]~2 (
	.dataa(!audio_0_reset_reset),
	.datab(!cur_test_clk),
	.datac(!last_test_clk),
	.datad(!done_dac_channel_sync),
	.datae(!last_test_clk1),
	.dataf(!cur_test_clk1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg[15]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg[15]~2 .extended_lut = "off";
defparam \data_out_shift_reg[15]~2 .lut_mask = 64'h557DFFFF557D557D;
defparam \data_out_shift_reg[15]~2 .shared_arith = "off";

dffeas \data_out_shift_reg[1] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[1]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[1] .is_wysiwyg = "true";
defparam \data_out_shift_reg[1] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~15 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[2] ),
	.datae(!\data_out_shift_reg[1]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~15 .extended_lut = "off";
defparam \data_out_shift_reg~15 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~15 .shared_arith = "off";

dffeas \data_out_shift_reg[2] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[2]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[2] .is_wysiwyg = "true";
defparam \data_out_shift_reg[2] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~14 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[3] ),
	.datae(!\data_out_shift_reg[2]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~14 .extended_lut = "off";
defparam \data_out_shift_reg~14 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~14 .shared_arith = "off";

dffeas \data_out_shift_reg[3] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[3]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[3] .is_wysiwyg = "true";
defparam \data_out_shift_reg[3] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~13 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[4] ),
	.datae(!\data_out_shift_reg[3]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~13 .extended_lut = "off";
defparam \data_out_shift_reg~13 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~13 .shared_arith = "off";

dffeas \data_out_shift_reg[4] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[4]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[4] .is_wysiwyg = "true";
defparam \data_out_shift_reg[4] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~12 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[5] ),
	.datae(!\data_out_shift_reg[4]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~12 .extended_lut = "off";
defparam \data_out_shift_reg~12 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~12 .shared_arith = "off";

dffeas \data_out_shift_reg[5] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[5]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[5] .is_wysiwyg = "true";
defparam \data_out_shift_reg[5] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~11 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[6] ),
	.datae(!\data_out_shift_reg[5]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~11 .extended_lut = "off";
defparam \data_out_shift_reg~11 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~11 .shared_arith = "off";

dffeas \data_out_shift_reg[6] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[6]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[6] .is_wysiwyg = "true";
defparam \data_out_shift_reg[6] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~10 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[7] ),
	.datae(!\data_out_shift_reg[6]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~10 .extended_lut = "off";
defparam \data_out_shift_reg~10 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~10 .shared_arith = "off";

dffeas \data_out_shift_reg[7] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[7]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[7] .is_wysiwyg = "true";
defparam \data_out_shift_reg[7] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~9 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[8] ),
	.datae(!\data_out_shift_reg[7]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~9 .extended_lut = "off";
defparam \data_out_shift_reg~9 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~9 .shared_arith = "off";

dffeas \data_out_shift_reg[8] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[8]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[8] .is_wysiwyg = "true";
defparam \data_out_shift_reg[8] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~8 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[9] ),
	.datae(!\data_out_shift_reg[8]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~8 .extended_lut = "off";
defparam \data_out_shift_reg~8 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~8 .shared_arith = "off";

dffeas \data_out_shift_reg[9] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[9]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[9] .is_wysiwyg = "true";
defparam \data_out_shift_reg[9] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~7 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[10] ),
	.datae(!\data_out_shift_reg[9]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~7 .extended_lut = "off";
defparam \data_out_shift_reg~7 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~7 .shared_arith = "off";

dffeas \data_out_shift_reg[10] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[10]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[10] .is_wysiwyg = "true";
defparam \data_out_shift_reg[10] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~6 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[11] ),
	.datae(!\data_out_shift_reg[10]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~6 .extended_lut = "off";
defparam \data_out_shift_reg~6 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~6 .shared_arith = "off";

dffeas \data_out_shift_reg[11] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[11]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[11] .is_wysiwyg = "true";
defparam \data_out_shift_reg[11] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~5 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[12] ),
	.datae(!\data_out_shift_reg[11]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~5 .extended_lut = "off";
defparam \data_out_shift_reg~5 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~5 .shared_arith = "off";

dffeas \data_out_shift_reg[12] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[12]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[12] .is_wysiwyg = "true";
defparam \data_out_shift_reg[12] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~4 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[13] ),
	.datae(!\data_out_shift_reg[12]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~4 .extended_lut = "off";
defparam \data_out_shift_reg~4 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~4 .shared_arith = "off";

dffeas \data_out_shift_reg[13] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[13]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[13] .is_wysiwyg = "true";
defparam \data_out_shift_reg[13] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~3 (
	.dataa(!\read_left_channel~combout ),
	.datab(!\read_right_channel~0_combout ),
	.datac(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ),
	.datad(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[14] ),
	.datae(!\data_out_shift_reg[13]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~3 .extended_lut = "off";
defparam \data_out_shift_reg~3 .lut_mask = 64'h05278DAF05278DAF;
defparam \data_out_shift_reg~3 .shared_arith = "off";

dffeas \data_out_shift_reg[14] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[14]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[14] .is_wysiwyg = "true";
defparam \data_out_shift_reg[14] .power_up = "low";

cyclonev_lcell_comb \data_out_shift_reg~0 (
	.dataa(!\Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ),
	.datab(!\read_left_channel~combout ),
	.datac(!\Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b[15] ),
	.datad(!\read_right_channel~0_combout ),
	.datae(!\data_out_shift_reg[14]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out_shift_reg~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out_shift_reg~0 .extended_lut = "off";
defparam \data_out_shift_reg~0 .lut_mask = 64'h111DDD1D111DDD1D;
defparam \data_out_shift_reg~0 .shared_arith = "off";

dffeas \data_out_shift_reg[15] (
	.clk(audio_0_clk_clk),
	.d(\data_out_shift_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(\data_out_shift_reg[15]~1_combout ),
	.sload(gnd),
	.ena(\data_out_shift_reg[15]~2_combout ),
	.q(\data_out_shift_reg[15]~q ),
	.prn(vcc));
defparam \data_out_shift_reg[15] .is_wysiwyg = "true";
defparam \data_out_shift_reg[15] .power_up = "low";

endmodule

module audio_controller_altera_up_sync_fifo (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	full_dff,
	q_b_15,
	done_dac_channel_sync,
	q_b_14,
	q_b_13,
	q_b_12,
	q_b_11,
	q_b_10,
	q_b_9,
	q_b_8,
	q_b_7,
	q_b_6,
	q_b_5,
	q_b_4,
	q_b_3,
	q_b_2,
	q_b_1,
	q_b_0,
	WideOr0,
	WideOr01,
	WideOr02,
	cur_test_clk,
	empty_dff,
	empty_dff1,
	last_test_clk,
	read_left_channel,
	read_left_channel1,
	comb,
	found_edge,
	audio_0_clk_clk,
	audio_0_reset_reset,
	audio_0_avalon_left_channel_sink_valid,
	audio_0_avalon_left_channel_sink_data_15,
	audio_0_avalon_left_channel_sink_data_14,
	audio_0_avalon_left_channel_sink_data_13,
	audio_0_avalon_left_channel_sink_data_12,
	audio_0_avalon_left_channel_sink_data_11,
	audio_0_avalon_left_channel_sink_data_10,
	audio_0_avalon_left_channel_sink_data_9,
	audio_0_avalon_left_channel_sink_data_8,
	audio_0_avalon_left_channel_sink_data_7,
	audio_0_avalon_left_channel_sink_data_6,
	audio_0_avalon_left_channel_sink_data_5,
	audio_0_avalon_left_channel_sink_data_4,
	audio_0_avalon_left_channel_sink_data_3,
	audio_0_avalon_left_channel_sink_data_2,
	audio_0_avalon_left_channel_sink_data_1,
	audio_0_avalon_left_channel_sink_data_0)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	full_dff;
output 	q_b_15;
input 	done_dac_channel_sync;
output 	q_b_14;
output 	q_b_13;
output 	q_b_12;
output 	q_b_11;
output 	q_b_10;
output 	q_b_9;
output 	q_b_8;
output 	q_b_7;
output 	q_b_6;
output 	q_b_5;
output 	q_b_4;
output 	q_b_3;
output 	q_b_2;
output 	q_b_1;
output 	q_b_0;
input 	WideOr0;
input 	WideOr01;
input 	WideOr02;
input 	cur_test_clk;
output 	empty_dff;
input 	empty_dff1;
input 	last_test_clk;
input 	read_left_channel;
input 	read_left_channel1;
input 	comb;
input 	found_edge;
input 	audio_0_clk_clk;
input 	audio_0_reset_reset;
input 	audio_0_avalon_left_channel_sink_valid;
input 	audio_0_avalon_left_channel_sink_data_15;
input 	audio_0_avalon_left_channel_sink_data_14;
input 	audio_0_avalon_left_channel_sink_data_13;
input 	audio_0_avalon_left_channel_sink_data_12;
input 	audio_0_avalon_left_channel_sink_data_11;
input 	audio_0_avalon_left_channel_sink_data_10;
input 	audio_0_avalon_left_channel_sink_data_9;
input 	audio_0_avalon_left_channel_sink_data_8;
input 	audio_0_avalon_left_channel_sink_data_7;
input 	audio_0_avalon_left_channel_sink_data_6;
input 	audio_0_avalon_left_channel_sink_data_5;
input 	audio_0_avalon_left_channel_sink_data_4;
input 	audio_0_avalon_left_channel_sink_data_3;
input 	audio_0_avalon_left_channel_sink_data_2;
input 	audio_0_avalon_left_channel_sink_data_1;
input 	audio_0_avalon_left_channel_sink_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_scfifo_1 Sync_FIFO(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff(full_dff),
	.q({q_b_15,q_b_14,q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.done_dac_channel_sync(done_dac_channel_sync),
	.WideOr0(WideOr0),
	.WideOr01(WideOr01),
	.WideOr02(WideOr02),
	.cur_test_clk(cur_test_clk),
	.empty_dff(empty_dff),
	.empty_dff1(empty_dff1),
	.last_test_clk(last_test_clk),
	.read_left_channel(read_left_channel),
	.read_left_channel1(read_left_channel1),
	.wrreq(comb),
	.found_edge(found_edge),
	.clock(audio_0_clk_clk),
	.sclr(audio_0_reset_reset),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid),
	.data({audio_0_avalon_left_channel_sink_data_15,audio_0_avalon_left_channel_sink_data_14,audio_0_avalon_left_channel_sink_data_13,audio_0_avalon_left_channel_sink_data_12,audio_0_avalon_left_channel_sink_data_11,audio_0_avalon_left_channel_sink_data_10,
audio_0_avalon_left_channel_sink_data_9,audio_0_avalon_left_channel_sink_data_8,audio_0_avalon_left_channel_sink_data_7,audio_0_avalon_left_channel_sink_data_6,audio_0_avalon_left_channel_sink_data_5,audio_0_avalon_left_channel_sink_data_4,
audio_0_avalon_left_channel_sink_data_3,audio_0_avalon_left_channel_sink_data_2,audio_0_avalon_left_channel_sink_data_1,audio_0_avalon_left_channel_sink_data_0}));

endmodule

module audio_controller_scfifo_1 (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	full_dff,
	q,
	done_dac_channel_sync,
	WideOr0,
	WideOr01,
	WideOr02,
	cur_test_clk,
	empty_dff,
	empty_dff1,
	last_test_clk,
	read_left_channel,
	read_left_channel1,
	wrreq,
	found_edge,
	clock,
	sclr,
	audio_0_avalon_left_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	full_dff;
output 	[15:0] q;
input 	done_dac_channel_sync;
input 	WideOr0;
input 	WideOr01;
input 	WideOr02;
input 	cur_test_clk;
output 	empty_dff;
input 	empty_dff1;
input 	last_test_clk;
input 	read_left_channel;
input 	read_left_channel1;
input 	wrreq;
input 	found_edge;
input 	clock;
input 	sclr;
input 	audio_0_avalon_left_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_scfifo_9ba1 auto_generated(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff(full_dff),
	.q({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.done_dac_channel_sync(done_dac_channel_sync),
	.WideOr0(WideOr0),
	.WideOr01(WideOr01),
	.WideOr02(WideOr02),
	.cur_test_clk(cur_test_clk),
	.empty_dff(empty_dff),
	.empty_dff1(empty_dff1),
	.last_test_clk(last_test_clk),
	.read_left_channel(read_left_channel),
	.read_left_channel1(read_left_channel1),
	.wrreq(wrreq),
	.found_edge(found_edge),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid),
	.data({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

endmodule

module audio_controller_scfifo_9ba1 (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	full_dff,
	q,
	done_dac_channel_sync,
	WideOr0,
	WideOr01,
	WideOr02,
	cur_test_clk,
	empty_dff,
	empty_dff1,
	last_test_clk,
	read_left_channel,
	read_left_channel1,
	wrreq,
	found_edge,
	clock,
	sclr,
	audio_0_avalon_left_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	full_dff;
output 	[15:0] q;
input 	done_dac_channel_sync;
input 	WideOr0;
input 	WideOr01;
input 	WideOr02;
input 	cur_test_clk;
output 	empty_dff;
input 	empty_dff1;
input 	last_test_clk;
input 	read_left_channel;
input 	read_left_channel1;
input 	wrreq;
input 	found_edge;
input 	clock;
input 	sclr;
input 	audio_0_avalon_left_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_a_dpfifo_s2a1 dpfifo(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff1(full_dff),
	.q({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.done_dac_channel_sync(done_dac_channel_sync),
	.WideOr0(WideOr0),
	.WideOr01(WideOr01),
	.WideOr02(WideOr02),
	.cur_test_clk(cur_test_clk),
	.empty_dff1(empty_dff),
	.empty_dff2(empty_dff1),
	.last_test_clk(last_test_clk),
	.read_left_channel(read_left_channel),
	.read_left_channel1(read_left_channel1),
	.wreq(wrreq),
	.found_edge(found_edge),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid),
	.data({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

endmodule

module audio_controller_a_dpfifo_s2a1 (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	full_dff1,
	q,
	done_dac_channel_sync,
	WideOr0,
	WideOr01,
	WideOr02,
	cur_test_clk,
	empty_dff1,
	empty_dff2,
	last_test_clk,
	read_left_channel,
	read_left_channel1,
	wreq,
	found_edge,
	clock,
	sclr,
	audio_0_avalon_left_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
output 	full_dff1;
output 	[15:0] q;
input 	done_dac_channel_sync;
input 	WideOr0;
input 	WideOr01;
input 	WideOr02;
input 	cur_test_clk;
output 	empty_dff1;
input 	empty_dff2;
input 	last_test_clk;
input 	read_left_channel;
input 	read_left_channel1;
input 	wreq;
input 	found_edge;
input 	clock;
input 	sclr;
input 	audio_0_avalon_left_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \wr_ptr|counter_reg_bit[0]~q ;
wire \wr_ptr|counter_reg_bit[1]~q ;
wire \wr_ptr|counter_reg_bit[2]~q ;
wire \wr_ptr|counter_reg_bit[3]~q ;
wire \wr_ptr|counter_reg_bit[4]~q ;
wire \wr_ptr|counter_reg_bit[5]~q ;
wire \wr_ptr|counter_reg_bit[6]~q ;
wire \rd_ptr_msb|counter_reg_bit[0]~q ;
wire \rd_ptr_msb|counter_reg_bit[1]~q ;
wire \rd_ptr_msb|counter_reg_bit[2]~q ;
wire \rd_ptr_msb|counter_reg_bit[3]~q ;
wire \rd_ptr_msb|counter_reg_bit[4]~q ;
wire \rd_ptr_msb|counter_reg_bit[5]~q ;
wire \usedw_will_be_1~0_combout ;
wire \low_addressa[0]~q ;
wire \rd_ptr_lsb~q ;
wire \ram_read_address[0]~0_combout ;
wire \low_addressa[1]~q ;
wire \ram_read_address[1]~1_combout ;
wire \low_addressa[2]~q ;
wire \ram_read_address[2]~2_combout ;
wire \low_addressa[3]~q ;
wire \ram_read_address[3]~3_combout ;
wire \low_addressa[4]~q ;
wire \ram_read_address[4]~4_combout ;
wire \low_addressa[5]~q ;
wire \ram_read_address[5]~5_combout ;
wire \low_addressa[6]~q ;
wire \ram_read_address[6]~6_combout ;
wire \low_addressa[0]~0_combout ;
wire \rd_ptr_lsb~0_combout ;
wire \usedw_will_be_1~1_combout ;
wire \low_addressa[1]~1_combout ;
wire \low_addressa[2]~2_combout ;
wire \low_addressa[3]~3_combout ;
wire \low_addressa[4]~4_combout ;
wire \low_addressa[5]~5_combout ;
wire \low_addressa[6]~6_combout ;
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \usedw_will_be_0~0_combout ;
wire \usedw_is_0_dff~q ;
wire \_~3_combout ;
wire \_~4_combout ;
wire \usedw_will_be_2~0_combout ;
wire \usedw_is_2_dff~q ;
wire \usedw_will_be_1~2_combout ;
wire \usedw_is_1_dff~q ;
wire \empty_dff~0_combout ;


audio_controller_altsyncram_r3i1 FIFOram(
	.q_b({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.address_a({\wr_ptr|counter_reg_bit[6]~q ,\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.wren_a(wreq),
	.address_b({\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.data_a({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

audio_controller_cntr_h2b rd_ptr_msb(
	.done_dac_channel_sync(done_dac_channel_sync),
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\rd_ptr_msb|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\rd_ptr_msb|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\rd_ptr_msb|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\rd_ptr_msb|counter_reg_bit[5]~q ),
	.read_left_channel(read_left_channel1),
	.found_edge(found_edge),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.sclr(sclr));

audio_controller_cntr_u27 usedw_counter(
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.counter_reg_bit_6(counter_reg_bit_6),
	.usedw_will_be_1(\usedw_will_be_1~0_combout ),
	.comb(wreq),
	.clock(clock),
	.sclr(sclr));

audio_controller_cntr_i2b wr_ptr(
	.full_dff(full_dff1),
	.counter_reg_bit_0(\wr_ptr|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\wr_ptr|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\wr_ptr|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\wr_ptr|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\wr_ptr|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\wr_ptr|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\wr_ptr|counter_reg_bit[6]~q ),
	.WideOr0(WideOr0),
	.WideOr01(WideOr01),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_left_channel_sink_valid(audio_0_avalon_left_channel_sink_valid));

cyclonev_lcell_comb \usedw_will_be_1~0 (
	.dataa(!sclr),
	.datab(!full_dff1),
	.datac(!read_left_channel),
	.datad(!audio_0_avalon_left_channel_sink_valid),
	.datae(!WideOr0),
	.dataf(!WideOr01),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~0 .extended_lut = "off";
defparam \usedw_will_be_1~0 .lut_mask = 64'h5FD75FD75FD75F5F;
defparam \usedw_will_be_1~0 .shared_arith = "off";

dffeas \low_addressa[0] (
	.clk(clock),
	.d(\low_addressa[0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[0]~q ),
	.prn(vcc));
defparam \low_addressa[0] .is_wysiwyg = "true";
defparam \low_addressa[0] .power_up = "low";

dffeas rd_ptr_lsb(
	.clk(clock),
	.d(\rd_ptr_lsb~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\usedw_will_be_1~1_combout ),
	.q(\rd_ptr_lsb~q ),
	.prn(vcc));
defparam rd_ptr_lsb.is_wysiwyg = "true";
defparam rd_ptr_lsb.power_up = "low";

cyclonev_lcell_comb \ram_read_address[0]~0 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\low_addressa[0]~q ),
	.datae(!\rd_ptr_lsb~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[0]~0 .extended_lut = "off";
defparam \ram_read_address[0]~0 .lut_mask = 64'h01FF00FE01FF00FE;
defparam \ram_read_address[0]~0 .shared_arith = "off";

dffeas \low_addressa[1] (
	.clk(clock),
	.d(\low_addressa[1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[1]~q ),
	.prn(vcc));
defparam \low_addressa[1] .is_wysiwyg = "true";
defparam \low_addressa[1] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[1]~1 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[0]~q ),
	.datae(!\low_addressa[1]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[1]~1 .extended_lut = "off";
defparam \ram_read_address[1]~1 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[1]~1 .shared_arith = "off";

dffeas \low_addressa[2] (
	.clk(clock),
	.d(\low_addressa[2]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[2]~q ),
	.prn(vcc));
defparam \low_addressa[2] .is_wysiwyg = "true";
defparam \low_addressa[2] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[2]~2 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[1]~q ),
	.datae(!\low_addressa[2]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[2]~2 .extended_lut = "off";
defparam \ram_read_address[2]~2 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[2]~2 .shared_arith = "off";

dffeas \low_addressa[3] (
	.clk(clock),
	.d(\low_addressa[3]~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[3]~q ),
	.prn(vcc));
defparam \low_addressa[3] .is_wysiwyg = "true";
defparam \low_addressa[3] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[3]~3 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[2]~q ),
	.datae(!\low_addressa[3]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[3]~3 .extended_lut = "off";
defparam \ram_read_address[3]~3 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[3]~3 .shared_arith = "off";

dffeas \low_addressa[4] (
	.clk(clock),
	.d(\low_addressa[4]~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[4]~q ),
	.prn(vcc));
defparam \low_addressa[4] .is_wysiwyg = "true";
defparam \low_addressa[4] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[4]~4 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[3]~q ),
	.datae(!\low_addressa[4]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[4]~4 .extended_lut = "off";
defparam \ram_read_address[4]~4 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[4]~4 .shared_arith = "off";

dffeas \low_addressa[5] (
	.clk(clock),
	.d(\low_addressa[5]~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[5]~q ),
	.prn(vcc));
defparam \low_addressa[5] .is_wysiwyg = "true";
defparam \low_addressa[5] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[5]~5 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[4]~q ),
	.datae(!\low_addressa[5]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[5]~5 .extended_lut = "off";
defparam \ram_read_address[5]~5 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[5]~5 .shared_arith = "off";

dffeas \low_addressa[6] (
	.clk(clock),
	.d(\low_addressa[6]~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[6]~q ),
	.prn(vcc));
defparam \low_addressa[6] .is_wysiwyg = "true";
defparam \low_addressa[6] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[6]~6 (
	.dataa(!found_edge),
	.datab(!done_dac_channel_sync),
	.datac(!read_left_channel1),
	.datad(!\rd_ptr_msb|counter_reg_bit[5]~q ),
	.datae(!\low_addressa[6]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[6]~6 .extended_lut = "off";
defparam \ram_read_address[6]~6 .lut_mask = 64'h0001FEFF0001FEFF;
defparam \ram_read_address[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[0]~0 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\low_addressa[0]~q ),
	.dataf(!\rd_ptr_lsb~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[0]~0 .extended_lut = "off";
defparam \low_addressa[0]~0 .lut_mask = 64'h0002AAAA0000AAA8;
defparam \low_addressa[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \rd_ptr_lsb~0 (
	.dataa(!sclr),
	.datab(!\rd_ptr_lsb~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rd_ptr_lsb~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rd_ptr_lsb~0 .extended_lut = "off";
defparam \rd_ptr_lsb~0 .lut_mask = 64'h8888888888888888;
defparam \rd_ptr_lsb~0 .shared_arith = "off";

cyclonev_lcell_comb \usedw_will_be_1~1 (
	.dataa(!sclr),
	.datab(!cur_test_clk),
	.datac(!empty_dff1),
	.datad(!empty_dff2),
	.datae(!last_test_clk),
	.dataf(!done_dac_channel_sync),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~1 .extended_lut = "off";
defparam \usedw_will_be_1~1 .lut_mask = 64'h5555555555575555;
defparam \usedw_will_be_1~1 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[1]~1 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[0]~q ),
	.dataf(!\low_addressa[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[1]~1 .extended_lut = "off";
defparam \low_addressa[1]~1 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[2]~2 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[1]~q ),
	.dataf(!\low_addressa[2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[2]~2 .extended_lut = "off";
defparam \low_addressa[2]~2 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[3]~3 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[2]~q ),
	.dataf(!\low_addressa[3]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[3]~3 .extended_lut = "off";
defparam \low_addressa[3]~3 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[4]~4 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[3]~q ),
	.dataf(!\low_addressa[4]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[4]~4 .extended_lut = "off";
defparam \low_addressa[4]~4 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[5]~5 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[4]~q ),
	.dataf(!\low_addressa[5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[5]~5 .extended_lut = "off";
defparam \low_addressa[5]~5 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[6]~6 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel1),
	.datae(!\rd_ptr_msb|counter_reg_bit[5]~q ),
	.dataf(!\low_addressa[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[6]~6 .extended_lut = "off";
defparam \low_addressa[6]~6 .lut_mask = 64'h00000002AAA8AAAA;
defparam \low_addressa[6]~6 .shared_arith = "off";

dffeas full_dff(
	.clk(clock),
	.d(\_~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(full_dff1),
	.prn(vcc));
defparam full_dff.is_wysiwyg = "true";
defparam full_dff.power_up = "low";

dffeas empty_dff(
	.clk(clock),
	.d(\empty_dff~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(empty_dff1),
	.prn(vcc));
defparam empty_dff.is_wysiwyg = "true";
defparam empty_dff.power_up = "low";

cyclonev_lcell_comb \_~0 (
	.dataa(!counter_reg_bit_3),
	.datab(!counter_reg_bit_4),
	.datac(!counter_reg_bit_5),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0001000100010001;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb \_~1 (
	.dataa(!counter_reg_bit_0),
	.datab(!counter_reg_bit_1),
	.datac(!counter_reg_bit_2),
	.datad(!\_~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~1 .extended_lut = "off";
defparam \_~1 .lut_mask = 64'h0001000100010001;
defparam \_~1 .shared_arith = "off";

cyclonev_lcell_comb \_~2 (
	.dataa(!full_dff1),
	.datab(!read_left_channel),
	.datac(!audio_0_avalon_left_channel_sink_valid),
	.datad(!WideOr02),
	.datae(!\_~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h4444444C4444444C;
defparam \_~2 .shared_arith = "off";

cyclonev_lcell_comb \usedw_will_be_0~0 (
	.dataa(!sclr),
	.datab(!read_left_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_0~0 .extended_lut = "off";
defparam \usedw_will_be_0~0 .lut_mask = 64'h2808AA8A2808AA8A;
defparam \usedw_will_be_0~0 .shared_arith = "off";

dffeas usedw_is_0_dff(
	.clk(clock),
	.d(\usedw_will_be_0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_0_dff~q ),
	.prn(vcc));
defparam usedw_is_0_dff.is_wysiwyg = "true";
defparam usedw_is_0_dff.power_up = "low";

cyclonev_lcell_comb \_~3 (
	.dataa(!counter_reg_bit_3),
	.datab(!counter_reg_bit_4),
	.datac(!counter_reg_bit_5),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h8000800080008000;
defparam \_~3 .shared_arith = "off";

cyclonev_lcell_comb \_~4 (
	.dataa(!counter_reg_bit_0),
	.datab(!counter_reg_bit_1),
	.datac(!counter_reg_bit_2),
	.datad(!\_~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~4 .extended_lut = "off";
defparam \_~4 .lut_mask = 64'h0010001000100010;
defparam \_~4 .shared_arith = "off";

cyclonev_lcell_comb \usedw_will_be_2~0 (
	.dataa(!read_left_channel),
	.datab(!wreq),
	.datac(!\usedw_is_1_dff~q ),
	.datad(!\usedw_is_2_dff~q ),
	.datae(!\_~4_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_2~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_2~0 .extended_lut = "off";
defparam \usedw_will_be_2~0 .lut_mask = 64'h029B46DF029B46DF;
defparam \usedw_will_be_2~0 .shared_arith = "off";

dffeas usedw_is_2_dff(
	.clk(clock),
	.d(\usedw_will_be_2~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_2_dff~q ),
	.prn(vcc));
defparam usedw_is_2_dff.is_wysiwyg = "true";
defparam usedw_is_2_dff.power_up = "low";

cyclonev_lcell_comb \usedw_will_be_1~2 (
	.dataa(!sclr),
	.datab(!read_left_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(!\usedw_is_2_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~2 .extended_lut = "off";
defparam \usedw_will_be_1~2 .lut_mask = 64'h088A008228AA20A2;
defparam \usedw_will_be_1~2 .shared_arith = "off";

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_1_dff~q ),
	.prn(vcc));
defparam usedw_is_1_dff.is_wysiwyg = "true";
defparam usedw_is_1_dff.power_up = "low";

cyclonev_lcell_comb \empty_dff~0 (
	.dataa(!sclr),
	.datab(!read_left_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\empty_dff~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \empty_dff~0 .extended_lut = "off";
defparam \empty_dff~0 .lut_mask = 64'h2000AA882000AA88;
defparam \empty_dff~0 .shared_arith = "off";

endmodule

module audio_controller_altsyncram_r3i1 (
	q_b,
	address_a,
	wren_a,
	address_b,
	clock0,
	data_a)/* synthesis synthesis_greybox=0 */;
output 	[15:0] q_b;
input 	[6:0] address_a;
input 	wren_a;
input 	[6:0] address_b;
input 	clock0;
input 	[15:0] data_a;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a15_PORTBDATAOUT_bus;
wire [143:0] ram_block1a14_PORTBDATAOUT_bus;
wire [143:0] ram_block1a13_PORTBDATAOUT_bus;
wire [143:0] ram_block1a12_PORTBDATAOUT_bus;
wire [143:0] ram_block1a11_PORTBDATAOUT_bus;
wire [143:0] ram_block1a10_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a0_PORTBDATAOUT_bus;

assign q_b[15] = ram_block1a15_PORTBDATAOUT_bus[0];

assign q_b[14] = ram_block1a14_PORTBDATAOUT_bus[0];

assign q_b[13] = ram_block1a13_PORTBDATAOUT_bus[0];

assign q_b[12] = ram_block1a12_PORTBDATAOUT_bus[0];

assign q_b[11] = ram_block1a11_PORTBDATAOUT_bus[0];

assign q_b[10] = ram_block1a10_PORTBDATAOUT_bus[0];

assign q_b[9] = ram_block1a9_PORTBDATAOUT_bus[0];

assign q_b[8] = ram_block1a8_PORTBDATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

cyclonev_ram_block ram_block1a15(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[15]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a15_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.clk0_core_clock_enable = "ena0";
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a15.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a15.operation_mode = "dual_port";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 7;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "none";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 127;
defparam ram_block1a15.port_a_logical_ram_depth = 128;
defparam ram_block1a15.port_a_logical_ram_width = 16;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_address_clear = "none";
defparam ram_block1a15.port_b_address_clock = "clock1";
defparam ram_block1a15.port_b_address_width = 7;
defparam ram_block1a15.port_b_data_out_clear = "none";
defparam ram_block1a15.port_b_data_out_clock = "none";
defparam ram_block1a15.port_b_data_width = 1;
defparam ram_block1a15.port_b_first_address = 0;
defparam ram_block1a15.port_b_first_bit_number = 15;
defparam ram_block1a15.port_b_last_address = 127;
defparam ram_block1a15.port_b_logical_ram_depth = 128;
defparam ram_block1a15.port_b_logical_ram_width = 16;
defparam ram_block1a15.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_read_enable_clock = "clock1";
defparam ram_block1a15.ram_block_type = "auto";

cyclonev_ram_block ram_block1a14(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[14]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a14_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.clk0_core_clock_enable = "ena0";
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a14.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a14.operation_mode = "dual_port";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 7;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "none";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 127;
defparam ram_block1a14.port_a_logical_ram_depth = 128;
defparam ram_block1a14.port_a_logical_ram_width = 16;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_address_clear = "none";
defparam ram_block1a14.port_b_address_clock = "clock1";
defparam ram_block1a14.port_b_address_width = 7;
defparam ram_block1a14.port_b_data_out_clear = "none";
defparam ram_block1a14.port_b_data_out_clock = "none";
defparam ram_block1a14.port_b_data_width = 1;
defparam ram_block1a14.port_b_first_address = 0;
defparam ram_block1a14.port_b_first_bit_number = 14;
defparam ram_block1a14.port_b_last_address = 127;
defparam ram_block1a14.port_b_logical_ram_depth = 128;
defparam ram_block1a14.port_b_logical_ram_width = 16;
defparam ram_block1a14.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_read_enable_clock = "clock1";
defparam ram_block1a14.ram_block_type = "auto";

cyclonev_ram_block ram_block1a13(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[13]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a13_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.clk0_core_clock_enable = "ena0";
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a13.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a13.operation_mode = "dual_port";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 7;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "none";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 127;
defparam ram_block1a13.port_a_logical_ram_depth = 128;
defparam ram_block1a13.port_a_logical_ram_width = 16;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_address_clear = "none";
defparam ram_block1a13.port_b_address_clock = "clock1";
defparam ram_block1a13.port_b_address_width = 7;
defparam ram_block1a13.port_b_data_out_clear = "none";
defparam ram_block1a13.port_b_data_out_clock = "none";
defparam ram_block1a13.port_b_data_width = 1;
defparam ram_block1a13.port_b_first_address = 0;
defparam ram_block1a13.port_b_first_bit_number = 13;
defparam ram_block1a13.port_b_last_address = 127;
defparam ram_block1a13.port_b_logical_ram_depth = 128;
defparam ram_block1a13.port_b_logical_ram_width = 16;
defparam ram_block1a13.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_read_enable_clock = "clock1";
defparam ram_block1a13.ram_block_type = "auto";

cyclonev_ram_block ram_block1a12(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[12]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a12_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a12.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a12.operation_mode = "dual_port";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 7;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "none";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 127;
defparam ram_block1a12.port_a_logical_ram_depth = 128;
defparam ram_block1a12.port_a_logical_ram_width = 16;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_address_clear = "none";
defparam ram_block1a12.port_b_address_clock = "clock1";
defparam ram_block1a12.port_b_address_width = 7;
defparam ram_block1a12.port_b_data_out_clear = "none";
defparam ram_block1a12.port_b_data_out_clock = "none";
defparam ram_block1a12.port_b_data_width = 1;
defparam ram_block1a12.port_b_first_address = 0;
defparam ram_block1a12.port_b_first_bit_number = 12;
defparam ram_block1a12.port_b_last_address = 127;
defparam ram_block1a12.port_b_logical_ram_depth = 128;
defparam ram_block1a12.port_b_logical_ram_width = 16;
defparam ram_block1a12.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_read_enable_clock = "clock1";
defparam ram_block1a12.ram_block_type = "auto";

cyclonev_ram_block ram_block1a11(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[11]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a11_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a11.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a11.operation_mode = "dual_port";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 7;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "none";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 127;
defparam ram_block1a11.port_a_logical_ram_depth = 128;
defparam ram_block1a11.port_a_logical_ram_width = 16;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_address_clear = "none";
defparam ram_block1a11.port_b_address_clock = "clock1";
defparam ram_block1a11.port_b_address_width = 7;
defparam ram_block1a11.port_b_data_out_clear = "none";
defparam ram_block1a11.port_b_data_out_clock = "none";
defparam ram_block1a11.port_b_data_width = 1;
defparam ram_block1a11.port_b_first_address = 0;
defparam ram_block1a11.port_b_first_bit_number = 11;
defparam ram_block1a11.port_b_last_address = 127;
defparam ram_block1a11.port_b_logical_ram_depth = 128;
defparam ram_block1a11.port_b_logical_ram_width = 16;
defparam ram_block1a11.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_read_enable_clock = "clock1";
defparam ram_block1a11.ram_block_type = "auto";

cyclonev_ram_block ram_block1a10(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[10]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a10_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a10.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a10.operation_mode = "dual_port";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 7;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "none";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 127;
defparam ram_block1a10.port_a_logical_ram_depth = 128;
defparam ram_block1a10.port_a_logical_ram_width = 16;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_address_clear = "none";
defparam ram_block1a10.port_b_address_clock = "clock1";
defparam ram_block1a10.port_b_address_width = 7;
defparam ram_block1a10.port_b_data_out_clear = "none";
defparam ram_block1a10.port_b_data_out_clock = "none";
defparam ram_block1a10.port_b_data_width = 1;
defparam ram_block1a10.port_b_first_address = 0;
defparam ram_block1a10.port_b_first_bit_number = 10;
defparam ram_block1a10.port_b_last_address = 127;
defparam ram_block1a10.port_b_logical_ram_depth = 128;
defparam ram_block1a10.port_b_logical_ram_width = 16;
defparam ram_block1a10.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_read_enable_clock = "clock1";
defparam ram_block1a10.ram_block_type = "auto";

cyclonev_ram_block ram_block1a9(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[9]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "dual_port";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 7;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "none";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 127;
defparam ram_block1a9.port_a_logical_ram_depth = 128;
defparam ram_block1a9.port_a_logical_ram_width = 16;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_address_clear = "none";
defparam ram_block1a9.port_b_address_clock = "clock1";
defparam ram_block1a9.port_b_address_width = 7;
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "none";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 0;
defparam ram_block1a9.port_b_first_bit_number = 9;
defparam ram_block1a9.port_b_last_address = 127;
defparam ram_block1a9.port_b_logical_ram_depth = 128;
defparam ram_block1a9.port_b_logical_ram_width = 16;
defparam ram_block1a9.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_read_enable_clock = "clock1";
defparam ram_block1a9.ram_block_type = "auto";

cyclonev_ram_block ram_block1a8(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[8]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "dual_port";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 7;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "none";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 127;
defparam ram_block1a8.port_a_logical_ram_depth = 128;
defparam ram_block1a8.port_a_logical_ram_width = 16;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_address_clear = "none";
defparam ram_block1a8.port_b_address_clock = "clock1";
defparam ram_block1a8.port_b_address_width = 7;
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "none";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 0;
defparam ram_block1a8.port_b_first_bit_number = 8;
defparam ram_block1a8.port_b_last_address = 127;
defparam ram_block1a8.port_b_logical_ram_depth = 128;
defparam ram_block1a8.port_b_logical_ram_width = 16;
defparam ram_block1a8.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_read_enable_clock = "clock1";
defparam ram_block1a8.ram_block_type = "auto";

cyclonev_ram_block ram_block1a7(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 7;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 127;
defparam ram_block1a7.port_a_logical_ram_depth = 128;
defparam ram_block1a7.port_a_logical_ram_width = 16;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 7;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "none";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 127;
defparam ram_block1a7.port_b_logical_ram_depth = 128;
defparam ram_block1a7.port_b_logical_ram_width = 16;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

cyclonev_ram_block ram_block1a6(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 7;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 127;
defparam ram_block1a6.port_a_logical_ram_depth = 128;
defparam ram_block1a6.port_a_logical_ram_width = 16;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 7;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "none";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 127;
defparam ram_block1a6.port_b_logical_ram_depth = 128;
defparam ram_block1a6.port_b_logical_ram_width = 16;
defparam ram_block1a6.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_read_enable_clock = "clock1";
defparam ram_block1a6.ram_block_type = "auto";

cyclonev_ram_block ram_block1a5(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 7;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 127;
defparam ram_block1a5.port_a_logical_ram_depth = 128;
defparam ram_block1a5.port_a_logical_ram_width = 16;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 7;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "none";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 127;
defparam ram_block1a5.port_b_logical_ram_depth = 128;
defparam ram_block1a5.port_b_logical_ram_width = 16;
defparam ram_block1a5.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_read_enable_clock = "clock1";
defparam ram_block1a5.ram_block_type = "auto";

cyclonev_ram_block ram_block1a4(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 7;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 127;
defparam ram_block1a4.port_a_logical_ram_depth = 128;
defparam ram_block1a4.port_a_logical_ram_width = 16;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 7;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "none";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 127;
defparam ram_block1a4.port_b_logical_ram_depth = 128;
defparam ram_block1a4.port_b_logical_ram_width = 16;
defparam ram_block1a4.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_read_enable_clock = "clock1";
defparam ram_block1a4.ram_block_type = "auto";

cyclonev_ram_block ram_block1a3(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 7;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 127;
defparam ram_block1a3.port_a_logical_ram_depth = 128;
defparam ram_block1a3.port_a_logical_ram_width = 16;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 7;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "none";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 127;
defparam ram_block1a3.port_b_logical_ram_depth = 128;
defparam ram_block1a3.port_b_logical_ram_width = 16;
defparam ram_block1a3.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_read_enable_clock = "clock1";
defparam ram_block1a3.ram_block_type = "auto";

cyclonev_ram_block ram_block1a2(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 7;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 127;
defparam ram_block1a2.port_a_logical_ram_depth = 128;
defparam ram_block1a2.port_a_logical_ram_width = 16;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 7;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "none";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 127;
defparam ram_block1a2.port_b_logical_ram_depth = 128;
defparam ram_block1a2.port_b_logical_ram_width = 16;
defparam ram_block1a2.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_read_enable_clock = "clock1";
defparam ram_block1a2.ram_block_type = "auto";

cyclonev_ram_block ram_block1a1(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 7;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 127;
defparam ram_block1a1.port_a_logical_ram_depth = 128;
defparam ram_block1a1.port_a_logical_ram_width = 16;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 7;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "none";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 127;
defparam ram_block1a1.port_b_logical_ram_depth = 128;
defparam ram_block1a1.port_b_logical_ram_width = 16;
defparam ram_block1a1.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_read_enable_clock = "clock1";
defparam ram_block1a1.ram_block_type = "auto";

cyclonev_ram_block ram_block1a0(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 7;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 127;
defparam ram_block1a0.port_a_logical_ram_depth = 128;
defparam ram_block1a0.port_a_logical_ram_width = 16;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 7;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "none";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 127;
defparam ram_block1a0.port_b_logical_ram_depth = 128;
defparam ram_block1a0.port_b_logical_ram_width = 16;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

endmodule

module audio_controller_cntr_h2b (
	done_dac_channel_sync,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	read_left_channel,
	found_edge,
	rd_ptr_lsb,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
input 	done_dac_channel_sync;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	read_left_channel;
input 	found_edge;
input 	rd_ptr_lsb;
input 	clock;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!sclr),
	.datab(!found_edge),
	.datac(!done_dac_channel_sync),
	.datad(!read_left_channel),
	.datae(!rd_ptr_lsb),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h5557555555575555;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

endmodule

module audio_controller_cntr_i2b (
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	WideOr0,
	WideOr01,
	clock,
	sclr,
	audio_0_avalon_left_channel_sink_valid)/* synthesis synthesis_greybox=0 */;
input 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
input 	WideOr0;
input 	WideOr01;
input 	clock;
input 	sclr;
input 	audio_0_avalon_left_channel_sink_valid;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!sclr),
	.datab(!full_dff),
	.datac(!audio_0_avalon_left_channel_sink_valid),
	.datad(!WideOr0),
	.datae(!WideOr01),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h5D5D5D555D5D5D55;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

endmodule

module audio_controller_cntr_u27 (
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	usedw_will_be_1,
	comb,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
input 	usedw_will_be_1;
input 	comb;
input 	clock;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

endmodule

module audio_controller_altera_up_sync_fifo_1 (
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	counter_reg_bit_6,
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	done_dac_channel_sync,
	q_b_15,
	left_channel_was_read,
	q_b_14,
	q_b_13,
	q_b_12,
	q_b_11,
	q_b_10,
	q_b_9,
	q_b_8,
	q_b_7,
	q_b_6,
	q_b_5,
	q_b_4,
	q_b_3,
	q_b_2,
	q_b_1,
	q_b_0,
	WideOr1,
	WideOr11,
	cur_test_clk,
	empty_dff,
	last_test_clk,
	read_right_channel,
	comb,
	audio_0_clk_clk,
	audio_0_reset_reset,
	audio_0_avalon_right_channel_sink_valid,
	audio_0_avalon_right_channel_sink_data_15,
	audio_0_avalon_right_channel_sink_data_14,
	audio_0_avalon_right_channel_sink_data_13,
	audio_0_avalon_right_channel_sink_data_12,
	audio_0_avalon_right_channel_sink_data_11,
	audio_0_avalon_right_channel_sink_data_10,
	audio_0_avalon_right_channel_sink_data_9,
	audio_0_avalon_right_channel_sink_data_8,
	audio_0_avalon_right_channel_sink_data_7,
	audio_0_avalon_right_channel_sink_data_6,
	audio_0_avalon_right_channel_sink_data_5,
	audio_0_avalon_right_channel_sink_data_4,
	audio_0_avalon_right_channel_sink_data_3,
	audio_0_avalon_right_channel_sink_data_2,
	audio_0_avalon_right_channel_sink_data_1,
	audio_0_avalon_right_channel_sink_data_0)/* synthesis synthesis_greybox=0 */;
input 	right_channel_fifo_write_space_6;
input 	right_channel_fifo_write_space_7;
output 	counter_reg_bit_6;
output 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	done_dac_channel_sync;
output 	q_b_15;
input 	left_channel_was_read;
output 	q_b_14;
output 	q_b_13;
output 	q_b_12;
output 	q_b_11;
output 	q_b_10;
output 	q_b_9;
output 	q_b_8;
output 	q_b_7;
output 	q_b_6;
output 	q_b_5;
output 	q_b_4;
output 	q_b_3;
output 	q_b_2;
output 	q_b_1;
output 	q_b_0;
input 	WideOr1;
input 	WideOr11;
input 	cur_test_clk;
output 	empty_dff;
input 	last_test_clk;
input 	read_right_channel;
input 	comb;
input 	audio_0_clk_clk;
input 	audio_0_reset_reset;
input 	audio_0_avalon_right_channel_sink_valid;
input 	audio_0_avalon_right_channel_sink_data_15;
input 	audio_0_avalon_right_channel_sink_data_14;
input 	audio_0_avalon_right_channel_sink_data_13;
input 	audio_0_avalon_right_channel_sink_data_12;
input 	audio_0_avalon_right_channel_sink_data_11;
input 	audio_0_avalon_right_channel_sink_data_10;
input 	audio_0_avalon_right_channel_sink_data_9;
input 	audio_0_avalon_right_channel_sink_data_8;
input 	audio_0_avalon_right_channel_sink_data_7;
input 	audio_0_avalon_right_channel_sink_data_6;
input 	audio_0_avalon_right_channel_sink_data_5;
input 	audio_0_avalon_right_channel_sink_data_4;
input 	audio_0_avalon_right_channel_sink_data_3;
input 	audio_0_avalon_right_channel_sink_data_2;
input 	audio_0_avalon_right_channel_sink_data_1;
input 	audio_0_avalon_right_channel_sink_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_scfifo_2 Sync_FIFO(
	.right_channel_fifo_write_space_6(right_channel_fifo_write_space_6),
	.right_channel_fifo_write_space_7(right_channel_fifo_write_space_7),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff(full_dff),
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.done_dac_channel_sync(done_dac_channel_sync),
	.q({q_b_15,q_b_14,q_b_13,q_b_12,q_b_11,q_b_10,q_b_9,q_b_8,q_b_7,q_b_6,q_b_5,q_b_4,q_b_3,q_b_2,q_b_1,q_b_0}),
	.left_channel_was_read(left_channel_was_read),
	.WideOr1(WideOr1),
	.WideOr11(WideOr11),
	.cur_test_clk(cur_test_clk),
	.empty_dff(empty_dff),
	.last_test_clk(last_test_clk),
	.read_right_channel(read_right_channel),
	.wrreq(comb),
	.clock(audio_0_clk_clk),
	.sclr(audio_0_reset_reset),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid),
	.data({audio_0_avalon_right_channel_sink_data_15,audio_0_avalon_right_channel_sink_data_14,audio_0_avalon_right_channel_sink_data_13,audio_0_avalon_right_channel_sink_data_12,audio_0_avalon_right_channel_sink_data_11,audio_0_avalon_right_channel_sink_data_10,
audio_0_avalon_right_channel_sink_data_9,audio_0_avalon_right_channel_sink_data_8,audio_0_avalon_right_channel_sink_data_7,audio_0_avalon_right_channel_sink_data_6,audio_0_avalon_right_channel_sink_data_5,audio_0_avalon_right_channel_sink_data_4,
audio_0_avalon_right_channel_sink_data_3,audio_0_avalon_right_channel_sink_data_2,audio_0_avalon_right_channel_sink_data_1,audio_0_avalon_right_channel_sink_data_0}));

endmodule

module audio_controller_scfifo_2 (
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	counter_reg_bit_6,
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	done_dac_channel_sync,
	q,
	left_channel_was_read,
	WideOr1,
	WideOr11,
	cur_test_clk,
	empty_dff,
	last_test_clk,
	read_right_channel,
	wrreq,
	clock,
	sclr,
	audio_0_avalon_right_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
input 	right_channel_fifo_write_space_6;
input 	right_channel_fifo_write_space_7;
output 	counter_reg_bit_6;
output 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	done_dac_channel_sync;
output 	[15:0] q;
input 	left_channel_was_read;
input 	WideOr1;
input 	WideOr11;
input 	cur_test_clk;
output 	empty_dff;
input 	last_test_clk;
input 	read_right_channel;
input 	wrreq;
input 	clock;
input 	sclr;
input 	audio_0_avalon_right_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_scfifo_9ba1_1 auto_generated(
	.right_channel_fifo_write_space_6(right_channel_fifo_write_space_6),
	.right_channel_fifo_write_space_7(right_channel_fifo_write_space_7),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff(full_dff),
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.done_dac_channel_sync(done_dac_channel_sync),
	.q({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.left_channel_was_read(left_channel_was_read),
	.WideOr1(WideOr1),
	.WideOr11(WideOr11),
	.cur_test_clk(cur_test_clk),
	.empty_dff(empty_dff),
	.last_test_clk(last_test_clk),
	.read_right_channel(read_right_channel),
	.wrreq(wrreq),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid),
	.data({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

endmodule

module audio_controller_scfifo_9ba1_1 (
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	counter_reg_bit_6,
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	done_dac_channel_sync,
	q,
	left_channel_was_read,
	WideOr1,
	WideOr11,
	cur_test_clk,
	empty_dff,
	last_test_clk,
	read_right_channel,
	wrreq,
	clock,
	sclr,
	audio_0_avalon_right_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
input 	right_channel_fifo_write_space_6;
input 	right_channel_fifo_write_space_7;
output 	counter_reg_bit_6;
output 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	done_dac_channel_sync;
output 	[15:0] q;
input 	left_channel_was_read;
input 	WideOr1;
input 	WideOr11;
input 	cur_test_clk;
output 	empty_dff;
input 	last_test_clk;
input 	read_right_channel;
input 	wrreq;
input 	clock;
input 	sclr;
input 	audio_0_avalon_right_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_controller_a_dpfifo_s2a1_1 dpfifo(
	.right_channel_fifo_write_space_6(right_channel_fifo_write_space_6),
	.right_channel_fifo_write_space_7(right_channel_fifo_write_space_7),
	.counter_reg_bit_6(counter_reg_bit_6),
	.full_dff1(full_dff),
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.done_dac_channel_sync(done_dac_channel_sync),
	.q({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.left_channel_was_read(left_channel_was_read),
	.WideOr1(WideOr1),
	.WideOr11(WideOr11),
	.cur_test_clk(cur_test_clk),
	.empty_dff1(empty_dff),
	.last_test_clk(last_test_clk),
	.read_right_channel(read_right_channel),
	.wreq(wrreq),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid),
	.data({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

endmodule

module audio_controller_a_dpfifo_s2a1_1 (
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	counter_reg_bit_6,
	full_dff1,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	done_dac_channel_sync,
	q,
	left_channel_was_read,
	WideOr1,
	WideOr11,
	cur_test_clk,
	empty_dff1,
	last_test_clk,
	read_right_channel,
	wreq,
	clock,
	sclr,
	audio_0_avalon_right_channel_sink_valid,
	data)/* synthesis synthesis_greybox=0 */;
input 	right_channel_fifo_write_space_6;
input 	right_channel_fifo_write_space_7;
output 	counter_reg_bit_6;
output 	full_dff1;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	done_dac_channel_sync;
output 	[15:0] q;
input 	left_channel_was_read;
input 	WideOr1;
input 	WideOr11;
input 	cur_test_clk;
output 	empty_dff1;
input 	last_test_clk;
input 	read_right_channel;
input 	wreq;
input 	clock;
input 	sclr;
input 	audio_0_avalon_right_channel_sink_valid;
input 	[15:0] data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \wr_ptr|counter_reg_bit[0]~q ;
wire \wr_ptr|counter_reg_bit[1]~q ;
wire \wr_ptr|counter_reg_bit[2]~q ;
wire \wr_ptr|counter_reg_bit[3]~q ;
wire \wr_ptr|counter_reg_bit[4]~q ;
wire \wr_ptr|counter_reg_bit[5]~q ;
wire \wr_ptr|counter_reg_bit[6]~q ;
wire \rd_ptr_msb|counter_reg_bit[0]~q ;
wire \rd_ptr_msb|counter_reg_bit[1]~q ;
wire \rd_ptr_msb|counter_reg_bit[2]~q ;
wire \rd_ptr_msb|counter_reg_bit[3]~q ;
wire \rd_ptr_msb|counter_reg_bit[4]~q ;
wire \rd_ptr_msb|counter_reg_bit[5]~q ;
wire \usedw_will_be_1~0_combout ;
wire \low_addressa[0]~q ;
wire \rd_ptr_lsb~q ;
wire \ram_read_address[0]~0_combout ;
wire \low_addressa[1]~q ;
wire \ram_read_address[1]~1_combout ;
wire \low_addressa[2]~q ;
wire \ram_read_address[2]~2_combout ;
wire \low_addressa[3]~q ;
wire \ram_read_address[3]~3_combout ;
wire \low_addressa[4]~q ;
wire \ram_read_address[4]~4_combout ;
wire \low_addressa[5]~q ;
wire \ram_read_address[5]~5_combout ;
wire \low_addressa[6]~q ;
wire \ram_read_address[6]~6_combout ;
wire \low_addressa[0]~0_combout ;
wire \rd_ptr_lsb~0_combout ;
wire \rd_ptr_lsb~1_combout ;
wire \low_addressa[1]~1_combout ;
wire \low_addressa[2]~2_combout ;
wire \low_addressa[3]~3_combout ;
wire \low_addressa[4]~4_combout ;
wire \low_addressa[5]~5_combout ;
wire \low_addressa[6]~6_combout ;
wire \_~0_combout ;
wire \_~1_combout ;
wire \_~2_combout ;
wire \usedw_will_be_0~0_combout ;
wire \usedw_is_0_dff~q ;
wire \_~3_combout ;
wire \_~4_combout ;
wire \usedw_will_be_2~0_combout ;
wire \usedw_is_2_dff~q ;
wire \usedw_will_be_1~1_combout ;
wire \usedw_is_1_dff~q ;
wire \empty_dff~0_combout ;


audio_controller_cntr_i2b_1 wr_ptr(
	.right_channel_fifo_write_space_6(right_channel_fifo_write_space_6),
	.right_channel_fifo_write_space_7(right_channel_fifo_write_space_7),
	.full_dff(full_dff1),
	.counter_reg_bit_0(\wr_ptr|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\wr_ptr|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\wr_ptr|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\wr_ptr|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\wr_ptr|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\wr_ptr|counter_reg_bit[5]~q ),
	.counter_reg_bit_6(\wr_ptr|counter_reg_bit[6]~q ),
	.WideOr1(WideOr1),
	.clock(clock),
	.sclr(sclr),
	.audio_0_avalon_right_channel_sink_valid(audio_0_avalon_right_channel_sink_valid));

audio_controller_cntr_u27_1 usedw_counter(
	.counter_reg_bit_6(counter_reg_bit_6),
	.counter_reg_bit_0(counter_reg_bit_0),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_3(counter_reg_bit_3),
	.counter_reg_bit_4(counter_reg_bit_4),
	.counter_reg_bit_5(counter_reg_bit_5),
	.comb(wreq),
	.usedw_will_be_1(\usedw_will_be_1~0_combout ),
	.clock(clock),
	.sclr(sclr));

audio_controller_cntr_h2b_1 rd_ptr_msb(
	.done_dac_channel_sync(done_dac_channel_sync),
	.left_channel_was_read(left_channel_was_read),
	.counter_reg_bit_0(\rd_ptr_msb|counter_reg_bit[0]~q ),
	.counter_reg_bit_1(\rd_ptr_msb|counter_reg_bit[1]~q ),
	.counter_reg_bit_2(\rd_ptr_msb|counter_reg_bit[2]~q ),
	.counter_reg_bit_3(\rd_ptr_msb|counter_reg_bit[3]~q ),
	.counter_reg_bit_4(\rd_ptr_msb|counter_reg_bit[4]~q ),
	.counter_reg_bit_5(\rd_ptr_msb|counter_reg_bit[5]~q ),
	.cur_test_clk(cur_test_clk),
	.last_test_clk(last_test_clk),
	.rd_ptr_lsb(\rd_ptr_lsb~q ),
	.clock(clock),
	.sclr(sclr));

audio_controller_altsyncram_r3i1_1 FIFOram(
	.q_b({q[15],q[14],q[13],q[12],q[11],q[10],q[9],q[8],q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}),
	.address_a({\wr_ptr|counter_reg_bit[6]~q ,\wr_ptr|counter_reg_bit[5]~q ,\wr_ptr|counter_reg_bit[4]~q ,\wr_ptr|counter_reg_bit[3]~q ,\wr_ptr|counter_reg_bit[2]~q ,\wr_ptr|counter_reg_bit[1]~q ,\wr_ptr|counter_reg_bit[0]~q }),
	.wren_a(wreq),
	.address_b({\ram_read_address[6]~6_combout ,\ram_read_address[5]~5_combout ,\ram_read_address[4]~4_combout ,\ram_read_address[3]~3_combout ,\ram_read_address[2]~2_combout ,\ram_read_address[1]~1_combout ,\ram_read_address[0]~0_combout }),
	.clock0(clock),
	.data_a({data[15],data[14],data[13],data[12],data[11],data[10],data[9],data[8],data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]}));

cyclonev_lcell_comb \usedw_will_be_1~0 (
	.dataa(!sclr),
	.datab(!cur_test_clk),
	.datac(!last_test_clk),
	.datad(!done_dac_channel_sync),
	.datae(!left_channel_was_read),
	.dataf(!wreq),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~0 .extended_lut = "off";
defparam \usedw_will_be_1~0 .lut_mask = 64'h5555555DFFFFFFF7;
defparam \usedw_will_be_1~0 .shared_arith = "off";

dffeas \low_addressa[0] (
	.clk(clock),
	.d(\low_addressa[0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[0]~q ),
	.prn(vcc));
defparam \low_addressa[0] .is_wysiwyg = "true";
defparam \low_addressa[0] .power_up = "low";

dffeas rd_ptr_lsb(
	.clk(clock),
	.d(\rd_ptr_lsb~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rd_ptr_lsb~1_combout ),
	.q(\rd_ptr_lsb~q ),
	.prn(vcc));
defparam rd_ptr_lsb.is_wysiwyg = "true";
defparam rd_ptr_lsb.power_up = "low";

cyclonev_lcell_comb \ram_read_address[0]~0 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\low_addressa[0]~q ),
	.dataf(!\rd_ptr_lsb~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[0]~0 .extended_lut = "off";
defparam \ram_read_address[0]~0 .lut_mask = 64'h0002FFFF0000FFFD;
defparam \ram_read_address[0]~0 .shared_arith = "off";

dffeas \low_addressa[1] (
	.clk(clock),
	.d(\low_addressa[1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[1]~q ),
	.prn(vcc));
defparam \low_addressa[1] .is_wysiwyg = "true";
defparam \low_addressa[1] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[1]~1 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[0]~q ),
	.dataf(!\low_addressa[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[1]~1 .extended_lut = "off";
defparam \ram_read_address[1]~1 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[1]~1 .shared_arith = "off";

dffeas \low_addressa[2] (
	.clk(clock),
	.d(\low_addressa[2]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[2]~q ),
	.prn(vcc));
defparam \low_addressa[2] .is_wysiwyg = "true";
defparam \low_addressa[2] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[2]~2 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[1]~q ),
	.dataf(!\low_addressa[2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[2]~2 .extended_lut = "off";
defparam \ram_read_address[2]~2 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[2]~2 .shared_arith = "off";

dffeas \low_addressa[3] (
	.clk(clock),
	.d(\low_addressa[3]~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[3]~q ),
	.prn(vcc));
defparam \low_addressa[3] .is_wysiwyg = "true";
defparam \low_addressa[3] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[3]~3 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[2]~q ),
	.dataf(!\low_addressa[3]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[3]~3 .extended_lut = "off";
defparam \ram_read_address[3]~3 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[3]~3 .shared_arith = "off";

dffeas \low_addressa[4] (
	.clk(clock),
	.d(\low_addressa[4]~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[4]~q ),
	.prn(vcc));
defparam \low_addressa[4] .is_wysiwyg = "true";
defparam \low_addressa[4] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[4]~4 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[3]~q ),
	.dataf(!\low_addressa[4]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[4]~4 .extended_lut = "off";
defparam \ram_read_address[4]~4 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[4]~4 .shared_arith = "off";

dffeas \low_addressa[5] (
	.clk(clock),
	.d(\low_addressa[5]~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[5]~q ),
	.prn(vcc));
defparam \low_addressa[5] .is_wysiwyg = "true";
defparam \low_addressa[5] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[5]~5 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[4]~q ),
	.dataf(!\low_addressa[5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[5]~5 .extended_lut = "off";
defparam \ram_read_address[5]~5 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[5]~5 .shared_arith = "off";

dffeas \low_addressa[6] (
	.clk(clock),
	.d(\low_addressa[6]~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\low_addressa[6]~q ),
	.prn(vcc));
defparam \low_addressa[6] .is_wysiwyg = "true";
defparam \low_addressa[6] .power_up = "low";

cyclonev_lcell_comb \ram_read_address[6]~6 (
	.dataa(!cur_test_clk),
	.datab(!last_test_clk),
	.datac(!done_dac_channel_sync),
	.datad(!left_channel_was_read),
	.datae(!\rd_ptr_msb|counter_reg_bit[5]~q ),
	.dataf(!\low_addressa[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ram_read_address[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ram_read_address[6]~6 .extended_lut = "off";
defparam \ram_read_address[6]~6 .lut_mask = 64'h00000002FFFDFFFF;
defparam \ram_read_address[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[0]~0 (
	.dataa(!sclr),
	.datab(!\ram_read_address[0]~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[0]~0 .extended_lut = "off";
defparam \low_addressa[0]~0 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \rd_ptr_lsb~0 (
	.dataa(!sclr),
	.datab(!\rd_ptr_lsb~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rd_ptr_lsb~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rd_ptr_lsb~0 .extended_lut = "off";
defparam \rd_ptr_lsb~0 .lut_mask = 64'h8888888888888888;
defparam \rd_ptr_lsb~0 .shared_arith = "off";

cyclonev_lcell_comb \rd_ptr_lsb~1 (
	.dataa(!sclr),
	.datab(!cur_test_clk),
	.datac(!last_test_clk),
	.datad(!done_dac_channel_sync),
	.datae(!left_channel_was_read),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rd_ptr_lsb~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rd_ptr_lsb~1 .extended_lut = "off";
defparam \rd_ptr_lsb~1 .lut_mask = 64'h5555555D5555555D;
defparam \rd_ptr_lsb~1 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[1]~1 (
	.dataa(!sclr),
	.datab(!\ram_read_address[1]~1_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[1]~1 .extended_lut = "off";
defparam \low_addressa[1]~1 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[2]~2 (
	.dataa(!sclr),
	.datab(!\ram_read_address[2]~2_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[2]~2 .extended_lut = "off";
defparam \low_addressa[2]~2 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[3]~3 (
	.dataa(!sclr),
	.datab(!\ram_read_address[3]~3_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[3]~3 .extended_lut = "off";
defparam \low_addressa[3]~3 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[4]~4 (
	.dataa(!sclr),
	.datab(!\ram_read_address[4]~4_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[4]~4 .extended_lut = "off";
defparam \low_addressa[4]~4 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[5]~5 (
	.dataa(!sclr),
	.datab(!\ram_read_address[5]~5_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[5]~5 .extended_lut = "off";
defparam \low_addressa[5]~5 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \low_addressa[6]~6 (
	.dataa(!sclr),
	.datab(!\ram_read_address[6]~6_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\low_addressa[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \low_addressa[6]~6 .extended_lut = "off";
defparam \low_addressa[6]~6 .lut_mask = 64'h2222222222222222;
defparam \low_addressa[6]~6 .shared_arith = "off";

dffeas full_dff(
	.clk(clock),
	.d(\_~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(full_dff1),
	.prn(vcc));
defparam full_dff.is_wysiwyg = "true";
defparam full_dff.power_up = "low";

dffeas empty_dff(
	.clk(clock),
	.d(\empty_dff~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(empty_dff1),
	.prn(vcc));
defparam empty_dff.is_wysiwyg = "true";
defparam empty_dff.power_up = "low";

cyclonev_lcell_comb \_~0 (
	.dataa(!counter_reg_bit_3),
	.datab(!counter_reg_bit_4),
	.datac(!counter_reg_bit_5),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0001000100010001;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb \_~1 (
	.dataa(!counter_reg_bit_0),
	.datab(!counter_reg_bit_1),
	.datac(!counter_reg_bit_2),
	.datad(!\_~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~1 .extended_lut = "off";
defparam \_~1 .lut_mask = 64'h0001000100010001;
defparam \_~1 .shared_arith = "off";

cyclonev_lcell_comb \_~2 (
	.dataa(!full_dff1),
	.datab(!read_right_channel),
	.datac(!audio_0_avalon_right_channel_sink_valid),
	.datad(!WideOr11),
	.datae(!\_~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h4444444C4444444C;
defparam \_~2 .shared_arith = "off";

cyclonev_lcell_comb \usedw_will_be_0~0 (
	.dataa(!sclr),
	.datab(!read_right_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_0~0 .extended_lut = "off";
defparam \usedw_will_be_0~0 .lut_mask = 64'h2808AA8A2808AA8A;
defparam \usedw_will_be_0~0 .shared_arith = "off";

dffeas usedw_is_0_dff(
	.clk(clock),
	.d(\usedw_will_be_0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_0_dff~q ),
	.prn(vcc));
defparam usedw_is_0_dff.is_wysiwyg = "true";
defparam usedw_is_0_dff.power_up = "low";

cyclonev_lcell_comb \_~3 (
	.dataa(!counter_reg_bit_3),
	.datab(!counter_reg_bit_4),
	.datac(!counter_reg_bit_5),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h8000800080008000;
defparam \_~3 .shared_arith = "off";

cyclonev_lcell_comb \_~4 (
	.dataa(!counter_reg_bit_0),
	.datab(!counter_reg_bit_1),
	.datac(!counter_reg_bit_2),
	.datad(!\_~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~4 .extended_lut = "off";
defparam \_~4 .lut_mask = 64'h0010001000100010;
defparam \_~4 .shared_arith = "off";

cyclonev_lcell_comb \usedw_will_be_2~0 (
	.dataa(!read_right_channel),
	.datab(!wreq),
	.datac(!\usedw_is_1_dff~q ),
	.datad(!\usedw_is_2_dff~q ),
	.datae(!\_~4_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_2~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_2~0 .extended_lut = "off";
defparam \usedw_will_be_2~0 .lut_mask = 64'h029B46DF029B46DF;
defparam \usedw_will_be_2~0 .shared_arith = "off";

dffeas usedw_is_2_dff(
	.clk(clock),
	.d(\usedw_will_be_2~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_2_dff~q ),
	.prn(vcc));
defparam usedw_is_2_dff.is_wysiwyg = "true";
defparam usedw_is_2_dff.power_up = "low";

cyclonev_lcell_comb \usedw_will_be_1~1 (
	.dataa(!sclr),
	.datab(!read_right_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(!\usedw_is_2_dff~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\usedw_will_be_1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \usedw_will_be_1~1 .extended_lut = "off";
defparam \usedw_will_be_1~1 .lut_mask = 64'h088A008228AA20A2;
defparam \usedw_will_be_1~1 .shared_arith = "off";

dffeas usedw_is_1_dff(
	.clk(clock),
	.d(\usedw_will_be_1~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\usedw_is_1_dff~q ),
	.prn(vcc));
defparam usedw_is_1_dff.is_wysiwyg = "true";
defparam usedw_is_1_dff.power_up = "low";

cyclonev_lcell_comb \empty_dff~0 (
	.dataa(!sclr),
	.datab(!read_right_channel),
	.datac(!wreq),
	.datad(!\usedw_is_1_dff~q ),
	.datae(!\usedw_is_0_dff~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\empty_dff~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \empty_dff~0 .extended_lut = "off";
defparam \empty_dff~0 .lut_mask = 64'h2000AA882000AA88;
defparam \empty_dff~0 .shared_arith = "off";

endmodule

module audio_controller_altsyncram_r3i1_1 (
	q_b,
	address_a,
	wren_a,
	address_b,
	clock0,
	data_a)/* synthesis synthesis_greybox=0 */;
output 	[15:0] q_b;
input 	[6:0] address_a;
input 	wren_a;
input 	[6:0] address_b;
input 	clock0;
input 	[15:0] data_a;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a15_PORTBDATAOUT_bus;
wire [143:0] ram_block1a14_PORTBDATAOUT_bus;
wire [143:0] ram_block1a13_PORTBDATAOUT_bus;
wire [143:0] ram_block1a12_PORTBDATAOUT_bus;
wire [143:0] ram_block1a11_PORTBDATAOUT_bus;
wire [143:0] ram_block1a10_PORTBDATAOUT_bus;
wire [143:0] ram_block1a9_PORTBDATAOUT_bus;
wire [143:0] ram_block1a8_PORTBDATAOUT_bus;
wire [143:0] ram_block1a7_PORTBDATAOUT_bus;
wire [143:0] ram_block1a6_PORTBDATAOUT_bus;
wire [143:0] ram_block1a5_PORTBDATAOUT_bus;
wire [143:0] ram_block1a4_PORTBDATAOUT_bus;
wire [143:0] ram_block1a3_PORTBDATAOUT_bus;
wire [143:0] ram_block1a2_PORTBDATAOUT_bus;
wire [143:0] ram_block1a1_PORTBDATAOUT_bus;
wire [143:0] ram_block1a0_PORTBDATAOUT_bus;

assign q_b[15] = ram_block1a15_PORTBDATAOUT_bus[0];

assign q_b[14] = ram_block1a14_PORTBDATAOUT_bus[0];

assign q_b[13] = ram_block1a13_PORTBDATAOUT_bus[0];

assign q_b[12] = ram_block1a12_PORTBDATAOUT_bus[0];

assign q_b[11] = ram_block1a11_PORTBDATAOUT_bus[0];

assign q_b[10] = ram_block1a10_PORTBDATAOUT_bus[0];

assign q_b[9] = ram_block1a9_PORTBDATAOUT_bus[0];

assign q_b[8] = ram_block1a8_PORTBDATAOUT_bus[0];

assign q_b[7] = ram_block1a7_PORTBDATAOUT_bus[0];

assign q_b[6] = ram_block1a6_PORTBDATAOUT_bus[0];

assign q_b[5] = ram_block1a5_PORTBDATAOUT_bus[0];

assign q_b[4] = ram_block1a4_PORTBDATAOUT_bus[0];

assign q_b[3] = ram_block1a3_PORTBDATAOUT_bus[0];

assign q_b[2] = ram_block1a2_PORTBDATAOUT_bus[0];

assign q_b[1] = ram_block1a1_PORTBDATAOUT_bus[0];

assign q_b[0] = ram_block1a0_PORTBDATAOUT_bus[0];

cyclonev_ram_block ram_block1a15(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[15]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a15_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.clk0_core_clock_enable = "ena0";
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a15.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a15.operation_mode = "dual_port";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 7;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "none";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 127;
defparam ram_block1a15.port_a_logical_ram_depth = 128;
defparam ram_block1a15.port_a_logical_ram_width = 16;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_address_clear = "none";
defparam ram_block1a15.port_b_address_clock = "clock1";
defparam ram_block1a15.port_b_address_width = 7;
defparam ram_block1a15.port_b_data_out_clear = "none";
defparam ram_block1a15.port_b_data_out_clock = "none";
defparam ram_block1a15.port_b_data_width = 1;
defparam ram_block1a15.port_b_first_address = 0;
defparam ram_block1a15.port_b_first_bit_number = 15;
defparam ram_block1a15.port_b_last_address = 127;
defparam ram_block1a15.port_b_logical_ram_depth = 128;
defparam ram_block1a15.port_b_logical_ram_width = 16;
defparam ram_block1a15.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.port_b_read_enable_clock = "clock1";
defparam ram_block1a15.ram_block_type = "auto";

cyclonev_ram_block ram_block1a14(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[14]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a14_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.clk0_core_clock_enable = "ena0";
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a14.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a14.operation_mode = "dual_port";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 7;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "none";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 127;
defparam ram_block1a14.port_a_logical_ram_depth = 128;
defparam ram_block1a14.port_a_logical_ram_width = 16;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_address_clear = "none";
defparam ram_block1a14.port_b_address_clock = "clock1";
defparam ram_block1a14.port_b_address_width = 7;
defparam ram_block1a14.port_b_data_out_clear = "none";
defparam ram_block1a14.port_b_data_out_clock = "none";
defparam ram_block1a14.port_b_data_width = 1;
defparam ram_block1a14.port_b_first_address = 0;
defparam ram_block1a14.port_b_first_bit_number = 14;
defparam ram_block1a14.port_b_last_address = 127;
defparam ram_block1a14.port_b_logical_ram_depth = 128;
defparam ram_block1a14.port_b_logical_ram_width = 16;
defparam ram_block1a14.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.port_b_read_enable_clock = "clock1";
defparam ram_block1a14.ram_block_type = "auto";

cyclonev_ram_block ram_block1a13(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[13]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a13_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.clk0_core_clock_enable = "ena0";
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a13.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a13.operation_mode = "dual_port";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 7;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "none";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 127;
defparam ram_block1a13.port_a_logical_ram_depth = 128;
defparam ram_block1a13.port_a_logical_ram_width = 16;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_address_clear = "none";
defparam ram_block1a13.port_b_address_clock = "clock1";
defparam ram_block1a13.port_b_address_width = 7;
defparam ram_block1a13.port_b_data_out_clear = "none";
defparam ram_block1a13.port_b_data_out_clock = "none";
defparam ram_block1a13.port_b_data_width = 1;
defparam ram_block1a13.port_b_first_address = 0;
defparam ram_block1a13.port_b_first_bit_number = 13;
defparam ram_block1a13.port_b_last_address = 127;
defparam ram_block1a13.port_b_logical_ram_depth = 128;
defparam ram_block1a13.port_b_logical_ram_width = 16;
defparam ram_block1a13.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.port_b_read_enable_clock = "clock1";
defparam ram_block1a13.ram_block_type = "auto";

cyclonev_ram_block ram_block1a12(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[12]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a12_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.clk0_core_clock_enable = "ena0";
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a12.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a12.operation_mode = "dual_port";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 7;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "none";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 127;
defparam ram_block1a12.port_a_logical_ram_depth = 128;
defparam ram_block1a12.port_a_logical_ram_width = 16;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_address_clear = "none";
defparam ram_block1a12.port_b_address_clock = "clock1";
defparam ram_block1a12.port_b_address_width = 7;
defparam ram_block1a12.port_b_data_out_clear = "none";
defparam ram_block1a12.port_b_data_out_clock = "none";
defparam ram_block1a12.port_b_data_width = 1;
defparam ram_block1a12.port_b_first_address = 0;
defparam ram_block1a12.port_b_first_bit_number = 12;
defparam ram_block1a12.port_b_last_address = 127;
defparam ram_block1a12.port_b_logical_ram_depth = 128;
defparam ram_block1a12.port_b_logical_ram_width = 16;
defparam ram_block1a12.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.port_b_read_enable_clock = "clock1";
defparam ram_block1a12.ram_block_type = "auto";

cyclonev_ram_block ram_block1a11(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[11]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a11_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a11.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a11.operation_mode = "dual_port";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 7;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "none";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 127;
defparam ram_block1a11.port_a_logical_ram_depth = 128;
defparam ram_block1a11.port_a_logical_ram_width = 16;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_address_clear = "none";
defparam ram_block1a11.port_b_address_clock = "clock1";
defparam ram_block1a11.port_b_address_width = 7;
defparam ram_block1a11.port_b_data_out_clear = "none";
defparam ram_block1a11.port_b_data_out_clock = "none";
defparam ram_block1a11.port_b_data_width = 1;
defparam ram_block1a11.port_b_first_address = 0;
defparam ram_block1a11.port_b_first_bit_number = 11;
defparam ram_block1a11.port_b_last_address = 127;
defparam ram_block1a11.port_b_logical_ram_depth = 128;
defparam ram_block1a11.port_b_logical_ram_width = 16;
defparam ram_block1a11.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.port_b_read_enable_clock = "clock1";
defparam ram_block1a11.ram_block_type = "auto";

cyclonev_ram_block ram_block1a10(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[10]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a10_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a10.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a10.operation_mode = "dual_port";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 7;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "none";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 127;
defparam ram_block1a10.port_a_logical_ram_depth = 128;
defparam ram_block1a10.port_a_logical_ram_width = 16;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_address_clear = "none";
defparam ram_block1a10.port_b_address_clock = "clock1";
defparam ram_block1a10.port_b_address_width = 7;
defparam ram_block1a10.port_b_data_out_clear = "none";
defparam ram_block1a10.port_b_data_out_clock = "none";
defparam ram_block1a10.port_b_data_width = 1;
defparam ram_block1a10.port_b_first_address = 0;
defparam ram_block1a10.port_b_first_bit_number = 10;
defparam ram_block1a10.port_b_last_address = 127;
defparam ram_block1a10.port_b_logical_ram_depth = 128;
defparam ram_block1a10.port_b_logical_ram_width = 16;
defparam ram_block1a10.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.port_b_read_enable_clock = "clock1";
defparam ram_block1a10.ram_block_type = "auto";

cyclonev_ram_block ram_block1a9(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[9]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a9_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a9.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a9.operation_mode = "dual_port";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 7;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "none";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 127;
defparam ram_block1a9.port_a_logical_ram_depth = 128;
defparam ram_block1a9.port_a_logical_ram_width = 16;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_address_clear = "none";
defparam ram_block1a9.port_b_address_clock = "clock1";
defparam ram_block1a9.port_b_address_width = 7;
defparam ram_block1a9.port_b_data_out_clear = "none";
defparam ram_block1a9.port_b_data_out_clock = "none";
defparam ram_block1a9.port_b_data_width = 1;
defparam ram_block1a9.port_b_first_address = 0;
defparam ram_block1a9.port_b_first_bit_number = 9;
defparam ram_block1a9.port_b_last_address = 127;
defparam ram_block1a9.port_b_logical_ram_depth = 128;
defparam ram_block1a9.port_b_logical_ram_width = 16;
defparam ram_block1a9.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.port_b_read_enable_clock = "clock1";
defparam ram_block1a9.ram_block_type = "auto";

cyclonev_ram_block ram_block1a8(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[8]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a8_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a8.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a8.operation_mode = "dual_port";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 7;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "none";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 127;
defparam ram_block1a8.port_a_logical_ram_depth = 128;
defparam ram_block1a8.port_a_logical_ram_width = 16;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_address_clear = "none";
defparam ram_block1a8.port_b_address_clock = "clock1";
defparam ram_block1a8.port_b_address_width = 7;
defparam ram_block1a8.port_b_data_out_clear = "none";
defparam ram_block1a8.port_b_data_out_clock = "none";
defparam ram_block1a8.port_b_data_width = 1;
defparam ram_block1a8.port_b_first_address = 0;
defparam ram_block1a8.port_b_first_bit_number = 8;
defparam ram_block1a8.port_b_last_address = 127;
defparam ram_block1a8.port_b_logical_ram_depth = 128;
defparam ram_block1a8.port_b_logical_ram_width = 16;
defparam ram_block1a8.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.port_b_read_enable_clock = "clock1";
defparam ram_block1a8.ram_block_type = "auto";

cyclonev_ram_block ram_block1a7(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[7]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a7_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a7.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a7.operation_mode = "dual_port";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 7;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "none";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 127;
defparam ram_block1a7.port_a_logical_ram_depth = 128;
defparam ram_block1a7.port_a_logical_ram_width = 16;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_address_clear = "none";
defparam ram_block1a7.port_b_address_clock = "clock1";
defparam ram_block1a7.port_b_address_width = 7;
defparam ram_block1a7.port_b_data_out_clear = "none";
defparam ram_block1a7.port_b_data_out_clock = "none";
defparam ram_block1a7.port_b_data_width = 1;
defparam ram_block1a7.port_b_first_address = 0;
defparam ram_block1a7.port_b_first_bit_number = 7;
defparam ram_block1a7.port_b_last_address = 127;
defparam ram_block1a7.port_b_logical_ram_depth = 128;
defparam ram_block1a7.port_b_logical_ram_width = 16;
defparam ram_block1a7.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.port_b_read_enable_clock = "clock1";
defparam ram_block1a7.ram_block_type = "auto";

cyclonev_ram_block ram_block1a6(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[6]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a6_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a6.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a6.operation_mode = "dual_port";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 7;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "none";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 127;
defparam ram_block1a6.port_a_logical_ram_depth = 128;
defparam ram_block1a6.port_a_logical_ram_width = 16;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_address_clear = "none";
defparam ram_block1a6.port_b_address_clock = "clock1";
defparam ram_block1a6.port_b_address_width = 7;
defparam ram_block1a6.port_b_data_out_clear = "none";
defparam ram_block1a6.port_b_data_out_clock = "none";
defparam ram_block1a6.port_b_data_width = 1;
defparam ram_block1a6.port_b_first_address = 0;
defparam ram_block1a6.port_b_first_bit_number = 6;
defparam ram_block1a6.port_b_last_address = 127;
defparam ram_block1a6.port_b_logical_ram_depth = 128;
defparam ram_block1a6.port_b_logical_ram_width = 16;
defparam ram_block1a6.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.port_b_read_enable_clock = "clock1";
defparam ram_block1a6.ram_block_type = "auto";

cyclonev_ram_block ram_block1a5(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[5]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a5_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a5.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a5.operation_mode = "dual_port";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 7;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "none";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 127;
defparam ram_block1a5.port_a_logical_ram_depth = 128;
defparam ram_block1a5.port_a_logical_ram_width = 16;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_address_clear = "none";
defparam ram_block1a5.port_b_address_clock = "clock1";
defparam ram_block1a5.port_b_address_width = 7;
defparam ram_block1a5.port_b_data_out_clear = "none";
defparam ram_block1a5.port_b_data_out_clock = "none";
defparam ram_block1a5.port_b_data_width = 1;
defparam ram_block1a5.port_b_first_address = 0;
defparam ram_block1a5.port_b_first_bit_number = 5;
defparam ram_block1a5.port_b_last_address = 127;
defparam ram_block1a5.port_b_logical_ram_depth = 128;
defparam ram_block1a5.port_b_logical_ram_width = 16;
defparam ram_block1a5.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.port_b_read_enable_clock = "clock1";
defparam ram_block1a5.ram_block_type = "auto";

cyclonev_ram_block ram_block1a4(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[4]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a4_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a4.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a4.operation_mode = "dual_port";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 7;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "none";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 127;
defparam ram_block1a4.port_a_logical_ram_depth = 128;
defparam ram_block1a4.port_a_logical_ram_width = 16;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_address_clear = "none";
defparam ram_block1a4.port_b_address_clock = "clock1";
defparam ram_block1a4.port_b_address_width = 7;
defparam ram_block1a4.port_b_data_out_clear = "none";
defparam ram_block1a4.port_b_data_out_clock = "none";
defparam ram_block1a4.port_b_data_width = 1;
defparam ram_block1a4.port_b_first_address = 0;
defparam ram_block1a4.port_b_first_bit_number = 4;
defparam ram_block1a4.port_b_last_address = 127;
defparam ram_block1a4.port_b_logical_ram_depth = 128;
defparam ram_block1a4.port_b_logical_ram_width = 16;
defparam ram_block1a4.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.port_b_read_enable_clock = "clock1";
defparam ram_block1a4.ram_block_type = "auto";

cyclonev_ram_block ram_block1a3(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[3]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a3_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a3.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a3.operation_mode = "dual_port";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 7;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "none";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 127;
defparam ram_block1a3.port_a_logical_ram_depth = 128;
defparam ram_block1a3.port_a_logical_ram_width = 16;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_address_clear = "none";
defparam ram_block1a3.port_b_address_clock = "clock1";
defparam ram_block1a3.port_b_address_width = 7;
defparam ram_block1a3.port_b_data_out_clear = "none";
defparam ram_block1a3.port_b_data_out_clock = "none";
defparam ram_block1a3.port_b_data_width = 1;
defparam ram_block1a3.port_b_first_address = 0;
defparam ram_block1a3.port_b_first_bit_number = 3;
defparam ram_block1a3.port_b_last_address = 127;
defparam ram_block1a3.port_b_logical_ram_depth = 128;
defparam ram_block1a3.port_b_logical_ram_width = 16;
defparam ram_block1a3.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.port_b_read_enable_clock = "clock1";
defparam ram_block1a3.ram_block_type = "auto";

cyclonev_ram_block ram_block1a2(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[2]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a2_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a2.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a2.operation_mode = "dual_port";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 7;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "none";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 127;
defparam ram_block1a2.port_a_logical_ram_depth = 128;
defparam ram_block1a2.port_a_logical_ram_width = 16;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_address_clear = "none";
defparam ram_block1a2.port_b_address_clock = "clock1";
defparam ram_block1a2.port_b_address_width = 7;
defparam ram_block1a2.port_b_data_out_clear = "none";
defparam ram_block1a2.port_b_data_out_clock = "none";
defparam ram_block1a2.port_b_data_width = 1;
defparam ram_block1a2.port_b_first_address = 0;
defparam ram_block1a2.port_b_first_bit_number = 2;
defparam ram_block1a2.port_b_last_address = 127;
defparam ram_block1a2.port_b_logical_ram_depth = 128;
defparam ram_block1a2.port_b_logical_ram_width = 16;
defparam ram_block1a2.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.port_b_read_enable_clock = "clock1";
defparam ram_block1a2.ram_block_type = "auto";

cyclonev_ram_block ram_block1a1(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[1]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a1_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a1.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a1.operation_mode = "dual_port";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 7;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "none";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 127;
defparam ram_block1a1.port_a_logical_ram_depth = 128;
defparam ram_block1a1.port_a_logical_ram_width = 16;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_address_clear = "none";
defparam ram_block1a1.port_b_address_clock = "clock1";
defparam ram_block1a1.port_b_address_width = 7;
defparam ram_block1a1.port_b_data_out_clear = "none";
defparam ram_block1a1.port_b_data_out_clock = "none";
defparam ram_block1a1.port_b_data_width = 1;
defparam ram_block1a1.port_b_first_address = 0;
defparam ram_block1a1.port_b_first_bit_number = 1;
defparam ram_block1a1.port_b_last_address = 127;
defparam ram_block1a1.port_b_logical_ram_depth = 128;
defparam ram_block1a1.port_b_logical_ram_width = 16;
defparam ram_block1a1.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.port_b_read_enable_clock = "clock1";
defparam ram_block1a1.ram_block_type = "auto";

cyclonev_ram_block ram_block1a0(
	.portawe(wren_a),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(clock0),
	.ena0(wren_a),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,data_a[0]}),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_b[6],address_b[5],address_b[4],address_b[3],address_b[2],address_b[1],address_b[0]}),
	.portbbyteenamasks(1'b1),
	.portadataout(),
	.portbdataout(ram_block1a0_PORTBDATAOUT_bus),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.logical_ram_name = "audio_controller_audio_0:audio_0|altera_up_audio_out_serializer:Audio_Out_Serializer|altera_up_sync_fifo:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_9ba1:auto_generated|a_dpfifo_s2a1:dpfifo|altsyncram_r3i1:FIFOram|ALTSYNCRAM";
defparam ram_block1a0.mixed_port_feed_through_mode = "dont_care";
defparam ram_block1a0.operation_mode = "dual_port";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 7;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "none";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 127;
defparam ram_block1a0.port_a_logical_ram_depth = 128;
defparam ram_block1a0.port_a_logical_ram_width = 16;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_address_clear = "none";
defparam ram_block1a0.port_b_address_clock = "clock1";
defparam ram_block1a0.port_b_address_width = 7;
defparam ram_block1a0.port_b_data_out_clear = "none";
defparam ram_block1a0.port_b_data_out_clock = "none";
defparam ram_block1a0.port_b_data_width = 1;
defparam ram_block1a0.port_b_first_address = 0;
defparam ram_block1a0.port_b_first_bit_number = 0;
defparam ram_block1a0.port_b_last_address = 127;
defparam ram_block1a0.port_b_logical_ram_depth = 128;
defparam ram_block1a0.port_b_logical_ram_width = 16;
defparam ram_block1a0.port_b_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.port_b_read_enable_clock = "clock1";
defparam ram_block1a0.ram_block_type = "auto";

endmodule

module audio_controller_cntr_h2b_1 (
	done_dac_channel_sync,
	left_channel_was_read,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	cur_test_clk,
	last_test_clk,
	rd_ptr_lsb,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
input 	done_dac_channel_sync;
input 	left_channel_was_read;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	cur_test_clk;
input 	last_test_clk;
input 	rd_ptr_lsb;
input 	clock;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!sclr),
	.datab(!cur_test_clk),
	.datac(!last_test_clk),
	.datad(!done_dac_channel_sync),
	.datae(!left_channel_was_read),
	.dataf(!rd_ptr_lsb),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h5555555D55555555;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

endmodule

module audio_controller_cntr_i2b_1 (
	right_channel_fifo_write_space_6,
	right_channel_fifo_write_space_7,
	full_dff,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	counter_reg_bit_6,
	WideOr1,
	clock,
	sclr,
	audio_0_avalon_right_channel_sink_valid)/* synthesis synthesis_greybox=0 */;
input 	right_channel_fifo_write_space_6;
input 	right_channel_fifo_write_space_7;
input 	full_dff;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
output 	counter_reg_bit_6;
input 	WideOr1;
input 	clock;
input 	sclr;
input 	audio_0_avalon_right_channel_sink_valid;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~sumout ;
wire \_~0_combout ;
wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~sumout ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;


dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(\_~0_combout ),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!right_channel_fifo_write_space_6),
	.datab(!right_channel_fifo_write_space_7),
	.datac(!sclr),
	.datad(!full_dff),
	.datae(!audio_0_avalon_right_channel_sink_valid),
	.dataf(!WideOr1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h0F0FFF0F0F0F7F0F;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h0000FFFF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

endmodule

module audio_controller_cntr_u27_1 (
	counter_reg_bit_6,
	counter_reg_bit_0,
	counter_reg_bit_1,
	counter_reg_bit_2,
	counter_reg_bit_3,
	counter_reg_bit_4,
	counter_reg_bit_5,
	comb,
	usedw_will_be_1,
	clock,
	sclr)/* synthesis synthesis_greybox=0 */;
output 	counter_reg_bit_6;
output 	counter_reg_bit_0;
output 	counter_reg_bit_1;
output 	counter_reg_bit_2;
output 	counter_reg_bit_3;
output 	counter_reg_bit_4;
output 	counter_reg_bit_5;
input 	comb;
input 	usedw_will_be_1;
input 	clock;
input 	sclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~COUT ;
wire \counter_comb_bita3~COUT ;
wire \counter_comb_bita4~COUT ;
wire \counter_comb_bita5~COUT ;
wire \counter_comb_bita6~sumout ;
wire \counter_comb_bita0~sumout ;
wire \counter_comb_bita1~sumout ;
wire \counter_comb_bita2~sumout ;
wire \counter_comb_bita3~sumout ;
wire \counter_comb_bita4~sumout ;
wire \counter_comb_bita5~sumout ;


dffeas \counter_reg_bit[6] (
	.clk(clock),
	.d(\counter_comb_bita6~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_6),
	.prn(vcc));
defparam \counter_reg_bit[6] .is_wysiwyg = "true";
defparam \counter_reg_bit[6] .power_up = "low";

dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[3] (
	.clk(clock),
	.d(\counter_comb_bita3~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_3),
	.prn(vcc));
defparam \counter_reg_bit[3] .is_wysiwyg = "true";
defparam \counter_reg_bit[3] .power_up = "low";

dffeas \counter_reg_bit[4] (
	.clk(clock),
	.d(\counter_comb_bita4~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_4),
	.prn(vcc));
defparam \counter_reg_bit[4] .is_wysiwyg = "true";
defparam \counter_reg_bit[4] .power_up = "low";

dffeas \counter_reg_bit[5] (
	.clk(clock),
	.d(\counter_comb_bita5~sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(sclr),
	.sload(gnd),
	.ena(usedw_will_be_1),
	.q(counter_reg_bit_5),
	.prn(vcc));
defparam \counter_reg_bit[5] .is_wysiwyg = "true";
defparam \counter_reg_bit[5] .power_up = "low";

cyclonev_lcell_comb counter_comb_bita0(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita0~sumout ),
	.cout(\counter_comb_bita0~COUT ),
	.shareout());
defparam counter_comb_bita0.extended_lut = "off";
defparam counter_comb_bita0.lut_mask = 64'h00000000000000FF;
defparam counter_comb_bita0.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita1(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_1),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita0~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita1~sumout ),
	.cout(\counter_comb_bita1~COUT ),
	.shareout());
defparam counter_comb_bita1.extended_lut = "off";
defparam counter_comb_bita1.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita1.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita2(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_2),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita2~sumout ),
	.cout(\counter_comb_bita2~COUT ),
	.shareout());
defparam counter_comb_bita2.extended_lut = "off";
defparam counter_comb_bita2.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita2.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita3(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_3),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita2~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita3~sumout ),
	.cout(\counter_comb_bita3~COUT ),
	.shareout());
defparam counter_comb_bita3.extended_lut = "off";
defparam counter_comb_bita3.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita3.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita4(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_4),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita3~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita4~sumout ),
	.cout(\counter_comb_bita4~COUT ),
	.shareout());
defparam counter_comb_bita4.extended_lut = "off";
defparam counter_comb_bita4.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita4.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita5(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_5),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita4~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita5~sumout ),
	.cout(\counter_comb_bita5~COUT ),
	.shareout());
defparam counter_comb_bita5.extended_lut = "off";
defparam counter_comb_bita5.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita5.shared_arith = "off";

cyclonev_lcell_comb counter_comb_bita6(
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!counter_reg_bit_6),
	.datae(gnd),
	.dataf(!comb),
	.datag(gnd),
	.cin(\counter_comb_bita5~COUT ),
	.sharein(gnd),
	.combout(),
	.sumout(\counter_comb_bita6~sumout ),
	.cout(),
	.shareout());
defparam counter_comb_bita6.extended_lut = "off";
defparam counter_comb_bita6.lut_mask = 64'h000000FF000000FF;
defparam counter_comb_bita6.shared_arith = "off";

endmodule

module audio_controller_altera_up_clock_edge (
	last_test_clk1,
	cur_test_clk1,
	clk,
	test_clk)/* synthesis synthesis_greybox=0 */;
output 	last_test_clk1;
output 	cur_test_clk1;
input 	clk;
input 	test_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas last_test_clk(
	.clk(clk),
	.d(cur_test_clk1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(last_test_clk1),
	.prn(vcc));
defparam last_test_clk.is_wysiwyg = "true";
defparam last_test_clk.power_up = "low";

dffeas cur_test_clk(
	.clk(clk),
	.d(test_clk),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(cur_test_clk1),
	.prn(vcc));
defparam cur_test_clk.is_wysiwyg = "true";
defparam cur_test_clk.power_up = "low";

endmodule

module audio_controller_altera_up_clock_edge_1 (
	cur_test_clk1,
	last_test_clk1,
	found_edge1,
	clk,
	test_clk)/* synthesis synthesis_greybox=0 */;
output 	cur_test_clk1;
output 	last_test_clk1;
output 	found_edge1;
input 	clk;
input 	test_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas cur_test_clk(
	.clk(clk),
	.d(test_clk),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(cur_test_clk1),
	.prn(vcc));
defparam cur_test_clk.is_wysiwyg = "true";
defparam cur_test_clk.power_up = "low";

dffeas last_test_clk(
	.clk(clk),
	.d(cur_test_clk1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(last_test_clk1),
	.prn(vcc));
defparam last_test_clk.is_wysiwyg = "true";
defparam last_test_clk.power_up = "low";

cyclonev_lcell_comb found_edge(
	.dataa(!cur_test_clk1),
	.datab(!last_test_clk1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(found_edge1),
	.sumout(),
	.cout(),
	.shareout());
defparam found_edge.extended_lut = "off";
defparam found_edge.lut_mask = 64'h6666666666666666;
defparam found_edge.shared_arith = "off";

endmodule
