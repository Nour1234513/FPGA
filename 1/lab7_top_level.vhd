library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
library work;
	use work.all;

	

	
entity lab7_top_level is 
generic(
	g_simulation 	: boolean := false
);
port(
	clock_50 		: in std_logic;
	key_n 			: in std_logic_vector(3 downto 0);
	fpga_in_rx 		: in std_logic;
	fpga_out_tx		: out std_logic;
	ledr				: out std_logic_vector(9 downto 0);
	ledg				: out std_logic_vector(7 downto 0);
	hex0_n			: out std_logic_vector(6 downto 0);
	hex1_n			: out std_logic_vector(6 downto 0);
	hex2_n			: out std_logic_vector(6 downto 0);
	hex3_n			: out std_logic_vector(6 downto 0)
);

end entity lab7_top_level;

architecture rtl of lab7_top_level is 
--------------------
	signal key_off_A 			: std_logic;
	signal key_on_A 				: std_logic;
	signal key_up_A 				: std_logic;
	signal key_down_A 			: std_logic;
	---------------------------------------
	signal key_off_C 			: std_logic;
	signal key_on_C				: std_logic;
	signal key_up_C 				: std_logic;
	signal key_down_C 			: std_logic;
	--------------------------------
	signal clk_50_pll 		: std_logic;
	signal pll_locked			: std_logic;
	signal pll_reset_out		: std_logic;
	signal pll_reset_out_n	: std_logic;
	signal pll_startup_reset: std_logic;
	
----------------double register
	signal received_data 	: std_logic_vector(7 downto 0);
	signal received_data_valid : std_logic;
----------------------------------
begin
	
		------------------------------------

   ledr(9 downto 2)     <= (others => '0');

   b_gen_pll : if (not g_simulation) generate
		-- Instance of PLL
      i_startup_reset : entity work.startup_reset
         generic map(
            g_reset_hold_clk     => 1023)
         port map(
            clk                  => clock_50,
            startup_reset_out    => pll_startup_reset,
            startup_reset_out_n  => open);

		i_altera_pll :  entity work.pll_cycloneV
		port map(
			refclk   => clock_50, 	         -- refclk.clk   
			rst      => pll_startup_reset,   -- reset.reset  
			outclk_0 => open,			         -- 25MHz clock  
			outclk_1 => clk_50_pll,		         -- 50MHz clock  
			outclk_2 => open,			         -- outclk2.clk  
			locked   => pll_locked);         -- locked.export

      i_reset_ctrl : entity work.reset_ctrl
      generic map(
         g_reset_hold_clk  => 127)
      port map(
         clk         => clk_50_pll,
         reset_in    => '0',
         reset_in_n  => pll_locked, -- reset active if PLL is not locked

         reset_out   => pll_reset_out,
         reset_out_n => open);
   end generate;

   b_sim_clock_gen : if g_simulation generate
      clk_50_pll   <= clock_50;
      p_internal_reset : process
      begin
         pll_reset_out    <= '1';
         wait until clock_50 = '1';
         wait for 1 us;
         wait until clock_50 = '1';
         pll_reset_out    <= '0';
         wait;
      end process p_internal_reset;
   end generate;
	--------------------------------------------------
	
	-----------------------------
	key_ctrl : entity work.key_ctrl 
	port map (
		clk 			=> clk_50_pll,
		key_n 		=> key_n,
		key_on 		=> key_on_A,
		key_off 		=> key_off_A,
		key_up 		=> key_up_A,
		key_down 	=> key_down_A
	);
	----------------------------- key ctrl
	serial_ctrl : entity work.serial_ctrl
	port map (
		clk 						=> clk_50_pll,
		reset 					=> pll_reset_out,
		received_data 			=> received_data,
		received_data_valid 	=> received_data_valid,
		key_on 					=> key_on_C,
		key_off 					=> key_off_C,
		key_up 					=> key_up_C,
		key_down 				=> key_down_C
	);
	---------------------------------
	uart : entity work.serial_uart
	generic map (
		g_reset_active_state   =>'1',
      g_serial_speed_bps   => 9600,
      g_clk_period_ns      => 20,      -- 100 MHz standard clock
      g_parity             => 0)      -- 0 = no, 1 = odd, 2 = even
		-------------------- uart generic
	port map (
		clk => clk_50_pll,
		reset => pll_reset_out,
		rx => fpga_in_rx,
		tx => fpga_out_tx,
		
		received_data => received_data,
		received_data_valid => received_data_valid,
		received_parity_error => open,
		received_error => ledr(1),
		
		transmit_ready => open,
		transmit_data_valid => '1',
		transmit_data => (others => '0')
		
	);
	pwm : entity work.pwm_ctrl
	generic map (
		clk_period 			=> 20
	)
	port map (
		clk 						=> clk_50_pll,
		
		led						=> ledr(0),
		
		reset 					=> pll_reset_out,
		
		key_on_A 				=> key_on_A,
		key_off_A				=> key_off_A,
		key_up_A 				=> key_up_A,
		key_down_A 				=> key_down_A,
		
		key_on_C 				=> key_on_C,
		key_off_C				=> key_off_C,
		key_up_C 				=> key_up_C,
		key_down_C 				=> key_down_C
	);
	
end architecture rtl;