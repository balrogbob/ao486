	component system is
		port (
			clk_sys_clk                    : in    std_logic                     := 'X';             -- clk
			reset_sys_reset_n              : in    std_logic                     := 'X';             -- reset_n
			clk_vga_clk                    : in    std_logic                     := 'X';             -- clk
			reset_vga_reset_n              : in    std_logic                     := 'X';             -- reset_n
			sdram_conduit_end_addr         : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_conduit_end_ba           : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_conduit_end_cas_n        : out   std_logic;                                        -- cas_n
			sdram_conduit_end_cke          : out   std_logic;                                        -- cke
			sdram_conduit_end_cs_n         : out   std_logic;                                        -- cs_n
			sdram_conduit_end_dq           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_conduit_end_dqm          : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_conduit_end_ras_n        : out   std_logic;                                        -- ras_n
			sdram_conduit_end_we_n         : out   std_logic;                                        -- we_n
			clk_sound_clk                  : in    std_logic                     := 'X';             -- clk
			reset_sound_reset_n            : in    std_logic                     := 'X';             -- reset_n
			pio_input_export               : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			reset_only_ao486_reset         : in    std_logic                     := 'X';             -- reset
			pio_output_export              : out   std_logic_vector(7 downto 0);                     -- export
			export_sound_sclk              : out   std_logic;                                        -- sclk
			export_sound_sdat              : inout std_logic                     := 'X';             -- sdat
			export_sound_xclk              : out   std_logic;                                        -- xclk
			export_sound_bclk              : out   std_logic;                                        -- bclk
			export_sound_dat               : out   std_logic;                                        -- dat
			export_sound_lr                : out   std_logic;                                        -- lr
			export_vga_clock               : out   std_logic;                                        -- clock
			export_vga_sync_n              : out   std_logic;                                        -- sync_n
			export_vga_blank_n             : out   std_logic;                                        -- blank_n
			export_vga_horiz_sync          : out   std_logic;                                        -- horiz_sync
			export_vga_vert_sync           : out   std_logic;                                        -- vert_sync
			export_vga_r                   : out   std_logic_vector(7 downto 0);                     -- r
			export_vga_g                   : out   std_logic_vector(7 downto 0);                     -- g
			export_vga_b                   : out   std_logic_vector(7 downto 0);                     -- b
			export_ps2_kbclk               : inout std_logic                     := 'X';             -- kbclk
			export_ps2_kbdat               : inout std_logic                     := 'X';             -- kbdat
			export_ps2_mouseclk            : inout std_logic                     := 'X';             -- mouseclk
			export_ps2_mousedat            : inout std_logic                     := 'X';             -- mousedat
			export_ps2_out_port_a20_enable : out   std_logic;                                        -- a20_enable
			export_ps2_out_port_reset_n    : out   std_logic;                                        -- reset_n
			sd_dat_export                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			sd_cmd_export                  : inout std_logic                     := 'X';             -- export
			sd_clk_export                  : out   std_logic                                         -- export
		);
	end component system;

	u0 : component system
		port map (
			clk_sys_clk                    => CONNECTED_TO_clk_sys_clk,                    --             clk_sys.clk
			reset_sys_reset_n              => CONNECTED_TO_reset_sys_reset_n,              --           reset_sys.reset_n
			clk_vga_clk                    => CONNECTED_TO_clk_vga_clk,                    --             clk_vga.clk
			reset_vga_reset_n              => CONNECTED_TO_reset_vga_reset_n,              --           reset_vga.reset_n
			sdram_conduit_end_addr         => CONNECTED_TO_sdram_conduit_end_addr,         --   sdram_conduit_end.addr
			sdram_conduit_end_ba           => CONNECTED_TO_sdram_conduit_end_ba,           --                    .ba
			sdram_conduit_end_cas_n        => CONNECTED_TO_sdram_conduit_end_cas_n,        --                    .cas_n
			sdram_conduit_end_cke          => CONNECTED_TO_sdram_conduit_end_cke,          --                    .cke
			sdram_conduit_end_cs_n         => CONNECTED_TO_sdram_conduit_end_cs_n,         --                    .cs_n
			sdram_conduit_end_dq           => CONNECTED_TO_sdram_conduit_end_dq,           --                    .dq
			sdram_conduit_end_dqm          => CONNECTED_TO_sdram_conduit_end_dqm,          --                    .dqm
			sdram_conduit_end_ras_n        => CONNECTED_TO_sdram_conduit_end_ras_n,        --                    .ras_n
			sdram_conduit_end_we_n         => CONNECTED_TO_sdram_conduit_end_we_n,         --                    .we_n
			clk_sound_clk                  => CONNECTED_TO_clk_sound_clk,                  --           clk_sound.clk
			reset_sound_reset_n            => CONNECTED_TO_reset_sound_reset_n,            --         reset_sound.reset_n
			pio_input_export               => CONNECTED_TO_pio_input_export,               --           pio_input.export
			reset_only_ao486_reset         => CONNECTED_TO_reset_only_ao486_reset,         --    reset_only_ao486.reset
			pio_output_export              => CONNECTED_TO_pio_output_export,              --          pio_output.export
			export_sound_sclk              => CONNECTED_TO_export_sound_sclk,              --        export_sound.sclk
			export_sound_sdat              => CONNECTED_TO_export_sound_sdat,              --                    .sdat
			export_sound_xclk              => CONNECTED_TO_export_sound_xclk,              --                    .xclk
			export_sound_bclk              => CONNECTED_TO_export_sound_bclk,              --                    .bclk
			export_sound_dat               => CONNECTED_TO_export_sound_dat,               --                    .dat
			export_sound_lr                => CONNECTED_TO_export_sound_lr,                --                    .lr
			export_vga_clock               => CONNECTED_TO_export_vga_clock,               --          export_vga.clock
			export_vga_sync_n              => CONNECTED_TO_export_vga_sync_n,              --                    .sync_n
			export_vga_blank_n             => CONNECTED_TO_export_vga_blank_n,             --                    .blank_n
			export_vga_horiz_sync          => CONNECTED_TO_export_vga_horiz_sync,          --                    .horiz_sync
			export_vga_vert_sync           => CONNECTED_TO_export_vga_vert_sync,           --                    .vert_sync
			export_vga_r                   => CONNECTED_TO_export_vga_r,                   --                    .r
			export_vga_g                   => CONNECTED_TO_export_vga_g,                   --                    .g
			export_vga_b                   => CONNECTED_TO_export_vga_b,                   --                    .b
			export_ps2_kbclk               => CONNECTED_TO_export_ps2_kbclk,               --          export_ps2.kbclk
			export_ps2_kbdat               => CONNECTED_TO_export_ps2_kbdat,               --                    .kbdat
			export_ps2_mouseclk            => CONNECTED_TO_export_ps2_mouseclk,            --                    .mouseclk
			export_ps2_mousedat            => CONNECTED_TO_export_ps2_mousedat,            --                    .mousedat
			export_ps2_out_port_a20_enable => CONNECTED_TO_export_ps2_out_port_a20_enable, -- export_ps2_out_port.a20_enable
			export_ps2_out_port_reset_n    => CONNECTED_TO_export_ps2_out_port_reset_n,    --                    .reset_n
			sd_dat_export                  => CONNECTED_TO_sd_dat_export,                  --              sd_dat.export
			sd_cmd_export                  => CONNECTED_TO_sd_cmd_export,                  --              sd_cmd.export
			sd_clk_export                  => CONNECTED_TO_sd_clk_export                   --              sd_clk.export
		);

