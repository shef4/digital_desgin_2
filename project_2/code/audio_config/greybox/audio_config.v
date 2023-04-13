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

// DATE "04/13/2023 15:19:36"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module audio_config (
	audio_and_video_config_0_clk_clk,
	audio_and_video_config_0_external_interface_SDAT,
	audio_and_video_config_0_external_interface_SCLK,
	audio_and_video_config_0_reset_reset)/* synthesis synthesis_greybox=0 */;
input 	audio_and_video_config_0_clk_clk;
inout 	audio_and_video_config_0_external_interface_SDAT;
output 	audio_and_video_config_0_external_interface_SCLK;
input 	audio_and_video_config_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \audio_and_video_config_0|Serial_Bus_Controller|serial_clk~0_combout ;
wire \audio_and_video_config_0|Serial_Bus_Controller|serial_data~1_combout ;
wire \audio_and_video_config_0|Serial_Bus_Controller|serial_data~2_combout ;
wire \~GND~combout ;
wire \audio_and_video_config_0_external_interface_SDAT~input_o ;
wire \audio_and_video_config_0_clk_clk~input_o ;
wire \audio_and_video_config_0_reset_reset~input_o ;


audio_config_audio_config_audio_and_video_config_0 audio_and_video_config_0(
	.I2C_SCLK(\audio_and_video_config_0|Serial_Bus_Controller|serial_clk~0_combout ),
	.I2C_SDAT(\audio_and_video_config_0|Serial_Bus_Controller|serial_data~1_combout ),
	.serial_data(\audio_and_video_config_0|Serial_Bus_Controller|serial_data~2_combout ),
	.GND_port(\~GND~combout ),
	.audio_and_video_config_0_external_interface_SDAT(\audio_and_video_config_0_external_interface_SDAT~input_o ),
	.audio_and_video_config_0_clk_clk(\audio_and_video_config_0_clk_clk~input_o ),
	.audio_and_video_config_0_reset_reset(\audio_and_video_config_0_reset_reset~input_o ));

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

assign \audio_and_video_config_0_external_interface_SDAT~input_o  = audio_and_video_config_0_external_interface_SDAT;

assign \audio_and_video_config_0_clk_clk~input_o  = audio_and_video_config_0_clk_clk;

assign \audio_and_video_config_0_reset_reset~input_o  = audio_and_video_config_0_reset_reset;

assign audio_and_video_config_0_external_interface_SCLK = \audio_and_video_config_0|Serial_Bus_Controller|serial_clk~0_combout ;

cyclonev_io_obuf \audio_and_video_config_0_external_interface_SDAT~output (
	.i(\audio_and_video_config_0|Serial_Bus_Controller|serial_data~1_combout ),
	.oe(\audio_and_video_config_0|Serial_Bus_Controller|serial_data~2_combout ),
	.dynamicterminationcontrol(gnd),
	.seriesterminationcontrol(16'b0000000000000000),
	.parallelterminationcontrol(16'b0000000000000000),
	.o(audio_and_video_config_0_external_interface_SDAT),
	.obar());
defparam \audio_and_video_config_0_external_interface_SDAT~output .bus_hold = "false";
defparam \audio_and_video_config_0_external_interface_SDAT~output .open_drain_output = "false";
defparam \audio_and_video_config_0_external_interface_SDAT~output .shift_series_termination_control = "false";

endmodule

module audio_config_audio_config_audio_and_video_config_0 (
	I2C_SCLK,
	I2C_SDAT,
	serial_data,
	GND_port,
	audio_and_video_config_0_external_interface_SDAT,
	audio_and_video_config_0_clk_clk,
	audio_and_video_config_0_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	I2C_SCLK;
output 	I2C_SDAT;
output 	serial_data;
input 	GND_port;
input 	audio_and_video_config_0_external_interface_SDAT;
input 	audio_and_video_config_0_clk_clk;
input 	audio_and_video_config_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \AV_Config_Auto_Init|transfer_data~q ;
wire \Serial_Bus_Controller|transfer_complete~q ;
wire \AV_Config_Auto_Init|auto_init_complete~q ;
wire \AV_Config_Auto_Init|rom_address[1]~q ;
wire \AV_Config_Auto_Init|rom_address[2]~q ;
wire \AV_Config_Auto_Init|rom_address[4]~q ;
wire \AV_Config_Auto_Init|rom_address[5]~q ;
wire \AV_Config_Auto_Init|rom_address[3]~q ;
wire \AV_Config_Auto_Init|data_out[25]~q ;
wire \AV_Config_Auto_Init|data_out[17]~q ;
wire \AV_Config_Auto_Init|data_out[16]~q ;
wire \AV_Config_Auto_Init|data_out[15]~q ;
wire \AV_Config_Auto_Init|data_out[14]~q ;
wire \AV_Config_Auto_Init|data_out[13]~q ;
wire \AV_Config_Auto_Init|data_out[12]~q ;
wire \AV_Config_Auto_Init|data_out[11]~q ;
wire \AV_Config_Auto_Init|data_out[10]~q ;
wire \AV_Config_Auto_Init|data_out[8]~q ;
wire \AV_Config_Auto_Init|data_out[7]~q ;
wire \AV_Config_Auto_Init|data_out[6]~q ;
wire \AV_Config_Auto_Init|data_out[5]~q ;
wire \AV_Config_Auto_Init|data_out[4]~q ;
wire \AV_Config_Auto_Init|data_out[3]~q ;
wire \AV_Config_Auto_Init|data_out[2]~q ;
wire \AV_Config_Auto_Init|data_out[1]~q ;
wire \AV_Config_Auto_Init|always1~0_combout ;
wire \AV_Config_Auto_Init|rom_address[0]~q ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Audio_ROM|Decoder0~0_combout ;
wire \AV_Config_Auto_Init|data_out[21]~q ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~0_combout ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~1_combout ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~2_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[1]~0_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[2]~1_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[3]~2_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[4]~3_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[5]~4_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[6]~5_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[7]~6_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[8]~7_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[11]~8_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[12]~9_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[13]~10_combout ;
wire \Auto_Init_OB_Devices_ROM|rom_data[14]~11_combout ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~3_combout ;
wire \Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~4_combout ;


audio_config_altera_up_av_config_auto_init_ob_de1_soc Auto_Init_OB_Devices_ROM(
	.rom_address_1(\AV_Config_Auto_Init|rom_address[1]~q ),
	.rom_address_2(\AV_Config_Auto_Init|rom_address[2]~q ),
	.rom_address_4(\AV_Config_Auto_Init|rom_address[4]~q ),
	.rom_address_5(\AV_Config_Auto_Init|rom_address[5]~q ),
	.rom_address_3(\AV_Config_Auto_Init|rom_address[3]~q ),
	.rom_address_0(\AV_Config_Auto_Init|rom_address[0]~q ),
	.Decoder0(\Auto_Init_OB_Devices_ROM|Auto_Init_Audio_ROM|Decoder0~0_combout ),
	.Ram0(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~0_combout ),
	.Ram01(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~1_combout ),
	.Ram02(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~2_combout ),
	.rom_data_1(\Auto_Init_OB_Devices_ROM|rom_data[1]~0_combout ),
	.rom_data_2(\Auto_Init_OB_Devices_ROM|rom_data[2]~1_combout ),
	.rom_data_3(\Auto_Init_OB_Devices_ROM|rom_data[3]~2_combout ),
	.rom_data_4(\Auto_Init_OB_Devices_ROM|rom_data[4]~3_combout ),
	.rom_data_5(\Auto_Init_OB_Devices_ROM|rom_data[5]~4_combout ),
	.rom_data_6(\Auto_Init_OB_Devices_ROM|rom_data[6]~5_combout ),
	.rom_data_7(\Auto_Init_OB_Devices_ROM|rom_data[7]~6_combout ),
	.rom_data_8(\Auto_Init_OB_Devices_ROM|rom_data[8]~7_combout ),
	.rom_data_11(\Auto_Init_OB_Devices_ROM|rom_data[11]~8_combout ),
	.rom_data_12(\Auto_Init_OB_Devices_ROM|rom_data[12]~9_combout ),
	.rom_data_13(\Auto_Init_OB_Devices_ROM|rom_data[13]~10_combout ),
	.rom_data_14(\Auto_Init_OB_Devices_ROM|rom_data[14]~11_combout ),
	.Ram03(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~3_combout ),
	.Ram04(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~4_combout ));

audio_config_altera_up_av_config_auto_init AV_Config_Auto_Init(
	.transfer_data1(\AV_Config_Auto_Init|transfer_data~q ),
	.transfer_complete(\Serial_Bus_Controller|transfer_complete~q ),
	.auto_init_complete1(\AV_Config_Auto_Init|auto_init_complete~q ),
	.rom_address_1(\AV_Config_Auto_Init|rom_address[1]~q ),
	.rom_address_2(\AV_Config_Auto_Init|rom_address[2]~q ),
	.rom_address_4(\AV_Config_Auto_Init|rom_address[4]~q ),
	.rom_address_5(\AV_Config_Auto_Init|rom_address[5]~q ),
	.rom_address_3(\AV_Config_Auto_Init|rom_address[3]~q ),
	.data_out_25(\AV_Config_Auto_Init|data_out[25]~q ),
	.data_out_17(\AV_Config_Auto_Init|data_out[17]~q ),
	.data_out_16(\AV_Config_Auto_Init|data_out[16]~q ),
	.data_out_15(\AV_Config_Auto_Init|data_out[15]~q ),
	.data_out_14(\AV_Config_Auto_Init|data_out[14]~q ),
	.data_out_13(\AV_Config_Auto_Init|data_out[13]~q ),
	.data_out_12(\AV_Config_Auto_Init|data_out[12]~q ),
	.data_out_11(\AV_Config_Auto_Init|data_out[11]~q ),
	.data_out_10(\AV_Config_Auto_Init|data_out[10]~q ),
	.data_out_8(\AV_Config_Auto_Init|data_out[8]~q ),
	.data_out_7(\AV_Config_Auto_Init|data_out[7]~q ),
	.data_out_6(\AV_Config_Auto_Init|data_out[6]~q ),
	.data_out_5(\AV_Config_Auto_Init|data_out[5]~q ),
	.data_out_4(\AV_Config_Auto_Init|data_out[4]~q ),
	.data_out_3(\AV_Config_Auto_Init|data_out[3]~q ),
	.data_out_2(\AV_Config_Auto_Init|data_out[2]~q ),
	.data_out_1(\AV_Config_Auto_Init|data_out[1]~q ),
	.always1(\AV_Config_Auto_Init|always1~0_combout ),
	.rom_address_0(\AV_Config_Auto_Init|rom_address[0]~q ),
	.Decoder0(\Auto_Init_OB_Devices_ROM|Auto_Init_Audio_ROM|Decoder0~0_combout ),
	.data_out_21(\AV_Config_Auto_Init|data_out[21]~q ),
	.Ram0(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~0_combout ),
	.Ram01(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~1_combout ),
	.Ram02(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~2_combout ),
	.rom_data_1(\Auto_Init_OB_Devices_ROM|rom_data[1]~0_combout ),
	.rom_data_2(\Auto_Init_OB_Devices_ROM|rom_data[2]~1_combout ),
	.rom_data_3(\Auto_Init_OB_Devices_ROM|rom_data[3]~2_combout ),
	.rom_data_4(\Auto_Init_OB_Devices_ROM|rom_data[4]~3_combout ),
	.rom_data_5(\Auto_Init_OB_Devices_ROM|rom_data[5]~4_combout ),
	.rom_data_6(\Auto_Init_OB_Devices_ROM|rom_data[6]~5_combout ),
	.rom_data_7(\Auto_Init_OB_Devices_ROM|rom_data[7]~6_combout ),
	.rom_data_8(\Auto_Init_OB_Devices_ROM|rom_data[8]~7_combout ),
	.rom_data_11(\Auto_Init_OB_Devices_ROM|rom_data[11]~8_combout ),
	.rom_data_12(\Auto_Init_OB_Devices_ROM|rom_data[12]~9_combout ),
	.rom_data_13(\Auto_Init_OB_Devices_ROM|rom_data[13]~10_combout ),
	.rom_data_14(\Auto_Init_OB_Devices_ROM|rom_data[14]~11_combout ),
	.Ram03(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~3_combout ),
	.Ram04(\Auto_Init_OB_Devices_ROM|Auto_Init_Video_ROM|Ram0~4_combout ),
	.audio_and_video_config_0_clk_clk(audio_and_video_config_0_clk_clk),
	.audio_and_video_config_0_reset_reset(audio_and_video_config_0_reset_reset));

audio_config_altera_up_av_config_serial_bus_controller Serial_Bus_Controller(
	.transfer_data(\AV_Config_Auto_Init|transfer_data~q ),
	.transfer_complete1(\Serial_Bus_Controller|transfer_complete~q ),
	.auto_init_complete(\AV_Config_Auto_Init|auto_init_complete~q ),
	.data_out_25(\AV_Config_Auto_Init|data_out[25]~q ),
	.data_out_17(\AV_Config_Auto_Init|data_out[17]~q ),
	.data_out_16(\AV_Config_Auto_Init|data_out[16]~q ),
	.data_out_15(\AV_Config_Auto_Init|data_out[15]~q ),
	.data_out_14(\AV_Config_Auto_Init|data_out[14]~q ),
	.data_out_13(\AV_Config_Auto_Init|data_out[13]~q ),
	.data_out_12(\AV_Config_Auto_Init|data_out[12]~q ),
	.data_out_11(\AV_Config_Auto_Init|data_out[11]~q ),
	.data_out_10(\AV_Config_Auto_Init|data_out[10]~q ),
	.data_out_8(\AV_Config_Auto_Init|data_out[8]~q ),
	.data_out_7(\AV_Config_Auto_Init|data_out[7]~q ),
	.data_out_6(\AV_Config_Auto_Init|data_out[6]~q ),
	.data_out_5(\AV_Config_Auto_Init|data_out[5]~q ),
	.data_out_4(\AV_Config_Auto_Init|data_out[4]~q ),
	.data_out_3(\AV_Config_Auto_Init|data_out[3]~q ),
	.data_out_2(\AV_Config_Auto_Init|data_out[2]~q ),
	.data_out_1(\AV_Config_Auto_Init|data_out[1]~q ),
	.serial_clk(I2C_SCLK),
	.always1(\AV_Config_Auto_Init|always1~0_combout ),
	.serial_data(I2C_SDAT),
	.serial_data1(serial_data),
	.data_out_21(\AV_Config_Auto_Init|data_out[21]~q ),
	.GND_port(GND_port),
	.audio_and_video_config_0_external_interface_SDAT(audio_and_video_config_0_external_interface_SDAT),
	.audio_and_video_config_0_clk_clk(audio_and_video_config_0_clk_clk),
	.audio_and_video_config_0_reset_reset(audio_and_video_config_0_reset_reset));

endmodule

module audio_config_altera_up_av_config_auto_init (
	transfer_data1,
	transfer_complete,
	auto_init_complete1,
	rom_address_1,
	rom_address_2,
	rom_address_4,
	rom_address_5,
	rom_address_3,
	data_out_25,
	data_out_17,
	data_out_16,
	data_out_15,
	data_out_14,
	data_out_13,
	data_out_12,
	data_out_11,
	data_out_10,
	data_out_8,
	data_out_7,
	data_out_6,
	data_out_5,
	data_out_4,
	data_out_3,
	data_out_2,
	data_out_1,
	always1,
	rom_address_0,
	Decoder0,
	data_out_21,
	Ram0,
	Ram01,
	Ram02,
	rom_data_1,
	rom_data_2,
	rom_data_3,
	rom_data_4,
	rom_data_5,
	rom_data_6,
	rom_data_7,
	rom_data_8,
	rom_data_11,
	rom_data_12,
	rom_data_13,
	rom_data_14,
	Ram03,
	Ram04,
	audio_and_video_config_0_clk_clk,
	audio_and_video_config_0_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	transfer_data1;
input 	transfer_complete;
output 	auto_init_complete1;
output 	rom_address_1;
output 	rom_address_2;
output 	rom_address_4;
output 	rom_address_5;
output 	rom_address_3;
output 	data_out_25;
output 	data_out_17;
output 	data_out_16;
output 	data_out_15;
output 	data_out_14;
output 	data_out_13;
output 	data_out_12;
output 	data_out_11;
output 	data_out_10;
output 	data_out_8;
output 	data_out_7;
output 	data_out_6;
output 	data_out_5;
output 	data_out_4;
output 	data_out_3;
output 	data_out_2;
output 	data_out_1;
output 	always1;
output 	rom_address_0;
input 	Decoder0;
output 	data_out_21;
input 	Ram0;
input 	Ram01;
input 	Ram02;
input 	rom_data_1;
input 	rom_data_2;
input 	rom_data_3;
input 	rom_data_4;
input 	rom_data_5;
input 	rom_data_6;
input 	rom_data_7;
input 	rom_data_8;
input 	rom_data_11;
input 	rom_data_12;
input 	rom_data_13;
input 	rom_data_14;
input 	Ram03;
input 	Ram04;
input 	audio_and_video_config_0_clk_clk;
input 	audio_and_video_config_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \always3~0_combout ;
wire \auto_init_complete~0_combout ;
wire \Add0~0_combout ;
wire \rom_address[3]~1_combout ;
wire \Add0~1_combout ;
wire \Add0~2_combout ;
wire \Add0~3_combout ;
wire \Add0~4_combout ;
wire \rom_address~0_combout ;
wire \data_out~0_combout ;


dffeas transfer_data(
	.clk(audio_and_video_config_0_clk_clk),
	.d(always1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(transfer_data1),
	.prn(vcc));
defparam transfer_data.is_wysiwyg = "true";
defparam transfer_data.power_up = "low";

dffeas auto_init_complete(
	.clk(audio_and_video_config_0_clk_clk),
	.d(\auto_init_complete~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(auto_init_complete1),
	.prn(vcc));
defparam auto_init_complete.is_wysiwyg = "true";
defparam auto_init_complete.power_up = "low";

dffeas \rom_address[1] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Add0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_1),
	.prn(vcc));
defparam \rom_address[1] .is_wysiwyg = "true";
defparam \rom_address[1] .power_up = "low";

dffeas \rom_address[2] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Add0~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_2),
	.prn(vcc));
defparam \rom_address[2] .is_wysiwyg = "true";
defparam \rom_address[2] .power_up = "low";

dffeas \rom_address[4] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Add0~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_4),
	.prn(vcc));
defparam \rom_address[4] .is_wysiwyg = "true";
defparam \rom_address[4] .power_up = "low";

dffeas \rom_address[5] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Add0~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_5),
	.prn(vcc));
defparam \rom_address[5] .is_wysiwyg = "true";
defparam \rom_address[5] .power_up = "low";

dffeas \rom_address[3] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Add0~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_3),
	.prn(vcc));
defparam \rom_address[3] .is_wysiwyg = "true";
defparam \rom_address[3] .power_up = "low";

dffeas \data_out[25] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(Ram04),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_25),
	.prn(vcc));
defparam \data_out[25] .is_wysiwyg = "true";
defparam \data_out[25] .power_up = "low";

dffeas \data_out[17] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(Ram0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_17),
	.prn(vcc));
defparam \data_out[17] .is_wysiwyg = "true";
defparam \data_out[17] .power_up = "low";

dffeas \data_out[16] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(Ram01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_16),
	.prn(vcc));
defparam \data_out[16] .is_wysiwyg = "true";
defparam \data_out[16] .power_up = "low";

dffeas \data_out[15] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(Ram03),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_15),
	.prn(vcc));
defparam \data_out[15] .is_wysiwyg = "true";
defparam \data_out[15] .power_up = "low";

dffeas \data_out[14] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_14),
	.prn(vcc));
defparam \data_out[14] .is_wysiwyg = "true";
defparam \data_out[14] .power_up = "low";

dffeas \data_out[13] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_13),
	.prn(vcc));
defparam \data_out[13] .is_wysiwyg = "true";
defparam \data_out[13] .power_up = "low";

dffeas \data_out[12] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_12),
	.prn(vcc));
defparam \data_out[12] .is_wysiwyg = "true";
defparam \data_out[12] .power_up = "low";

dffeas \data_out[11] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_11),
	.prn(vcc));
defparam \data_out[11] .is_wysiwyg = "true";
defparam \data_out[11] .power_up = "low";

dffeas \data_out[10] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(Ram02),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_10),
	.prn(vcc));
defparam \data_out[10] .is_wysiwyg = "true";
defparam \data_out[10] .power_up = "low";

dffeas \data_out[8] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_8),
	.prn(vcc));
defparam \data_out[8] .is_wysiwyg = "true";
defparam \data_out[8] .power_up = "low";

dffeas \data_out[7] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_7),
	.prn(vcc));
defparam \data_out[7] .is_wysiwyg = "true";
defparam \data_out[7] .power_up = "low";

dffeas \data_out[6] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_6),
	.prn(vcc));
defparam \data_out[6] .is_wysiwyg = "true";
defparam \data_out[6] .power_up = "low";

dffeas \data_out[5] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_5),
	.prn(vcc));
defparam \data_out[5] .is_wysiwyg = "true";
defparam \data_out[5] .power_up = "low";

dffeas \data_out[4] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_4),
	.prn(vcc));
defparam \data_out[4] .is_wysiwyg = "true";
defparam \data_out[4] .power_up = "low";

dffeas \data_out[3] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_3),
	.prn(vcc));
defparam \data_out[3] .is_wysiwyg = "true";
defparam \data_out[3] .power_up = "low";

dffeas \data_out[2] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_2),
	.prn(vcc));
defparam \data_out[2] .is_wysiwyg = "true";
defparam \data_out[2] .power_up = "low";

dffeas \data_out[1] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(rom_data_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_1),
	.prn(vcc));
defparam \data_out[1] .is_wysiwyg = "true";
defparam \data_out[1] .power_up = "low";

cyclonev_lcell_comb \always1~0 (
	.dataa(!transfer_complete),
	.datab(!auto_init_complete1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(always1),
	.sumout(),
	.cout(),
	.shareout());
defparam \always1~0 .extended_lut = "off";
defparam \always1~0 .lut_mask = 64'h8888888888888888;
defparam \always1~0 .shared_arith = "off";

dffeas \rom_address[0] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\rom_address~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\rom_address[3]~1_combout ),
	.q(rom_address_0),
	.prn(vcc));
defparam \rom_address[0] .is_wysiwyg = "true";
defparam \rom_address[0] .power_up = "low";

dffeas \data_out[21] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\data_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(data_out_21),
	.prn(vcc));
defparam \data_out[21] .is_wysiwyg = "true";
defparam \data_out[21] .power_up = "low";

cyclonev_lcell_comb \always3~0 (
	.dataa(!transfer_data1),
	.datab(!transfer_complete),
	.datac(!rom_address_3),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always3~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always3~0 .extended_lut = "off";
defparam \always3~0 .lut_mask = 64'h0101010101010101;
defparam \always3~0 .shared_arith = "off";

cyclonev_lcell_comb \auto_init_complete~0 (
	.dataa(!auto_init_complete1),
	.datab(!rom_address_0),
	.datac(!Decoder0),
	.datad(!rom_address_4),
	.datae(!rom_address_5),
	.dataf(!\always3~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\auto_init_complete~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \auto_init_complete~0 .extended_lut = "off";
defparam \auto_init_complete~0 .lut_mask = 64'h555555555555555D;
defparam \auto_init_complete~0 .shared_arith = "off";

cyclonev_lcell_comb \Add0~0 (
	.dataa(!rom_address_0),
	.datab(!rom_address_1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~0 .extended_lut = "off";
defparam \Add0~0 .lut_mask = 64'h6666666666666666;
defparam \Add0~0 .shared_arith = "off";

cyclonev_lcell_comb \rom_address[3]~1 (
	.dataa(!audio_and_video_config_0_reset_reset),
	.datab(!transfer_data1),
	.datac(!transfer_complete),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rom_address[3]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_address[3]~1 .extended_lut = "off";
defparam \rom_address[3]~1 .lut_mask = 64'h5757575757575757;
defparam \rom_address[3]~1 .shared_arith = "off";

cyclonev_lcell_comb \Add0~1 (
	.dataa(!rom_address_0),
	.datab(!rom_address_1),
	.datac(!rom_address_2),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h1E1E1E1E1E1E1E1E;
defparam \Add0~1 .shared_arith = "off";

cyclonev_lcell_comb \Add0~2 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_1),
	.datad(!rom_address_2),
	.datae(!rom_address_4),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~2 .extended_lut = "off";
defparam \Add0~2 .lut_mask = 64'h0001FFFE0001FFFE;
defparam \Add0~2 .shared_arith = "off";

cyclonev_lcell_comb \Add0~3 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_1),
	.datad(!rom_address_2),
	.datae(!rom_address_4),
	.dataf(!rom_address_5),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~3 .extended_lut = "off";
defparam \Add0~3 .lut_mask = 64'h00000001FFFFFFFE;
defparam \Add0~3 .shared_arith = "off";

cyclonev_lcell_comb \Add0~4 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_1),
	.datad(!rom_address_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~4 .extended_lut = "off";
defparam \Add0~4 .lut_mask = 64'h5556555655565556;
defparam \Add0~4 .shared_arith = "off";

cyclonev_lcell_comb \rom_address~0 (
	.dataa(!audio_and_video_config_0_reset_reset),
	.datab(!rom_address_0),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rom_address~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_address~0 .extended_lut = "off";
defparam \rom_address~0 .lut_mask = 64'h8888888888888888;
defparam \rom_address~0 .shared_arith = "off";

cyclonev_lcell_comb \data_out~0 (
	.dataa(!rom_address_4),
	.datab(!rom_address_3),
	.datac(!rom_address_2),
	.datad(!rom_address_1),
	.datae(!rom_address_5),
	.dataf(!audio_and_video_config_0_reset_reset),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\data_out~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \data_out~0 .extended_lut = "off";
defparam \data_out~0 .lut_mask = 64'hA888000000000000;
defparam \data_out~0 .shared_arith = "off";

endmodule

module audio_config_altera_up_av_config_auto_init_ob_de1_soc (
	rom_address_1,
	rom_address_2,
	rom_address_4,
	rom_address_5,
	rom_address_3,
	rom_address_0,
	Decoder0,
	Ram0,
	Ram01,
	Ram02,
	rom_data_1,
	rom_data_2,
	rom_data_3,
	rom_data_4,
	rom_data_5,
	rom_data_6,
	rom_data_7,
	rom_data_8,
	rom_data_11,
	rom_data_12,
	rom_data_13,
	rom_data_14,
	Ram03,
	Ram04)/* synthesis synthesis_greybox=0 */;
input 	rom_address_1;
input 	rom_address_2;
input 	rom_address_4;
input 	rom_address_5;
input 	rom_address_3;
input 	rom_address_0;
output 	Decoder0;
output 	Ram0;
output 	Ram01;
output 	Ram02;
output 	rom_data_1;
output 	rom_data_2;
output 	rom_data_3;
output 	rom_data_4;
output 	rom_data_5;
output 	rom_data_6;
output 	rom_data_7;
output 	rom_data_8;
output 	rom_data_11;
output 	rom_data_12;
output 	rom_data_13;
output 	rom_data_14;
output 	Ram03;
output 	Ram04;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



audio_config_altera_up_av_config_auto_init_ob_audio Auto_Init_Audio_ROM(
	.rom_address_1(rom_address_1),
	.rom_address_2(rom_address_2),
	.Decoder0(Decoder0));

audio_config_altera_up_av_config_auto_init_ob_adv7180 Auto_Init_Video_ROM(
	.rom_address_1(rom_address_1),
	.rom_address_2(rom_address_2),
	.rom_address_4(rom_address_4),
	.rom_address_5(rom_address_5),
	.rom_address_3(rom_address_3),
	.rom_address_0(rom_address_0),
	.Ram0(Ram0),
	.Ram01(Ram01),
	.Ram02(Ram02),
	.Ram03(Ram03),
	.Ram04(Ram04));

cyclonev_lcell_comb \rom_data[1]~0 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_3),
	.datad(!rom_address_2),
	.datae(!rom_address_1),
	.dataf(!rom_address_0),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[1]~0 .extended_lut = "off";
defparam \rom_data[1]~0 .lut_mask = 64'h03908278580894B0;
defparam \rom_data[1]~0 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[2]~1 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_3),
	.datad(!rom_address_2),
	.datae(!rom_address_1),
	.dataf(!rom_address_0),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[2]~1 .extended_lut = "off";
defparam \rom_data[2]~1 .lut_mask = 64'hC0608418A0809220;
defparam \rom_data[2]~1 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[3]~2 (
	.dataa(!rom_address_0),
	.datab(!rom_address_5),
	.datac(!rom_address_4),
	.datad(!rom_address_3),
	.datae(!rom_address_2),
	.dataf(!rom_address_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[3]~2 .extended_lut = "off";
defparam \rom_data[3]~2 .lut_mask = 64'h0702C3E82A040190;
defparam \rom_data[3]~2 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[4]~3 (
	.dataa(!rom_address_0),
	.datab(!rom_address_1),
	.datac(!rom_address_5),
	.datad(!rom_address_4),
	.datae(!rom_address_3),
	.dataf(!rom_address_2),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[4]~3 .extended_lut = "off";
defparam \rom_data[4]~3 .lut_mask = 64'hF02810500000A900;
defparam \rom_data[4]~3 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[5]~4 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_3),
	.datad(!rom_address_2),
	.datae(!rom_address_1),
	.dataf(!rom_address_0),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[5]~4 .extended_lut = "off";
defparam \rom_data[5]~4 .lut_mask = 64'hC3A6A40AA6108030;
defparam \rom_data[5]~4 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[6]~5 (
	.dataa(!rom_address_0),
	.datab(!rom_address_5),
	.datac(!rom_address_4),
	.datad(!rom_address_3),
	.datae(!rom_address_2),
	.dataf(!rom_address_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[6]~5 .extended_lut = "off";
defparam \rom_data[6]~5 .lut_mask = 64'h05080208C92C0298;
defparam \rom_data[6]~5 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[7]~6 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_3),
	.datad(!rom_address_2),
	.datae(!rom_address_1),
	.dataf(!rom_address_0),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[7]~6 .extended_lut = "off";
defparam \rom_data[7]~6 .lut_mask = 64'h1712A21A42089890;
defparam \rom_data[7]~6 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[8]~7 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_2),
	.datad(!rom_address_0),
	.datae(!rom_address_1),
	.dataf(!rom_address_3),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[8]~7 .extended_lut = "off";
defparam \rom_data[8]~7 .lut_mask = 64'h08004006620062A4;
defparam \rom_data[8]~7 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[11]~8 (
	.dataa(!rom_address_1),
	.datab(!rom_address_2),
	.datac(!rom_address_0),
	.datad(!rom_address_4),
	.datae(!rom_address_5),
	.dataf(!rom_address_3),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[11]~8 .extended_lut = "off";
defparam \rom_data[11]~8 .lut_mask = 64'h0F945A55395A2A00;
defparam \rom_data[11]~8 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[12]~9 (
	.dataa(!rom_address_2),
	.datab(!rom_address_0),
	.datac(!rom_address_5),
	.datad(!rom_address_4),
	.datae(!rom_address_3),
	.dataf(!rom_address_1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[12]~9 .extended_lut = "off";
defparam \rom_data[12]~9 .lut_mask = 64'h057A1078F6EA4D60;
defparam \rom_data[12]~9 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[13]~10 (
	.dataa(!rom_address_5),
	.datab(!rom_address_4),
	.datac(!rom_address_0),
	.datad(!rom_address_1),
	.datae(!rom_address_3),
	.dataf(!rom_address_2),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[13]~10 .extended_lut = "off";
defparam \rom_data[13]~10 .lut_mask = 64'h32227462999F222C;
defparam \rom_data[13]~10 .shared_arith = "off";

cyclonev_lcell_comb \rom_data[14]~11 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_2),
	.datad(!rom_address_1),
	.datae(!rom_address_5),
	.dataf(!rom_address_4),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rom_data_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \rom_data[14]~11 .extended_lut = "off";
defparam \rom_data[14]~11 .lut_mask = 64'h5000FEEB4A0B8000;
defparam \rom_data[14]~11 .shared_arith = "off";

endmodule

module audio_config_altera_up_av_config_auto_init_ob_adv7180 (
	rom_address_1,
	rom_address_2,
	rom_address_4,
	rom_address_5,
	rom_address_3,
	rom_address_0,
	Ram0,
	Ram01,
	Ram02,
	Ram03,
	Ram04)/* synthesis synthesis_greybox=0 */;
input 	rom_address_1;
input 	rom_address_2;
input 	rom_address_4;
input 	rom_address_5;
input 	rom_address_3;
input 	rom_address_0;
output 	Ram0;
output 	Ram01;
output 	Ram02;
output 	Ram03;
output 	Ram04;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \Ram0~0 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_1),
	.datad(!rom_address_2),
	.datae(!rom_address_4),
	.dataf(!rom_address_5),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Ram0),
	.sumout(),
	.cout(),
	.shareout());
defparam \Ram0~0 .extended_lut = "off";
defparam \Ram0~0 .lut_mask = 64'h000000000055EAAA;
defparam \Ram0~0 .shared_arith = "off";

cyclonev_lcell_comb \Ram0~1 (
	.dataa(!rom_address_3),
	.datab(!rom_address_0),
	.datac(!rom_address_1),
	.datad(!rom_address_2),
	.datae(!rom_address_4),
	.dataf(!rom_address_5),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Ram01),
	.sumout(),
	.cout(),
	.shareout());
defparam \Ram0~1 .extended_lut = "off";
defparam \Ram0~1 .lut_mask = 64'h000000000115EAAA;
defparam \Ram0~1 .shared_arith = "off";

cyclonev_lcell_comb \Ram0~2 (
	.dataa(!rom_address_3),
	.datab(!rom_address_2),
	.datac(!rom_address_1),
	.datad(!rom_address_5),
	.datae(!rom_address_0),
	.dataf(!rom_address_4),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Ram02),
	.sumout(),
	.cout(),
	.shareout());
defparam \Ram0~2 .extended_lut = "off";
defparam \Ram0~2 .lut_mask = 64'h11EE0414DF8068AA;
defparam \Ram0~2 .shared_arith = "off";

cyclonev_lcell_comb \Ram0~3 (
	.dataa(!rom_address_3),
	.datab(!rom_address_2),
	.datac(!rom_address_1),
	.datad(!rom_address_0),
	.datae(!rom_address_5),
	.dataf(!rom_address_4),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Ram03),
	.sumout(),
	.cout(),
	.shareout());
defparam \Ram0~3 .extended_lut = "off";
defparam \Ram0~3 .lut_mask = 64'h0000FEEA15556AAA;
defparam \Ram0~3 .shared_arith = "off";

cyclonev_lcell_comb \Ram0~4 (
	.dataa(!rom_address_0),
	.datab(!rom_address_2),
	.datac(!rom_address_1),
	.datad(!rom_address_5),
	.datae(!rom_address_4),
	.dataf(!rom_address_3),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Ram04),
	.sumout(),
	.cout(),
	.shareout());
defparam \Ram0~4 .extended_lut = "off";
defparam \Ram0~4 .lut_mask = 64'h00FFFFFF3FFFFF80;
defparam \Ram0~4 .shared_arith = "off";

endmodule

module audio_config_altera_up_av_config_auto_init_ob_audio (
	rom_address_1,
	rom_address_2,
	Decoder0)/* synthesis synthesis_greybox=0 */;
input 	rom_address_1;
input 	rom_address_2;
output 	Decoder0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \Decoder0~0 (
	.dataa(!rom_address_1),
	.datab(!rom_address_2),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Decoder0),
	.sumout(),
	.cout(),
	.shareout());
defparam \Decoder0~0 .extended_lut = "off";
defparam \Decoder0~0 .lut_mask = 64'h8888888888888888;
defparam \Decoder0~0 .shared_arith = "off";

endmodule

module audio_config_altera_up_av_config_serial_bus_controller (
	transfer_data,
	transfer_complete1,
	auto_init_complete,
	data_out_25,
	data_out_17,
	data_out_16,
	data_out_15,
	data_out_14,
	data_out_13,
	data_out_12,
	data_out_11,
	data_out_10,
	data_out_8,
	data_out_7,
	data_out_6,
	data_out_5,
	data_out_4,
	data_out_3,
	data_out_2,
	data_out_1,
	serial_clk,
	always1,
	serial_data,
	serial_data1,
	data_out_21,
	GND_port,
	audio_and_video_config_0_external_interface_SDAT,
	audio_and_video_config_0_clk_clk,
	audio_and_video_config_0_reset_reset)/* synthesis synthesis_greybox=0 */;
input 	transfer_data;
output 	transfer_complete1;
input 	auto_init_complete;
input 	data_out_25;
input 	data_out_17;
input 	data_out_16;
input 	data_out_15;
input 	data_out_14;
input 	data_out_13;
input 	data_out_12;
input 	data_out_11;
input 	data_out_10;
input 	data_out_8;
input 	data_out_7;
input 	data_out_6;
input 	data_out_5;
input 	data_out_4;
input 	data_out_3;
input 	data_out_2;
input 	data_out_1;
output 	serial_clk;
input 	always1;
output 	serial_data;
output 	serial_data1;
input 	data_out_21;
input 	GND_port;
input 	audio_and_video_config_0_external_interface_SDAT;
input 	audio_and_video_config_0_clk_clk;
input 	audio_and_video_config_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Serial_Config_Clock_Generator|new_clk~q ;
wire \Serial_Config_Clock_Generator|middle_of_high_level~q ;
wire \Serial_Config_Clock_Generator|middle_of_low_level~q ;
wire \s_serial_protocol~11_combout ;
wire \s_serial_protocol.STATE_0_IDLE~q ;
wire \s_serial_protocol~12_combout ;
wire \s_serial_protocol.STATE_1_INITIALIZE~q ;
wire \new_data~0_combout ;
wire \new_data~q ;
wire \shiftreg_data~26_combout ;
wire \shiftreg_data~27_combout ;
wire \shiftreg_data~28_combout ;
wire \shiftreg_data[0]~q ;
wire \shiftreg_data~25_combout ;
wire \shiftreg_mask[2]~0_combout ;
wire \shiftreg_data[1]~q ;
wire \shiftreg_data~24_combout ;
wire \shiftreg_data[2]~q ;
wire \shiftreg_data~23_combout ;
wire \shiftreg_data[3]~q ;
wire \shiftreg_data~22_combout ;
wire \shiftreg_data[4]~q ;
wire \shiftreg_data~21_combout ;
wire \shiftreg_data[5]~q ;
wire \shiftreg_data~20_combout ;
wire \shiftreg_data[6]~q ;
wire \shiftreg_data~19_combout ;
wire \shiftreg_data[7]~q ;
wire \shiftreg_data~18_combout ;
wire \shiftreg_data[8]~q ;
wire \shiftreg_data~17_combout ;
wire \shiftreg_data[9]~q ;
wire \shiftreg_data~16_combout ;
wire \shiftreg_data[10]~q ;
wire \shiftreg_data~15_combout ;
wire \shiftreg_data[11]~q ;
wire \shiftreg_data~14_combout ;
wire \shiftreg_data[12]~q ;
wire \shiftreg_data~13_combout ;
wire \shiftreg_data[13]~q ;
wire \shiftreg_data~12_combout ;
wire \shiftreg_data[14]~q ;
wire \shiftreg_data~11_combout ;
wire \shiftreg_data[15]~q ;
wire \shiftreg_data~10_combout ;
wire \shiftreg_data[16]~q ;
wire \shiftreg_data~9_combout ;
wire \shiftreg_data[17]~q ;
wire \shiftreg_data~8_combout ;
wire \shiftreg_data[18]~q ;
wire \shiftreg_data~7_combout ;
wire \shiftreg_data[19]~q ;
wire \shiftreg_data~6_combout ;
wire \shiftreg_data[20]~q ;
wire \shiftreg_data~5_combout ;
wire \shiftreg_data[21]~q ;
wire \shiftreg_data~4_combout ;
wire \shiftreg_data[22]~q ;
wire \shiftreg_data~3_combout ;
wire \shiftreg_data[23]~q ;
wire \shiftreg_data~2_combout ;
wire \shiftreg_data[24]~q ;
wire \shiftreg_data~1_combout ;
wire \shiftreg_data[25]~q ;
wire \shiftreg_data~0_combout ;
wire \shiftreg_data[26]~q ;
wire \shiftreg_mask~27_combout ;
wire \shiftreg_mask[0]~q ;
wire \shiftreg_mask~26_combout ;
wire \shiftreg_mask[1]~q ;
wire \shiftreg_mask~25_combout ;
wire \shiftreg_mask[2]~q ;
wire \shiftreg_mask~24_combout ;
wire \shiftreg_mask[3]~q ;
wire \shiftreg_mask~23_combout ;
wire \shiftreg_mask[4]~q ;
wire \shiftreg_mask~22_combout ;
wire \shiftreg_mask[5]~q ;
wire \shiftreg_mask~21_combout ;
wire \shiftreg_mask[6]~q ;
wire \shiftreg_mask~20_combout ;
wire \shiftreg_mask[7]~q ;
wire \shiftreg_mask~19_combout ;
wire \shiftreg_mask[8]~q ;
wire \shiftreg_mask~18_combout ;
wire \shiftreg_mask[9]~q ;
wire \shiftreg_mask~17_combout ;
wire \shiftreg_mask[10]~q ;
wire \shiftreg_mask~16_combout ;
wire \shiftreg_mask[11]~q ;
wire \shiftreg_mask~15_combout ;
wire \shiftreg_mask[12]~q ;
wire \shiftreg_mask~14_combout ;
wire \shiftreg_mask[13]~q ;
wire \shiftreg_mask~13_combout ;
wire \shiftreg_mask[14]~q ;
wire \shiftreg_mask~12_combout ;
wire \shiftreg_mask[15]~q ;
wire \shiftreg_mask~11_combout ;
wire \shiftreg_mask[16]~q ;
wire \shiftreg_mask~10_combout ;
wire \shiftreg_mask[17]~q ;
wire \shiftreg_mask~9_combout ;
wire \shiftreg_mask[18]~q ;
wire \shiftreg_mask~8_combout ;
wire \shiftreg_mask[19]~q ;
wire \shiftreg_mask~7_combout ;
wire \shiftreg_mask[20]~q ;
wire \shiftreg_mask~6_combout ;
wire \shiftreg_mask[21]~q ;
wire \shiftreg_mask~5_combout ;
wire \shiftreg_mask[22]~q ;
wire \shiftreg_mask~4_combout ;
wire \shiftreg_mask[23]~q ;
wire \shiftreg_mask~3_combout ;
wire \shiftreg_mask[24]~q ;
wire \shiftreg_mask~2_combout ;
wire \shiftreg_mask[25]~q ;
wire \shiftreg_mask~1_combout ;
wire \shiftreg_mask[26]~q ;
wire \Selector1~0_combout ;
wire \Selector1~1_combout ;
wire \s_serial_protocol.STATE_2_RESTART_BIT~q ;
wire \counter~0_combout ;
wire \counter[0]~q ;
wire \counter~1_combout ;
wire \counter[1]~q ;
wire \counter~2_combout ;
wire \counter[2]~q ;
wire \Add0~0_combout ;
wire \counter~3_combout ;
wire \counter[3]~q ;
wire \Add0~1_combout ;
wire \counter~4_combout ;
wire \counter[4]~q ;
wire \always1~0_combout ;
wire \Selector2~0_combout ;
wire \s_serial_protocol.STATE_3_START_BIT~q ;
wire \Selector3~0_combout ;
wire \s_serial_protocol.STATE_4_TRANSFER~q ;
wire \Selector4~0_combout ;
wire \s_serial_protocol.STATE_5_STOP_BIT~q ;
wire \transfer_complete~0_combout ;


audio_config_altera_up_slow_clock_generator Serial_Config_Clock_Generator(
	.new_clk1(\Serial_Config_Clock_Generator|new_clk~q ),
	.middle_of_high_level1(\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.middle_of_low_level1(\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.clk(audio_and_video_config_0_clk_clk),
	.audio_and_video_config_0_reset_reset(audio_and_video_config_0_reset_reset));

dffeas transfer_complete(
	.clk(audio_and_video_config_0_clk_clk),
	.d(\transfer_complete~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(transfer_complete1),
	.prn(vcc));
defparam transfer_complete.is_wysiwyg = "true";
defparam transfer_complete.power_up = "low";

cyclonev_lcell_comb \serial_clk~0 (
	.dataa(!\Serial_Config_Clock_Generator|new_clk~q ),
	.datab(!\s_serial_protocol.STATE_0_IDLE~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(serial_clk),
	.sumout(),
	.cout(),
	.shareout());
defparam \serial_clk~0 .extended_lut = "off";
defparam \serial_clk~0 .lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam \serial_clk~0 .shared_arith = "off";

cyclonev_lcell_comb \serial_data~1 (
	.dataa(!\s_serial_protocol.STATE_0_IDLE~q ),
	.datab(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datac(!\shiftreg_data[26]~q ),
	.datad(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(serial_data),
	.sumout(),
	.cout(),
	.shareout());
defparam \serial_data~1 .extended_lut = "off";
defparam \serial_data~1 .lut_mask = 64'hABFFABFFABFFABFF;
defparam \serial_data~1 .shared_arith = "off";

cyclonev_lcell_comb \serial_data~2 (
	.dataa(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datab(!\shiftreg_mask[26]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(serial_data1),
	.sumout(),
	.cout(),
	.shareout());
defparam \serial_data~2 .extended_lut = "off";
defparam \serial_data~2 .lut_mask = 64'hEEEEEEEEEEEEEEEE;
defparam \serial_data~2 .shared_arith = "off";

cyclonev_lcell_comb \s_serial_protocol~11 (
	.dataa(!\s_serial_protocol.STATE_0_IDLE~q ),
	.datab(!audio_and_video_config_0_reset_reset),
	.datac(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datad(!\s_serial_protocol.STATE_5_STOP_BIT~q ),
	.datae(!transfer_data),
	.dataf(!always1),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\s_serial_protocol~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \s_serial_protocol~11 .extended_lut = "off";
defparam \s_serial_protocol~11 .lut_mask = 64'h4440444044404C40;
defparam \s_serial_protocol~11 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_0_IDLE (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\s_serial_protocol~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_0_IDLE~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_0_IDLE .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_0_IDLE .power_up = "low";

cyclonev_lcell_comb \s_serial_protocol~12 (
	.dataa(!\s_serial_protocol.STATE_0_IDLE~q ),
	.datab(!audio_and_video_config_0_reset_reset),
	.datac(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datad(!transfer_data),
	.datae(!transfer_complete1),
	.dataf(!auto_init_complete),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\s_serial_protocol~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \s_serial_protocol~12 .extended_lut = "off";
defparam \s_serial_protocol~12 .lut_mask = 64'h0008000000000000;
defparam \s_serial_protocol~12 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_1_INITIALIZE (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\s_serial_protocol~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_1_INITIALIZE .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_1_INITIALIZE .power_up = "low";

cyclonev_lcell_comb \new_data~0 (
	.dataa(!audio_and_video_config_0_external_interface_SDAT),
	.datab(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datac(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datad(!\new_data~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\new_data~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \new_data~0 .extended_lut = "off";
defparam \new_data~0 .lut_mask = 64'h01FD01FD01FD01FD;
defparam \new_data~0 .shared_arith = "off";

dffeas new_data(
	.clk(audio_and_video_config_0_clk_clk),
	.d(\new_data~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\new_data~q ),
	.prn(vcc));
defparam new_data.is_wysiwyg = "true";
defparam new_data.power_up = "low";

cyclonev_lcell_comb \shiftreg_data~26 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datac(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datad(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~26 .extended_lut = "off";
defparam \shiftreg_data~26 .lut_mask = 64'h0302030203020302;
defparam \shiftreg_data~26 .shared_arith = "off";

cyclonev_lcell_comb \shiftreg_data~27 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\shiftreg_data[18]~q ),
	.datad(!\shiftreg_data[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~27 .extended_lut = "off";
defparam \shiftreg_data~27 .lut_mask = 64'h0111011101110111;
defparam \shiftreg_data~27 .shared_arith = "off";

cyclonev_lcell_comb \shiftreg_data~28 (
	.dataa(!\shiftreg_data[0]~q ),
	.datab(!\new_data~q ),
	.datac(!\shiftreg_data~26_combout ),
	.datad(!\shiftreg_data~27_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~28_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~28 .extended_lut = "off";
defparam \shiftreg_data~28 .lut_mask = 64'h53FF53FF53FF53FF;
defparam \shiftreg_data~28 .shared_arith = "off";

dffeas \shiftreg_data[0] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~28_combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.ena(vcc),
	.q(\shiftreg_data[0]~q ),
	.prn(vcc));
defparam \shiftreg_data[0] .is_wysiwyg = "true";
defparam \shiftreg_data[0] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~25 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_1),
	.dataf(!\shiftreg_data[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~25 .extended_lut = "off";
defparam \shiftreg_data~25 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~25 .shared_arith = "off";

cyclonev_lcell_comb \shiftreg_mask[2]~0 (
	.dataa(!audio_and_video_config_0_reset_reset),
	.datab(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datac(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datad(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datae(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.dataf(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask[2]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask[2]~0 .extended_lut = "off";
defparam \shiftreg_mask[2]~0 .lut_mask = 64'h555F777FFFFFFFFF;
defparam \shiftreg_mask[2]~0 .shared_arith = "off";

dffeas \shiftreg_data[1] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[1]~q ),
	.prn(vcc));
defparam \shiftreg_data[1] .is_wysiwyg = "true";
defparam \shiftreg_data[1] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~24 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_2),
	.dataf(!\shiftreg_data[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~24 .extended_lut = "off";
defparam \shiftreg_data~24 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~24 .shared_arith = "off";

dffeas \shiftreg_data[2] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[2]~q ),
	.prn(vcc));
defparam \shiftreg_data[2] .is_wysiwyg = "true";
defparam \shiftreg_data[2] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~23 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_3),
	.dataf(!\shiftreg_data[2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~23 .extended_lut = "off";
defparam \shiftreg_data~23 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~23 .shared_arith = "off";

dffeas \shiftreg_data[3] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[3]~q ),
	.prn(vcc));
defparam \shiftreg_data[3] .is_wysiwyg = "true";
defparam \shiftreg_data[3] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~22 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_4),
	.dataf(!\shiftreg_data[3]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~22 .extended_lut = "off";
defparam \shiftreg_data~22 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~22 .shared_arith = "off";

dffeas \shiftreg_data[4] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[4]~q ),
	.prn(vcc));
defparam \shiftreg_data[4] .is_wysiwyg = "true";
defparam \shiftreg_data[4] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~21 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_5),
	.dataf(!\shiftreg_data[4]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~21 .extended_lut = "off";
defparam \shiftreg_data~21 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~21 .shared_arith = "off";

dffeas \shiftreg_data[5] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[5]~q ),
	.prn(vcc));
defparam \shiftreg_data[5] .is_wysiwyg = "true";
defparam \shiftreg_data[5] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~20 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_6),
	.dataf(!\shiftreg_data[5]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~20 .extended_lut = "off";
defparam \shiftreg_data~20 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~20 .shared_arith = "off";

dffeas \shiftreg_data[6] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[6]~q ),
	.prn(vcc));
defparam \shiftreg_data[6] .is_wysiwyg = "true";
defparam \shiftreg_data[6] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~19 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_7),
	.dataf(!\shiftreg_data[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~19 .extended_lut = "off";
defparam \shiftreg_data~19 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~19 .shared_arith = "off";

dffeas \shiftreg_data[7] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[7]~q ),
	.prn(vcc));
defparam \shiftreg_data[7] .is_wysiwyg = "true";
defparam \shiftreg_data[7] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~18 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_8),
	.dataf(!\shiftreg_data[7]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~18 .extended_lut = "off";
defparam \shiftreg_data~18 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~18 .shared_arith = "off";

dffeas \shiftreg_data[8] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[8]~q ),
	.prn(vcc));
defparam \shiftreg_data[8] .is_wysiwyg = "true";
defparam \shiftreg_data[8] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~17 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~17 .extended_lut = "off";
defparam \shiftreg_data~17 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_data~17 .shared_arith = "off";

dffeas \shiftreg_data[9] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[9]~q ),
	.prn(vcc));
defparam \shiftreg_data[9] .is_wysiwyg = "true";
defparam \shiftreg_data[9] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~16 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_10),
	.dataf(!\shiftreg_data[9]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~16 .extended_lut = "off";
defparam \shiftreg_data~16 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~16 .shared_arith = "off";

dffeas \shiftreg_data[10] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[10]~q ),
	.prn(vcc));
defparam \shiftreg_data[10] .is_wysiwyg = "true";
defparam \shiftreg_data[10] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~15 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_11),
	.dataf(!\shiftreg_data[10]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~15 .extended_lut = "off";
defparam \shiftreg_data~15 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~15 .shared_arith = "off";

dffeas \shiftreg_data[11] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[11]~q ),
	.prn(vcc));
defparam \shiftreg_data[11] .is_wysiwyg = "true";
defparam \shiftreg_data[11] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~14 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_12),
	.dataf(!\shiftreg_data[11]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~14 .extended_lut = "off";
defparam \shiftreg_data~14 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~14 .shared_arith = "off";

dffeas \shiftreg_data[12] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[12]~q ),
	.prn(vcc));
defparam \shiftreg_data[12] .is_wysiwyg = "true";
defparam \shiftreg_data[12] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~13 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_13),
	.dataf(!\shiftreg_data[12]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~13 .extended_lut = "off";
defparam \shiftreg_data~13 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~13 .shared_arith = "off";

dffeas \shiftreg_data[13] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[13]~q ),
	.prn(vcc));
defparam \shiftreg_data[13] .is_wysiwyg = "true";
defparam \shiftreg_data[13] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~12 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_14),
	.dataf(!\shiftreg_data[13]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~12 .extended_lut = "off";
defparam \shiftreg_data~12 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~12 .shared_arith = "off";

dffeas \shiftreg_data[14] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[14]~q ),
	.prn(vcc));
defparam \shiftreg_data[14] .is_wysiwyg = "true";
defparam \shiftreg_data[14] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~11 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_15),
	.dataf(!\shiftreg_data[14]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~11 .extended_lut = "off";
defparam \shiftreg_data~11 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~11 .shared_arith = "off";

dffeas \shiftreg_data[15] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[15]~q ),
	.prn(vcc));
defparam \shiftreg_data[15] .is_wysiwyg = "true";
defparam \shiftreg_data[15] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~10 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_16),
	.dataf(!\shiftreg_data[15]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~10 .extended_lut = "off";
defparam \shiftreg_data~10 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~10 .shared_arith = "off";

dffeas \shiftreg_data[16] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[16]~q ),
	.prn(vcc));
defparam \shiftreg_data[16] .is_wysiwyg = "true";
defparam \shiftreg_data[16] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~9 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_17),
	.dataf(!\shiftreg_data[16]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~9 .extended_lut = "off";
defparam \shiftreg_data~9 .lut_mask = 64'h000000CCFA00FACC;
defparam \shiftreg_data~9 .shared_arith = "off";

dffeas \shiftreg_data[17] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[17]~q ),
	.prn(vcc));
defparam \shiftreg_data[17] .is_wysiwyg = "true";
defparam \shiftreg_data[17] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~8 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~8 .extended_lut = "off";
defparam \shiftreg_data~8 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_data~8 .shared_arith = "off";

dffeas \shiftreg_data[18] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[18]~q ),
	.prn(vcc));
defparam \shiftreg_data[18] .is_wysiwyg = "true";
defparam \shiftreg_data[18] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~7 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~7 .extended_lut = "off";
defparam \shiftreg_data~7 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_data~7 .shared_arith = "off";

dffeas \shiftreg_data[19] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[19]~q ),
	.prn(vcc));
defparam \shiftreg_data[19] .is_wysiwyg = "true";
defparam \shiftreg_data[19] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~6 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~6 .extended_lut = "off";
defparam \shiftreg_data~6 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_data~6 .shared_arith = "off";

dffeas \shiftreg_data[20] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[20]~q ),
	.prn(vcc));
defparam \shiftreg_data[20] .is_wysiwyg = "true";
defparam \shiftreg_data[20] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~5 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_21),
	.dataf(!\shiftreg_data[20]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~5 .extended_lut = "off";
defparam \shiftreg_data~5 .lut_mask = 64'h003300FFFA33FAFF;
defparam \shiftreg_data~5 .shared_arith = "off";

dffeas \shiftreg_data[21] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[21]~q ),
	.prn(vcc));
defparam \shiftreg_data[21] .is_wysiwyg = "true";
defparam \shiftreg_data[21] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~4 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~4 .extended_lut = "off";
defparam \shiftreg_data~4 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_data~4 .shared_arith = "off";

dffeas \shiftreg_data[22] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[22]~q ),
	.prn(vcc));
defparam \shiftreg_data[22] .is_wysiwyg = "true";
defparam \shiftreg_data[22] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~3 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!data_out_21),
	.dataf(!\shiftreg_data[22]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~3 .extended_lut = "off";
defparam \shiftreg_data~3 .lut_mask = 64'h003300FFFA33FAFF;
defparam \shiftreg_data~3 .shared_arith = "off";

dffeas \shiftreg_data[23] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[23]~q ),
	.prn(vcc));
defparam \shiftreg_data[23] .is_wysiwyg = "true";
defparam \shiftreg_data[23] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~2 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!\shiftreg_data[23]~q ),
	.dataf(!data_out_21),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~2 .extended_lut = "off";
defparam \shiftreg_data~2 .lut_mask = 64'h0033FA3300FFFAFF;
defparam \shiftreg_data~2 .shared_arith = "off";

dffeas \shiftreg_data[24] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[24]~q ),
	.prn(vcc));
defparam \shiftreg_data[24] .is_wysiwyg = "true";
defparam \shiftreg_data[24] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~1 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!auto_init_complete),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!\shiftreg_data[24]~q ),
	.dataf(!data_out_25),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~1 .extended_lut = "off";
defparam \shiftreg_data~1 .lut_mask = 64'h0500FF0005CCFFCC;
defparam \shiftreg_data~1 .shared_arith = "off";

dffeas \shiftreg_data[25] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[25]~q ),
	.prn(vcc));
defparam \shiftreg_data[25] .is_wysiwyg = "true";
defparam \shiftreg_data[25] .power_up = "low";

cyclonev_lcell_comb \shiftreg_data~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_data[25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_data~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_data~0 .extended_lut = "off";
defparam \shiftreg_data~0 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_data~0 .shared_arith = "off";

dffeas \shiftreg_data[26] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_data~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_data[26]~q ),
	.prn(vcc));
defparam \shiftreg_data[26] .is_wysiwyg = "true";
defparam \shiftreg_data[26] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~27 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datac(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datad(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datae(!\shiftreg_mask[0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~27 .extended_lut = "off";
defparam \shiftreg_mask~27 .lut_mask = 64'h0055FCFD0055FCFD;
defparam \shiftreg_mask~27 .shared_arith = "off";

dffeas \shiftreg_mask[0] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.ena(vcc),
	.q(\shiftreg_mask[0]~q ),
	.prn(vcc));
defparam \shiftreg_mask[0] .is_wysiwyg = "true";
defparam \shiftreg_mask[0] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~26 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~26 .extended_lut = "off";
defparam \shiftreg_mask~26 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~26 .shared_arith = "off";

dffeas \shiftreg_mask[1] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[1]~q ),
	.prn(vcc));
defparam \shiftreg_mask[1] .is_wysiwyg = "true";
defparam \shiftreg_mask[1] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~25 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~25 .extended_lut = "off";
defparam \shiftreg_mask~25 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~25 .shared_arith = "off";

dffeas \shiftreg_mask[2] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[2]~q ),
	.prn(vcc));
defparam \shiftreg_mask[2] .is_wysiwyg = "true";
defparam \shiftreg_mask[2] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~24 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~24 .extended_lut = "off";
defparam \shiftreg_mask~24 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~24 .shared_arith = "off";

dffeas \shiftreg_mask[3] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[3]~q ),
	.prn(vcc));
defparam \shiftreg_mask[3] .is_wysiwyg = "true";
defparam \shiftreg_mask[3] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~23 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~23 .extended_lut = "off";
defparam \shiftreg_mask~23 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~23 .shared_arith = "off";

dffeas \shiftreg_mask[4] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[4]~q ),
	.prn(vcc));
defparam \shiftreg_mask[4] .is_wysiwyg = "true";
defparam \shiftreg_mask[4] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~22 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~22 .extended_lut = "off";
defparam \shiftreg_mask~22 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~22 .shared_arith = "off";

dffeas \shiftreg_mask[5] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[5]~q ),
	.prn(vcc));
defparam \shiftreg_mask[5] .is_wysiwyg = "true";
defparam \shiftreg_mask[5] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~21 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~21 .extended_lut = "off";
defparam \shiftreg_mask~21 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~21 .shared_arith = "off";

dffeas \shiftreg_mask[6] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[6]~q ),
	.prn(vcc));
defparam \shiftreg_mask[6] .is_wysiwyg = "true";
defparam \shiftreg_mask[6] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~20 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~20 .extended_lut = "off";
defparam \shiftreg_mask~20 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~20 .shared_arith = "off";

dffeas \shiftreg_mask[7] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[7]~q ),
	.prn(vcc));
defparam \shiftreg_mask[7] .is_wysiwyg = "true";
defparam \shiftreg_mask[7] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~19 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~19 .extended_lut = "off";
defparam \shiftreg_mask~19 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~19 .shared_arith = "off";

dffeas \shiftreg_mask[8] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[8]~q ),
	.prn(vcc));
defparam \shiftreg_mask[8] .is_wysiwyg = "true";
defparam \shiftreg_mask[8] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~18 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~18 .extended_lut = "off";
defparam \shiftreg_mask~18 .lut_mask = 64'h0FEF0FEF0FEF0FEF;
defparam \shiftreg_mask~18 .shared_arith = "off";

dffeas \shiftreg_mask[9] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[9]~q ),
	.prn(vcc));
defparam \shiftreg_mask[9] .is_wysiwyg = "true";
defparam \shiftreg_mask[9] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~17 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~17 .extended_lut = "off";
defparam \shiftreg_mask~17 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~17 .shared_arith = "off";

dffeas \shiftreg_mask[10] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[10]~q ),
	.prn(vcc));
defparam \shiftreg_mask[10] .is_wysiwyg = "true";
defparam \shiftreg_mask[10] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~16 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~16 .extended_lut = "off";
defparam \shiftreg_mask~16 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~16 .shared_arith = "off";

dffeas \shiftreg_mask[11] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[11]~q ),
	.prn(vcc));
defparam \shiftreg_mask[11] .is_wysiwyg = "true";
defparam \shiftreg_mask[11] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~15 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~15 .extended_lut = "off";
defparam \shiftreg_mask~15 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~15 .shared_arith = "off";

dffeas \shiftreg_mask[12] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[12]~q ),
	.prn(vcc));
defparam \shiftreg_mask[12] .is_wysiwyg = "true";
defparam \shiftreg_mask[12] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~14 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~14 .extended_lut = "off";
defparam \shiftreg_mask~14 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~14 .shared_arith = "off";

dffeas \shiftreg_mask[13] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[13]~q ),
	.prn(vcc));
defparam \shiftreg_mask[13] .is_wysiwyg = "true";
defparam \shiftreg_mask[13] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~13 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~13 .extended_lut = "off";
defparam \shiftreg_mask~13 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~13 .shared_arith = "off";

dffeas \shiftreg_mask[14] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[14]~q ),
	.prn(vcc));
defparam \shiftreg_mask[14] .is_wysiwyg = "true";
defparam \shiftreg_mask[14] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~12 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~12 .extended_lut = "off";
defparam \shiftreg_mask~12 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~12 .shared_arith = "off";

dffeas \shiftreg_mask[15] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[15]~q ),
	.prn(vcc));
defparam \shiftreg_mask[15] .is_wysiwyg = "true";
defparam \shiftreg_mask[15] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~11 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~11 .extended_lut = "off";
defparam \shiftreg_mask~11 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~11 .shared_arith = "off";

dffeas \shiftreg_mask[16] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[16]~q ),
	.prn(vcc));
defparam \shiftreg_mask[16] .is_wysiwyg = "true";
defparam \shiftreg_mask[16] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~10 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~10 .extended_lut = "off";
defparam \shiftreg_mask~10 .lut_mask = 64'h10F010F010F010F0;
defparam \shiftreg_mask~10 .shared_arith = "off";

dffeas \shiftreg_mask[17] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[17]~q ),
	.prn(vcc));
defparam \shiftreg_mask[17] .is_wysiwyg = "true";
defparam \shiftreg_mask[17] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~9 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~9 .extended_lut = "off";
defparam \shiftreg_mask~9 .lut_mask = 64'h1FFF1FFF1FFF1FFF;
defparam \shiftreg_mask~9 .shared_arith = "off";

dffeas \shiftreg_mask[18] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[18]~q ),
	.prn(vcc));
defparam \shiftreg_mask[18] .is_wysiwyg = "true";
defparam \shiftreg_mask[18] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~8 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~8 .extended_lut = "off";
defparam \shiftreg_mask~8 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~8 .shared_arith = "off";

dffeas \shiftreg_mask[19] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[19]~q ),
	.prn(vcc));
defparam \shiftreg_mask[19] .is_wysiwyg = "true";
defparam \shiftreg_mask[19] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~7 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~7 .extended_lut = "off";
defparam \shiftreg_mask~7 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~7 .shared_arith = "off";

dffeas \shiftreg_mask[20] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[20]~q ),
	.prn(vcc));
defparam \shiftreg_mask[20] .is_wysiwyg = "true";
defparam \shiftreg_mask[20] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~6 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~6 .extended_lut = "off";
defparam \shiftreg_mask~6 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~6 .shared_arith = "off";

dffeas \shiftreg_mask[21] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[21]~q ),
	.prn(vcc));
defparam \shiftreg_mask[21] .is_wysiwyg = "true";
defparam \shiftreg_mask[21] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~5 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~5 .extended_lut = "off";
defparam \shiftreg_mask~5 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~5 .shared_arith = "off";

dffeas \shiftreg_mask[22] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[22]~q ),
	.prn(vcc));
defparam \shiftreg_mask[22] .is_wysiwyg = "true";
defparam \shiftreg_mask[22] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~4 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~4 .extended_lut = "off";
defparam \shiftreg_mask~4 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~4 .shared_arith = "off";

dffeas \shiftreg_mask[23] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[23]~q ),
	.prn(vcc));
defparam \shiftreg_mask[23] .is_wysiwyg = "true";
defparam \shiftreg_mask[23] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~3 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~3 .extended_lut = "off";
defparam \shiftreg_mask~3 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~3 .shared_arith = "off";

dffeas \shiftreg_mask[24] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[24]~q ),
	.prn(vcc));
defparam \shiftreg_mask[24] .is_wysiwyg = "true";
defparam \shiftreg_mask[24] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~2 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~2 .extended_lut = "off";
defparam \shiftreg_mask~2 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~2 .shared_arith = "off";

dffeas \shiftreg_mask[25] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[25]~q ),
	.prn(vcc));
defparam \shiftreg_mask[25] .is_wysiwyg = "true";
defparam \shiftreg_mask[25] .power_up = "low";

cyclonev_lcell_comb \shiftreg_mask~1 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\shiftreg_mask[25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\shiftreg_mask~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \shiftreg_mask~1 .extended_lut = "off";
defparam \shiftreg_mask~1 .lut_mask = 64'h00E000E000E000E0;
defparam \shiftreg_mask~1 .shared_arith = "off";

dffeas \shiftreg_mask[26] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\shiftreg_mask~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\shiftreg_mask[26]~q ),
	.prn(vcc));
defparam \shiftreg_mask[26] .is_wysiwyg = "true";
defparam \shiftreg_mask[26] .power_up = "low";

cyclonev_lcell_comb \Selector1~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datab(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datac(!\shiftreg_data[26]~q ),
	.datad(!\shiftreg_mask[26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Selector1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Selector1~0 .extended_lut = "off";
defparam \Selector1~0 .lut_mask = 64'h0001000100010001;
defparam \Selector1~0 .shared_arith = "off";

cyclonev_lcell_comb \Selector1~1 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\always1~0_combout ),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\Selector1~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Selector1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Selector1~1 .extended_lut = "off";
defparam \Selector1~1 .lut_mask = 64'h0ACE0ACE0ACE0ACE;
defparam \Selector1~1 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_2_RESTART_BIT (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Selector1~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_2_RESTART_BIT .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_2_RESTART_BIT .power_up = "low";

cyclonev_lcell_comb \counter~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\counter[0]~q ),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter~0 .extended_lut = "off";
defparam \counter~0 .lut_mask = 64'hCD00CD00CD00CD00;
defparam \counter~0 .shared_arith = "off";

dffeas \counter[0] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\counter~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\counter[0]~q ),
	.prn(vcc));
defparam \counter[0] .is_wysiwyg = "true";
defparam \counter[0] .power_up = "low";

cyclonev_lcell_comb \counter~1 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\counter[0]~q ),
	.datac(!\counter[1]~q ),
	.datad(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datae(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter~1 .extended_lut = "off";
defparam \counter~1 .lut_mask = 64'h3C2800003C280000;
defparam \counter~1 .shared_arith = "off";

dffeas \counter[1] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\counter~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\counter[1]~q ),
	.prn(vcc));
defparam \counter[1] .is_wysiwyg = "true";
defparam \counter[1] .power_up = "low";

cyclonev_lcell_comb \counter~2 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\counter[0]~q ),
	.datac(!\counter[1]~q ),
	.datad(!\counter[2]~q ),
	.datae(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.dataf(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter~2 .extended_lut = "off";
defparam \counter~2 .lut_mask = 64'h03FC02A800000000;
defparam \counter~2 .shared_arith = "off";

dffeas \counter[2] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\counter~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\counter[2]~q ),
	.prn(vcc));
defparam \counter[2] .is_wysiwyg = "true";
defparam \counter[2] .power_up = "low";

cyclonev_lcell_comb \Add0~0 (
	.dataa(!\counter[0]~q ),
	.datab(!\counter[1]~q ),
	.datac(!\counter[2]~q ),
	.datad(!\counter[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~0 .extended_lut = "off";
defparam \Add0~0 .lut_mask = 64'h01FE01FE01FE01FE;
defparam \Add0~0 .shared_arith = "off";

cyclonev_lcell_comb \counter~3 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datac(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datad(!\Add0~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter~3 .extended_lut = "off";
defparam \counter~3 .lut_mask = 64'h10F010F010F010F0;
defparam \counter~3 .shared_arith = "off";

dffeas \counter[3] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\counter~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\counter[3]~q ),
	.prn(vcc));
defparam \counter[3] .is_wysiwyg = "true";
defparam \counter[3] .power_up = "low";

cyclonev_lcell_comb \Add0~1 (
	.dataa(!\counter[0]~q ),
	.datab(!\counter[1]~q ),
	.datac(!\counter[2]~q ),
	.datad(!\counter[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h0001000100010001;
defparam \Add0~1 .shared_arith = "off";

cyclonev_lcell_comb \counter~4 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\counter[4]~q ),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!\Add0~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter~4 .extended_lut = "off";
defparam \counter~4 .lut_mask = 64'h3200C8003200C800;
defparam \counter~4 .shared_arith = "off";

dffeas \counter[4] (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\counter~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(\shiftreg_mask[2]~0_combout ),
	.q(\counter[4]~q ),
	.prn(vcc));
defparam \counter[4] .is_wysiwyg = "true";
defparam \counter[4] .power_up = "low";

cyclonev_lcell_comb \always1~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datab(!\counter[0]~q ),
	.datac(!\counter[1]~q ),
	.datad(!\counter[2]~q ),
	.datae(!\counter[3]~q ),
	.dataf(!\counter[4]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always1~0 .extended_lut = "off";
defparam \always1~0 .lut_mask = 64'h0000000000000400;
defparam \always1~0 .shared_arith = "off";

cyclonev_lcell_comb \Selector2~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datac(!\s_serial_protocol.STATE_2_RESTART_BIT~q ),
	.datad(!\s_serial_protocol.STATE_1_INITIALIZE~q ),
	.datae(!\s_serial_protocol.STATE_3_START_BIT~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Selector2~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Selector2~0 .extended_lut = "off";
defparam \Selector2~0 .lut_mask = 64'h05FFCDFF05FFCDFF;
defparam \Selector2~0 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_3_START_BIT (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Selector2~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_3_START_BIT~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_3_START_BIT .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_3_START_BIT .power_up = "low";

cyclonev_lcell_comb \Selector3~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_low_level~q ),
	.datab(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datac(!\always1~0_combout ),
	.datad(!\shiftreg_data[26]~q ),
	.datae(!\shiftreg_mask[26]~q ),
	.dataf(!\s_serial_protocol.STATE_3_START_BIT~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Selector3~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Selector3~0 .extended_lut = "off";
defparam \Selector3~0 .lut_mask = 64'h3030302075757575;
defparam \Selector3~0 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_4_TRANSFER (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Selector3~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_4_TRANSFER~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_4_TRANSFER .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_4_TRANSFER .power_up = "low";

cyclonev_lcell_comb \Selector4~0 (
	.dataa(!\Serial_Config_Clock_Generator|middle_of_high_level~q ),
	.datab(!\s_serial_protocol.STATE_5_STOP_BIT~q ),
	.datac(!\s_serial_protocol.STATE_4_TRANSFER~q ),
	.datad(!\always1~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Selector4~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Selector4~0 .extended_lut = "off";
defparam \Selector4~0 .lut_mask = 64'h222F222F222F222F;
defparam \Selector4~0 .shared_arith = "off";

dffeas \s_serial_protocol.STATE_5_STOP_BIT (
	.clk(audio_and_video_config_0_clk_clk),
	.d(\Selector4~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\s_serial_protocol.STATE_5_STOP_BIT~q ),
	.prn(vcc));
defparam \s_serial_protocol.STATE_5_STOP_BIT .is_wysiwyg = "true";
defparam \s_serial_protocol.STATE_5_STOP_BIT .power_up = "low";

cyclonev_lcell_comb \transfer_complete~0 (
	.dataa(!\s_serial_protocol.STATE_5_STOP_BIT~q ),
	.datab(!transfer_data),
	.datac(!transfer_complete1),
	.datad(!auto_init_complete),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\transfer_complete~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \transfer_complete~0 .extended_lut = "off";
defparam \transfer_complete~0 .lut_mask = 64'h5755575557555755;
defparam \transfer_complete~0 .shared_arith = "off";

endmodule

module audio_config_altera_up_slow_clock_generator (
	new_clk1,
	middle_of_high_level1,
	middle_of_low_level1,
	clk,
	audio_and_video_config_0_reset_reset)/* synthesis synthesis_greybox=0 */;
output 	new_clk1;
output 	middle_of_high_level1;
output 	middle_of_low_level1;
input 	clk;
input 	audio_and_video_config_0_reset_reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add0~41_sumout ;
wire \clk_counter[1]~q ;
wire \Add0~42 ;
wire \Add0~37_sumout ;
wire \clk_counter[2]~q ;
wire \Add0~38 ;
wire \Add0~33_sumout ;
wire \clk_counter[3]~q ;
wire \Add0~34 ;
wire \Add0~29_sumout ;
wire \clk_counter[4]~q ;
wire \Add0~30 ;
wire \Add0~25_sumout ;
wire \clk_counter[5]~q ;
wire \Add0~26 ;
wire \Add0~21_sumout ;
wire \clk_counter[6]~q ;
wire \Add0~22 ;
wire \Add0~17_sumout ;
wire \clk_counter[7]~q ;
wire \Add0~18 ;
wire \Add0~13_sumout ;
wire \clk_counter[8]~q ;
wire \Add0~14 ;
wire \Add0~9_sumout ;
wire \clk_counter[9]~q ;
wire \Add0~10 ;
wire \Add0~5_sumout ;
wire \clk_counter[10]~q ;
wire \Add0~6 ;
wire \Add0~1_sumout ;
wire \clk_counter[11]~q ;
wire \middle_of_high_level~0_combout ;
wire \middle_of_high_level~1_combout ;
wire \middle_of_high_level~2_combout ;
wire \middle_of_low_level~0_combout ;


dffeas new_clk(
	.clk(clk),
	.d(\clk_counter[11]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(new_clk1),
	.prn(vcc));
defparam new_clk.is_wysiwyg = "true";
defparam new_clk.power_up = "low";

dffeas middle_of_high_level(
	.clk(clk),
	.d(\middle_of_high_level~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(middle_of_high_level1),
	.prn(vcc));
defparam middle_of_high_level.is_wysiwyg = "true";
defparam middle_of_high_level.power_up = "low";

dffeas middle_of_low_level(
	.clk(clk),
	.d(\middle_of_low_level~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(middle_of_low_level1),
	.prn(vcc));
defparam middle_of_low_level.is_wysiwyg = "true";
defparam middle_of_low_level.power_up = "low";

cyclonev_lcell_comb \Add0~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~41_sumout ),
	.cout(\Add0~42 ),
	.shareout());
defparam \Add0~41 .extended_lut = "off";
defparam \Add0~41 .lut_mask = 64'h00000000000000FF;
defparam \Add0~41 .shared_arith = "off";

dffeas \clk_counter[1] (
	.clk(clk),
	.d(\Add0~41_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[1]~q ),
	.prn(vcc));
defparam \clk_counter[1] .is_wysiwyg = "true";
defparam \clk_counter[1] .power_up = "low";

cyclonev_lcell_comb \Add0~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~37_sumout ),
	.cout(\Add0~38 ),
	.shareout());
defparam \Add0~37 .extended_lut = "off";
defparam \Add0~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~37 .shared_arith = "off";

dffeas \clk_counter[2] (
	.clk(clk),
	.d(\Add0~37_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[2]~q ),
	.prn(vcc));
defparam \clk_counter[2] .is_wysiwyg = "true";
defparam \clk_counter[2] .power_up = "low";

cyclonev_lcell_comb \Add0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~33_sumout ),
	.cout(\Add0~34 ),
	.shareout());
defparam \Add0~33 .extended_lut = "off";
defparam \Add0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~33 .shared_arith = "off";

dffeas \clk_counter[3] (
	.clk(clk),
	.d(\Add0~33_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[3]~q ),
	.prn(vcc));
defparam \clk_counter[3] .is_wysiwyg = "true";
defparam \clk_counter[3] .power_up = "low";

cyclonev_lcell_comb \Add0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~29_sumout ),
	.cout(\Add0~30 ),
	.shareout());
defparam \Add0~29 .extended_lut = "off";
defparam \Add0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~29 .shared_arith = "off";

dffeas \clk_counter[4] (
	.clk(clk),
	.d(\Add0~29_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[4]~q ),
	.prn(vcc));
defparam \clk_counter[4] .is_wysiwyg = "true";
defparam \clk_counter[4] .power_up = "low";

cyclonev_lcell_comb \Add0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~25_sumout ),
	.cout(\Add0~26 ),
	.shareout());
defparam \Add0~25 .extended_lut = "off";
defparam \Add0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~25 .shared_arith = "off";

dffeas \clk_counter[5] (
	.clk(clk),
	.d(\Add0~25_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[5]~q ),
	.prn(vcc));
defparam \clk_counter[5] .is_wysiwyg = "true";
defparam \clk_counter[5] .power_up = "low";

cyclonev_lcell_comb \Add0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~21_sumout ),
	.cout(\Add0~22 ),
	.shareout());
defparam \Add0~21 .extended_lut = "off";
defparam \Add0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~21 .shared_arith = "off";

dffeas \clk_counter[6] (
	.clk(clk),
	.d(\Add0~21_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[6]~q ),
	.prn(vcc));
defparam \clk_counter[6] .is_wysiwyg = "true";
defparam \clk_counter[6] .power_up = "low";

cyclonev_lcell_comb \Add0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~17_sumout ),
	.cout(\Add0~18 ),
	.shareout());
defparam \Add0~17 .extended_lut = "off";
defparam \Add0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~17 .shared_arith = "off";

dffeas \clk_counter[7] (
	.clk(clk),
	.d(\Add0~17_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[7]~q ),
	.prn(vcc));
defparam \clk_counter[7] .is_wysiwyg = "true";
defparam \clk_counter[7] .power_up = "low";

cyclonev_lcell_comb \Add0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~13_sumout ),
	.cout(\Add0~14 ),
	.shareout());
defparam \Add0~13 .extended_lut = "off";
defparam \Add0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~13 .shared_arith = "off";

dffeas \clk_counter[8] (
	.clk(clk),
	.d(\Add0~13_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[8]~q ),
	.prn(vcc));
defparam \clk_counter[8] .is_wysiwyg = "true";
defparam \clk_counter[8] .power_up = "low";

cyclonev_lcell_comb \Add0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~9_sumout ),
	.cout(\Add0~10 ),
	.shareout());
defparam \Add0~9 .extended_lut = "off";
defparam \Add0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~9 .shared_arith = "off";

dffeas \clk_counter[9] (
	.clk(clk),
	.d(\Add0~9_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[9]~q ),
	.prn(vcc));
defparam \clk_counter[9] .is_wysiwyg = "true";
defparam \clk_counter[9] .power_up = "low";

cyclonev_lcell_comb \Add0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~5_sumout ),
	.cout(\Add0~6 ),
	.shareout());
defparam \Add0~5 .extended_lut = "off";
defparam \Add0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~5 .shared_arith = "off";

dffeas \clk_counter[10] (
	.clk(clk),
	.d(\Add0~5_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[10]~q ),
	.prn(vcc));
defparam \clk_counter[10] .is_wysiwyg = "true";
defparam \clk_counter[10] .power_up = "low";

cyclonev_lcell_comb \Add0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\clk_counter[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~1_sumout ),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~1 .shared_arith = "off";

dffeas \clk_counter[11] (
	.clk(clk),
	.d(\Add0~1_sumout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(audio_and_video_config_0_reset_reset),
	.sload(gnd),
	.ena(vcc),
	.q(\clk_counter[11]~q ),
	.prn(vcc));
defparam \clk_counter[11] .is_wysiwyg = "true";
defparam \clk_counter[11] .power_up = "low";

cyclonev_lcell_comb \middle_of_high_level~0 (
	.dataa(!\clk_counter[7]~q ),
	.datab(!\clk_counter[6]~q ),
	.datac(!\clk_counter[5]~q ),
	.datad(!\clk_counter[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\middle_of_high_level~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \middle_of_high_level~0 .extended_lut = "off";
defparam \middle_of_high_level~0 .lut_mask = 64'h0001000100010001;
defparam \middle_of_high_level~0 .shared_arith = "off";

cyclonev_lcell_comb \middle_of_high_level~1 (
	.dataa(!\clk_counter[10]~q ),
	.datab(!\clk_counter[3]~q ),
	.datac(!\clk_counter[2]~q ),
	.datad(!\clk_counter[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\middle_of_high_level~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \middle_of_high_level~1 .extended_lut = "off";
defparam \middle_of_high_level~1 .lut_mask = 64'h0002000200020002;
defparam \middle_of_high_level~1 .shared_arith = "off";

cyclonev_lcell_comb \middle_of_high_level~2 (
	.dataa(!\clk_counter[11]~q ),
	.datab(!\clk_counter[9]~q ),
	.datac(!\clk_counter[8]~q ),
	.datad(!\middle_of_high_level~0_combout ),
	.datae(!\middle_of_high_level~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\middle_of_high_level~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \middle_of_high_level~2 .extended_lut = "off";
defparam \middle_of_high_level~2 .lut_mask = 64'h0000000100000001;
defparam \middle_of_high_level~2 .shared_arith = "off";

cyclonev_lcell_comb \middle_of_low_level~0 (
	.dataa(!\clk_counter[11]~q ),
	.datab(!\clk_counter[9]~q ),
	.datac(!\clk_counter[8]~q ),
	.datad(!\middle_of_high_level~0_combout ),
	.datae(!\middle_of_high_level~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\middle_of_low_level~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \middle_of_low_level~0 .extended_lut = "off";
defparam \middle_of_low_level~0 .lut_mask = 64'h0000000200000002;
defparam \middle_of_low_level~0 .shared_arith = "off";

endmodule
