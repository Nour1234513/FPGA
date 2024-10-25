library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity lab2_1 is 
port (
	sw : in std_logic_vector(5 downto 0);
	led1 : out std_logic;
	-- 0 to leds
	key_n : in std_logic_vector(1 downto 0)
);

end entity lab2_1;

architecture rtl of lab2_1 is 

	signal clk : std_logic;
	signal reset : std_logic;
	
	signal Inputs : std_logic_vector (3 downto 0);
	signal switch : std_logic_vector (1 downto 0);
begin 
	clk <= key_n(0);
	reset <= key_n(1);
	inputs <= (sw(3 downto 0));
	switch <= (sw(5 downto 4));
	process1 : process(clk,reset)
	begin
		if(rising_edge(clk)) then 
			case switch is 
			
				when "00" => 
					led1 <= sw(0);
				when "01" =>
					led1 <= sw(1);
				when "10" => 
					led1 <= sw(2);
				when others =>
					led1 <= sw(3);
			end case;
		end if;
		if reset = '0' then 
			led1 <='0';
		end if;
	end process process1;
end architecture rtl; 