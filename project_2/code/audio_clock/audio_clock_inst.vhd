	component audio_clock is
		port (
			audio_pll_0_ref_clk_clk     : in  std_logic := 'X'; -- clk
			audio_pll_0_ref_reset_reset : in  std_logic := 'X'; -- reset
			audio_pll_0_audio_clk_clk   : out std_logic         -- clk
		);
	end component audio_clock;

	u0 : component audio_clock
		port map (
			audio_pll_0_ref_clk_clk     => CONNECTED_TO_audio_pll_0_ref_clk_clk,     --   audio_pll_0_ref_clk.clk
			audio_pll_0_ref_reset_reset => CONNECTED_TO_audio_pll_0_ref_reset_reset, -- audio_pll_0_ref_reset.reset
			audio_pll_0_audio_clk_clk   => CONNECTED_TO_audio_pll_0_audio_clk_clk    -- audio_pll_0_audio_clk.clk
		);

