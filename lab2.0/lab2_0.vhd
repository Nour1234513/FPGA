library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity lab2_0 is 
port(
	sw : in std_logic_vector(5 downto 0);
	led : out std_logic_vector(3 downto 0);
	key_n : in std_logic_vector(1 downto 0)
);
end entity lab2_0;

architecture rtl of lab2_0 is 
	signal clk : std_logic;
	signal reset_n : std_logic;
	signal value1 : signed (2 downto 0);
	signal value2 : signed (2 downto 0 );
	signal sum : signed (3 downto 0);
	
	begin
	clk <= key_n(0);
	reset_n <= key_n(1);
	value1 <= signed(sw(2 downto 0));
	value2 <= signed(sw(5 downto 3));
	led <= std_logic_vector(sum);
	process1 : process(clk,reset_n)
		begin
			if(rising_edge(clk)) then 
				sum <= ('0' & value1) + (value2);
			end if;
			if reset_n = '0' then 
				sum <= (others => '0'); 
			end if ;
		end process process1;
	end architecture rtl;
