	audio_controller u0 (
		.audio_0_clk_clk                         (<connected-to-audio_0_clk_clk>),                         //                       audio_0_clk.clk
		.audio_0_reset_reset                     (<connected-to-audio_0_reset_reset>),                     //                     audio_0_reset.reset
		.audio_0_avalon_left_channel_sink_data   (<connected-to-audio_0_avalon_left_channel_sink_data>),   //  audio_0_avalon_left_channel_sink.data
		.audio_0_avalon_left_channel_sink_valid  (<connected-to-audio_0_avalon_left_channel_sink_valid>),  //                                  .valid
		.audio_0_avalon_left_channel_sink_ready  (<connected-to-audio_0_avalon_left_channel_sink_ready>),  //                                  .ready
		.audio_0_avalon_right_channel_sink_data  (<connected-to-audio_0_avalon_right_channel_sink_data>),  // audio_0_avalon_right_channel_sink.data
		.audio_0_avalon_right_channel_sink_valid (<connected-to-audio_0_avalon_right_channel_sink_valid>), //                                  .valid
		.audio_0_avalon_right_channel_sink_ready (<connected-to-audio_0_avalon_right_channel_sink_ready>), //                                  .ready
		.audio_0_external_interface_BCLK         (<connected-to-audio_0_external_interface_BCLK>),         //        audio_0_external_interface.BCLK
		.audio_0_external_interface_DACDAT       (<connected-to-audio_0_external_interface_DACDAT>),       //                                  .DACDAT
		.audio_0_external_interface_DACLRCK      (<connected-to-audio_0_external_interface_DACLRCK>)       //                                  .DACLRCK
	);

