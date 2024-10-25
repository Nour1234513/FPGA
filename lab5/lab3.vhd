library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
port(
	clock_50 : in std_logic; -- 50 MHz clock
	reset_n : in std_logic;
	led_r : out std_logic
	
	);
	
end entity lab3;

architecture rtl of lab3 is

	-- Constant and type declarations
	constant c_500ms_count_max : integer := 25;--000000;
	-- Internal signal declarations
	signal clk : std_logic;
	signal counter_500ms : integer range 0 to c_500ms_count_max+1;
	signal tick : std_logic;
	signal led : std_logic;
	signal reset_n_r : std_logic;
	signal reset_n_2r : std_logic;
	
begin
	
	led_r <= led;
	clk <= clock_50;
	----------------------------------
	p_doubleRegister : process(clk)
	begin 
		if rising_edge(clk) then 
			reset_n_r <= reset_n;
			reset_n_2r <= reset_n_r;
		end if;
	end process p_doubleRegister;
	----------------------------------double register
	p_tick : process(clk, reset_n_2r)
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
		if reset_n_2r = '0' then 
			counter_500ms <= 0 ;
			tick <= '0';
		end if ;
	end process p_tick;
	------------------------------- p_tick
	------------------------------
	p_toggle : process(clk, reset_n_2r)
	begin
	if rising_edge(clk) then 
		if tick = '1' then 
		led <= not led;
		end if;
	end if ;	
	if reset_n_2r = '0'  then
		led <= '0';
	end if ;
	end process p_toggle;
	------------------------- p_toggle
end architecture rtl;
