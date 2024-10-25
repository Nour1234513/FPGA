library ieee;
   use ieee.std_logic_1164.all;
library work;
	
	
entity top_level is 
port(
	clock_50_mhz : in std_logic;
	reset_n : in std_logic;
	rxTop : in std_logic;
	hex0 : out std_logic_vector (6 downto 0);
	LEDR : out std_logic_vector (9 downto 0)
);
end entity top_level;

architecture str of top_level is 

	signal data : std_logic_vector (7 downto 0);
	signal data_valid : std_logic ;
	signal error : std_logic;

begin
	
	LEDR (9 downto 2) <= (others => '0');
	LEDR(1) <= error;
	------------------------
	uart : entity work.serial_uart
	generic map (
		g_reset_active_state   =>'1',
      g_serial_speed_bps   => 9600,
      g_clk_period_ns      => 20,      -- 100 MHz standard clock
      g_parity             => 0)      -- 0 = no, 1 = odd, 2 = even
		-------------------- uart generic
	port map (
		clk => clock_50_mhz,
		reset => "not"(reset_n),
		rx => rxTop,
		tx => open,
		
		received_data => data,
		received_data_valid => data_valid,
		received_parity_error => open,
		received_error => error,
		
		transmit_ready => open,
		transmit_data_valid => '1',
		transmit_data => (others => '0')
		
	);
	--------------------- uart port
	---------------------
	heartbit : entity work.lab3 
	port map(
	reset_n  => reset_n,
	led_r => LEDR(0),
	clock_50 => clock_50_mhz
	);
	----------------------  heartbit
	----------------------
	display :  entity work.Display_ASCII_Number
	port map (
		ready => data_valid,
		ASCII_Data => data,
		segg => hex0,
		reset_n => reset_n,
		clk => clock_50_mhz
	);
	
	------------------- 7 segg

end architecture str;