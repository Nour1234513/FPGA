library ieee;
	use ieee.std_logic_1164.all;
	
entity debug is 
port (
	clk : in std_logic;
	sw : in std_logic;
	serial_uart_test_port : in std_logic_vector(9 downto 0);
	valid : in std_logic;
	mux_data : in std_logic_vector(11 downto 0);
	ledr : out std_logic_vector(9 downto 0);
	reset_n : in std_logic
);

end entity debug;

architecture rtl of debug is 

	signal sw_r : std_logic;
	signal sw_r_2 : std_logic;
	
begin 
	p_debug : process(clk,reset_n)
		begin 
			if rising_edge(clk) then 
			------------------------------
				sw_r <= sw;
				sw_r_2 <= sw_r;
				----------------
			
				if sw_r_2 = '1' then 
					ledr <= serial_uart_test_port;
				else
					if valid = '1' then 
						ledr <=  mux_data(9 downto 0);
					end if;
				end if;
				-------------------
			end if;------------------- rising_edge
			
			if reset_n = '0' then 
				ledr <= (others => '0');
			end if;
			
		end process p_debug;
end architecture rtl;
