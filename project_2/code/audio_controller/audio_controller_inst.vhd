	component audio_controller is
		port (
			audio_0_clk_clk                         : in  std_logic                     := 'X';             -- clk
			audio_0_reset_reset                     : in  std_logic                     := 'X';             -- reset
			audio_0_avalon_left_channel_sink_data   : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			audio_0_avalon_left_channel_sink_valid  : in  std_logic                     := 'X';             -- valid
			audio_0_avalon_left_channel_sink_ready  : out std_logic;                                        -- ready
			audio_0_avalon_right_channel_sink_data  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			audio_0_avalon_right_channel_sink_valid : in  std_logic                     := 'X';             -- valid
			audio_0_avalon_right_channel_sink_ready : out std_logic;                                        -- ready
			audio_0_external_interface_BCLK         : in  std_logic                     := 'X';             -- BCLK
			audio_0_external_interface_DACDAT       : out std_logic;                                        -- DACDAT
			audio_0_external_interface_DACLRCK      : in  std_logic                     := 'X'              -- DACLRCK
		);
	end component audio_controller;

	u0 : component audio_controller
		port map (
			audio_0_clk_clk                         => CONNECTED_TO_audio_0_clk_clk,                         --                       audio_0_clk.clk
			audio_0_reset_reset                     => CONNECTED_TO_audio_0_reset_reset,                     --                     audio_0_reset.reset
			audio_0_avalon_left_channel_sink_data   => CONNECTED_TO_audio_0_avalon_left_channel_sink_data,   --  audio_0_avalon_left_channel_sink.data
			audio_0_avalon_left_channel_sink_valid  => CONNECTED_TO_audio_0_avalon_left_channel_sink_valid,  --                                  .valid
			audio_0_avalon_left_channel_sink_ready  => CONNECTED_TO_audio_0_avalon_left_channel_sink_ready,  --                                  .ready
			audio_0_avalon_right_channel_sink_data  => CONNECTED_TO_audio_0_avalon_right_channel_sink_data,  -- audio_0_avalon_right_channel_sink.data
			audio_0_avalon_right_channel_sink_valid => CONNECTED_TO_audio_0_avalon_right_channel_sink_valid, --                                  .valid
			audio_0_avalon_right_channel_sink_ready => CONNECTED_TO_audio_0_avalon_right_channel_sink_ready, --                                  .ready
			audio_0_external_interface_BCLK         => CONNECTED_TO_audio_0_external_interface_BCLK,         --        audio_0_external_interface.BCLK
			audio_0_external_interface_DACDAT       => CONNECTED_TO_audio_0_external_interface_DACDAT,       --                                  .DACDAT
			audio_0_external_interface_DACLRCK      => CONNECTED_TO_audio_0_external_interface_DACLRCK       --                                  .DACLRCK
		);

