	audio_fifo u0 (
		.sc_fifo_0_clk_clk         (<connected-to-sc_fifo_0_clk_clk>),         //       sc_fifo_0_clk.clk
		.sc_fifo_0_clk_reset_reset (<connected-to-sc_fifo_0_clk_reset_reset>), // sc_fifo_0_clk_reset.reset
		.sc_fifo_0_in_data         (<connected-to-sc_fifo_0_in_data>),         //        sc_fifo_0_in.data
		.sc_fifo_0_in_valid        (<connected-to-sc_fifo_0_in_valid>),        //                    .valid
		.sc_fifo_0_in_ready        (<connected-to-sc_fifo_0_in_ready>),        //                    .ready
		.sc_fifo_0_out_data        (<connected-to-sc_fifo_0_out_data>),        //       sc_fifo_0_out.data
		.sc_fifo_0_out_valid       (<connected-to-sc_fifo_0_out_valid>),       //                    .valid
		.sc_fifo_0_out_ready       (<connected-to-sc_fifo_0_out_ready>)        //                    .ready
	);

