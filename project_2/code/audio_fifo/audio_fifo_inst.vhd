	component audio_fifo is
		port (
			sc_fifo_0_clk_clk         : in  std_logic                     := 'X';             -- clk
			sc_fifo_0_clk_reset_reset : in  std_logic                     := 'X';             -- reset
			sc_fifo_0_in_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- data
			sc_fifo_0_in_valid        : in  std_logic                     := 'X';             -- valid
			sc_fifo_0_in_ready        : out std_logic;                                        -- ready
			sc_fifo_0_out_data        : out std_logic_vector(15 downto 0);                    -- data
			sc_fifo_0_out_valid       : out std_logic;                                        -- valid
			sc_fifo_0_out_ready       : in  std_logic                     := 'X'              -- ready
		);
	end component audio_fifo;

	u0 : component audio_fifo
		port map (
			sc_fifo_0_clk_clk         => CONNECTED_TO_sc_fifo_0_clk_clk,         --       sc_fifo_0_clk.clk
			sc_fifo_0_clk_reset_reset => CONNECTED_TO_sc_fifo_0_clk_reset_reset, -- sc_fifo_0_clk_reset.reset
			sc_fifo_0_in_data         => CONNECTED_TO_sc_fifo_0_in_data,         --        sc_fifo_0_in.data
			sc_fifo_0_in_valid        => CONNECTED_TO_sc_fifo_0_in_valid,        --                    .valid
			sc_fifo_0_in_ready        => CONNECTED_TO_sc_fifo_0_in_ready,        --                    .ready
			sc_fifo_0_out_data        => CONNECTED_TO_sc_fifo_0_out_data,        --       sc_fifo_0_out.data
			sc_fifo_0_out_valid       => CONNECTED_TO_sc_fifo_0_out_valid,       --                    .valid
			sc_fifo_0_out_ready       => CONNECTED_TO_sc_fifo_0_out_ready        --                    .ready
		);

