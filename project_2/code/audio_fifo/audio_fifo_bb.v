
module audio_fifo (
	sc_fifo_0_clk_clk,
	sc_fifo_0_clk_reset_reset,
	sc_fifo_0_in_data,
	sc_fifo_0_in_valid,
	sc_fifo_0_in_ready,
	sc_fifo_0_out_data,
	sc_fifo_0_out_valid,
	sc_fifo_0_out_ready);	

	input		sc_fifo_0_clk_clk;
	input		sc_fifo_0_clk_reset_reset;
	input	[15:0]	sc_fifo_0_in_data;
	input		sc_fifo_0_in_valid;
	output		sc_fifo_0_in_ready;
	output	[15:0]	sc_fifo_0_out_data;
	output		sc_fifo_0_out_valid;
	input		sc_fifo_0_out_ready;
endmodule
