library ieee;
	use ieee.std_logic_1164.all;
library work;
	use work.all;
	
	
entity lab6_top_level is 
port (
	clk : in std_logic;
	sw : in std_logic;
	ledr : out std_logic_vector(9 downto 0);
	reset_n : in std_logic;
	rxTop : in std_logic
);

end entity lab6_top_level;

architecture rtl of lab6_top_level is 
-------------
	
	signal data : std_logic_vector (7 downto 0);
	signal data_valid : std_logic;
	signal serial_uart_test_port : std_logic_vector(9 downto 0);
	
	signal mux_data : std_logic_vector (11 downto 0);
	signal valid : std_logic;
--------------
begin 
	
	uart : entity work.serial_uart
	generic map (
		g_reset_active_state   =>'1',
      g_serial_speed_bps   => 11520,
      g_clk_period_ns      => 20,      -- 100 MHz standard clock
      g_parity             => 0)      -- 0 = no, 1 = odd, 2 = even
		-------------------- uart generic
	port map (
		clk => clk,
		reset => "not"(reset_n),
		rx => rxTop,
		tx => open,
		
		received_data => data,
		received_data_valid => data_valid,
		received_parity_error => open,
		received_error => open,
		
		transmit_ready => open,
		transmit_data_valid => '1',
		transmit_data => (others => '0'),
		
		test_port_counter => serial_uart_test_port
	);
	
	
	bcd : entity work.bcd_decode_rom 
	port map (
		clk                    	=> clk,
      reset                   => "not"(reset_n),

      -- input data interface
      input_vector            => data,
      valid_in                => data_valid,
      ready                   => open,  -- ready for data when high

      -- output resul
      bcd_0                   => mux_data(3 downto 0),
      bcd_1                   => mux_data(7 downto 4),
      bcd_2                   => mux_data(11 downto 8),
      valid_out               => valid
		); -- Set high one clock cycle when bcd* is valid
		
		debug : entity work.debug
		port map (
			clk 			=> clk,
			sw 			=> sw,
			serial_uart_test_port => serial_uart_test_port,
			valid 		=> valid,
			mux_data		=> mux_data,
			ledr 			=> ledr,
			reset_n 		=> reset_n
		);
		
	
end architecture rtl;