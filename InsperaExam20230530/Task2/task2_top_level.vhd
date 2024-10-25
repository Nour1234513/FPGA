library ieee;
	use ieee.std_logic_1164.all;
	
entity task2_top_level is 
port (
	clk 						: in std_logic;
	reset						: in std_logic;
	button_data 			: in std_logic_vector(3 downto 0);
	button_pressed_n 		: in std_logic;
	
	unlock					: out std_logic;
	led_wrong_code 		: out std_logic;
	led_unlocked			: out std_logic;
	led_locked				: out std_logic
);

end entity task2_top_level;

architecture rtl of task2_top_level is 
	type array_code is array (0 to 3) of std_logic_vector(3 downto 0);
	constant orginal_code : array_code  := ( x"1", x"2", x"3",x"4");
	signal bit_counter : natural range 0 to 4;
	signal empty_code_array : array_code;
	signal empty_code_array_full : boolean;
	signal led_wrong_code_enable : boolean;
	constant delay_5ms : natural := 500000;
	signal led_wrong_code_counter : natural range 0 to delay_5ms;
	
begin 
	p_main : process(clk , reset)
	begin 
		if reset = '1' then 
			empty_code_array <= (others => (others => '0'));
			bit_counter <= 0 ;
			led_locked <= '1';
			led_unlocked <= '0';
			led_wrong_code <= '0';
			unlock <= '0';
			led_wrong_code_enable <= false;
		elsif rising_edge(clk) then 
			----------------------------
			if led_wrong_code_enable then 
				led_wrong_code_counter <= led_wrong_code_counter +1;
				if led_wrong_code_counter = delay_5ms-1 then
					led_wrong_code_enable <= false;
					led_wrong_code_counter <= 0 ;
					led_wrong_code <= '0';
				end if;
			-----------------------------
			elsif button_pressed_n = '0' then 
				empty_code_array(bit_counter) <= button_data;
				bit_counter <= bit_counter +1 ;
				if bit_counter = 3 then 
					bit_counter <= 0;
					empty_code_array_full <= true;
				end if;
			end if;
			if empty_code_array_full then 
				empty_code_array_full <= false;
				if empty_code_array = orginal_code then 
					unlock <= '1';
					led_locked <= '0';
					led_unlocked <= '1';
				else 
					led_wrong_code_enable <= true;
					led_wrong_code <= '1';
				end if;
			end if;
			-----------------------5 ms led_wrong_code
		end if;
	end process p_main;
end architecture rtl;