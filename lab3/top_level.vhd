library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
port(
	clock_50 : in std_logic; -- 50 MHz clock
	--sw : in std_logic_vector(9 downto 0);
	key_n : in std_logic_vector(3 downto 0);
	led_r : out std_logic_vector(9 downto 0)
	--ledg : out std_logic_vector(7 downto 0)
	);
	
end entity lab3;

architecture rtl of lab3 is

	-- Constant and type declarations
	constant c_500ms_count_max : integer := 25;--000000;
	-- Internal signal declarations
	signal clk : std_logic;
	signal reset_n : std_logic;
	signal counter_500ms : integer range 0 to c_500ms_count_max+1;
	signal tick : std_logic;
	signal led : std_logic;
	
begin

	-- Assign internal signals from entity inputs
	-- Active low reset reset from KEY0
	reset_n <= key_n(0);
	-- turn off unused LED outputs
	led_r(9 downto 1) <= (others => '0');
	led_r(0) <= led;
	clk <= clock_50;
	
	p_tick : process(clk, reset_n)
	begin
		-- fill in tick process functionality here
		if rising_edge(clk) then 
			counter_500ms <= counter_500ms + 1;
			tick <= '0';
			if counter_500ms = c_500ms_count_max then 
				tick <= '1';
				counter_500ms <= 0;
			end if;
		end if; 
		if reset_n = '0' then 
			counter_500ms <= 0 ;
			tick <= '0';
		end if ;
	end process p_tick;
	
	p_toggle : process(clk, reset_n)
	begin
	-- fill in toggle process functionality here
	if rising_edge(clk) then 
		if tick = '1' then 
		led <= not led;
		end if;
	end if ;	
	if reset_n = '0'  then
		led <= '0';
	end if ;
	end process p_toggle;
	
end architecture rtl;
