
module system (
	clk_sys_clk,
	reset_sys_reset_n,
	clk_vga_clk,
	reset_vga_reset_n,
	sdram_conduit_end_addr,
	sdram_conduit_end_ba,
	sdram_conduit_end_cas_n,
	sdram_conduit_end_cke,
	sdram_conduit_end_cs_n,
	sdram_conduit_end_dq,
	sdram_conduit_end_dqm,
	sdram_conduit_end_ras_n,
	sdram_conduit_end_we_n,
	clk_sound_clk,
	reset_sound_reset_n,
	pio_input_export,
	reset_only_ao486_reset,
	pio_output_export,
	export_sound_sclk,
	export_sound_sdat,
	export_sound_xclk,
	export_sound_bclk,
	export_sound_dat,
	export_sound_lr,
	export_vga_clock,
	export_vga_sync_n,
	export_vga_blank_n,
	export_vga_horiz_sync,
	export_vga_vert_sync,
	export_vga_r,
	export_vga_g,
	export_vga_b,
	export_ps2_kbclk,
	export_ps2_kbdat,
	export_ps2_mouseclk,
	export_ps2_mousedat,
	export_ps2_out_port_a20_enable,
	export_ps2_out_port_reset_n,
	sd_dat_export,
	sd_cmd_export,
	sd_clk_export);	

	input		clk_sys_clk;
	input		reset_sys_reset_n;
	input		clk_vga_clk;
	input		reset_vga_reset_n;
	output	[12:0]	sdram_conduit_end_addr;
	output	[1:0]	sdram_conduit_end_ba;
	output		sdram_conduit_end_cas_n;
	output		sdram_conduit_end_cke;
	output		sdram_conduit_end_cs_n;
	inout	[31:0]	sdram_conduit_end_dq;
	output	[3:0]	sdram_conduit_end_dqm;
	output		sdram_conduit_end_ras_n;
	output		sdram_conduit_end_we_n;
	input		clk_sound_clk;
	input		reset_sound_reset_n;
	input	[7:0]	pio_input_export;
	input		reset_only_ao486_reset;
	output	[7:0]	pio_output_export;
	output		export_sound_sclk;
	inout		export_sound_sdat;
	output		export_sound_xclk;
	output		export_sound_bclk;
	output		export_sound_dat;
	output		export_sound_lr;
	output		export_vga_clock;
	output		export_vga_sync_n;
	output		export_vga_blank_n;
	output		export_vga_horiz_sync;
	output		export_vga_vert_sync;
	output	[7:0]	export_vga_r;
	output	[7:0]	export_vga_g;
	output	[7:0]	export_vga_b;
	inout		export_ps2_kbclk;
	inout		export_ps2_kbdat;
	inout		export_ps2_mouseclk;
	inout		export_ps2_mousedat;
	output		export_ps2_out_port_a20_enable;
	output		export_ps2_out_port_reset_n;
	inout	[3:0]	sd_dat_export;
	inout		sd_cmd_export;
	output		sd_clk_export;
endmodule
