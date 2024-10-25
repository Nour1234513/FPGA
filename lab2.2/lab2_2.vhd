library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity lab2_2 is 
port (
	sw : in std_logic_vector(7 downto 0);
	led1 : out std_logic_vector(2 downto 0);
	key_n : in std_logic_vector(1 downto 0)
);

end entity lab2_2;

architecture rtl of lab2_2 is 

	signal clk : std_logic;
	signal reset : std_logic;

	signal value1 : unsigned (3 downto 0);
	signal value2 : unsigned (3 downto 0);
begin 
	clk <= key_n(0);
	reset <= key_n(1);
	value1 <= unsigned (sw(3 downto 0));
	value2 <= unsigned (sw(7 downto 4));
	
	process1 : process(clk,reset)
	begin
		if(rising_edge(clk)) then 
				if (value1>value2) then 
					led1 <= "001";
				elsif (value2>value1) then 
					led1 <= "100";
				else
					led1 <= "010";
			end if;
		end if;
		if reset = '0' then 
			led1 <= "000";
		end if;
	end process process1;
end architecture rtl; 