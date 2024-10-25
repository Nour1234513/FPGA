library	ieee;
	use ieee.std_logic_1164.all;
	
entity pwm_ctrl is 
generic (
	clk_period 			: natural := 20
);
port (
	clk 					: in std_logic;
	
	led						:out std_logic;
	reset 					: in std_logic;
	key_on_A 				: in std_logic;
	key_off_A				: in std_logic;
	key_up_A 				: in std_logic;
	key_down_A 				: in std_logic;
	
	key_on_C 				: in std_logic;
	key_off_C				: in std_logic;
	key_up_C 				: in std_logic;
	key_down_C 				: in std_logic
);
end entity pwm_ctrl;

architecture rtl of pwm_ctrl is
	type t_pwm_state is (pwm_on,pwm_off);
	
	signal duty_cycle 	: natural range 0 to 100;
	signal previous_duty_cycle : natural range 10 to 100;
	signal pwm_state 		: t_pwm_state;
	signal pwm_counter 	: natural range 0 to (1000000/clk_period)+1;
	signal led_on_off 	: std_logic;
begin
	led <= led_on_off;
	p_main : process(clk,reset)
	begin
	---------------------------
		if rising_edge( clk ) then 
			if key_on_A = '1' or  key_on_C = '1' then
				duty_cycle <= previous_duty_cycle;
				pwm_state <= pwm_on;
				---------------------------on
			elsif key_off_A = '1' or  key_off_C = '1' then
				duty_cycle <= 0;
				pwm_state <= pwm_off;
				------------------------------ off
			elsif key_up_A = '1' or  key_up_C = '1' then
				if pwm_state = pwm_off then 
					pwm_state <= pwm_on;
					duty_cycle <= 10;
				elsif duty_Cycle + 1 <= 100 then
					duty_cycle <= duty_cycle + 1;
				end if;
			-------------------------------------------	up
			elsif key_down_A = '1' or  key_down_C = '1' then
				if pwm_state = pwm_on then 
					if duty_Cycle - 1 >= 10 then
						duty_cycle <= duty_cycle - 1;
					end if;
				end if;
				-------------------------------------------- down
			end if;
			if pwm_state = pwm_on then 
				pwm_counter <= pwm_counter +1 mod pwm_counter;
				if	pwm_counter =	((pwm_counter*duty_Cycle)/100) then
					led_on_off <= not led_on_off;
				end if;
			end if;
		end if;
		----------------------
		if reset = '1' then 
				duty_cycle <= 0;
				previous_duty_cycle <= 100;
				led_on_off <= '0';
			end if;
		------------------
	end process p_main;
end architecture rtl;