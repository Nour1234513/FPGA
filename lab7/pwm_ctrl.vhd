library	ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.numeric_std.all;
	
entity pwm_ctrl is 
generic (
	clk_period 			: natural := 20
);
port (
	clk 					: in std_logic;
	
	led						:out std_logic;
	reset 					: in std_logic;
	----------------------------------
	key_on_A 				: in std_logic;
	key_off_A				: in std_logic;
	key_up_A 				: in std_logic;
	key_down_A 				: in std_logic;
	----------------------------------
	key_on_C 				: in std_logic;
	key_off_C				: in std_logic;
	key_up_C 				: in std_logic;
	key_down_C 				: in std_logic;
	----------------------------------
	current_dc 				: out std_logic_vector(7 downto 0);
	current_dc_update		: out std_logic
);
end entity pwm_ctrl;

architecture rtl of pwm_ctrl is
	type t_pwm_state is (pwm_on,pwm_off,pwm_up,pwm_down,pwm_idel,pwm_refresh_dc);
	constant cnt_max 				: natural := 50000;
	signal duty_cycle 			: natural range 0 to 100;
	signal previous_duty_cycle : natural range 0 to 100;
	signal pwm_state 				: t_pwm_state;
	signal pwm_counter 			: natural range 0 to cnt_max+1;
	signal led_on_off 			: std_logic;
	--signal duty_cycle 			: natural range 0 to 100;
	--signal previous_duty_cycle : natural range 0 to 100;
	
	
begin
	current_dc <= std_logic_vector(to_unsigned(duty_cycle,current_dc'length));
	led <= led_on_off;
	p_main : process(clk,reset)
	-----------------------------------
		
		variable pwm_active :	boolean ;
		
	-----------------------------------------
	begin
	----------------------------------------------------------
	---------------------------
		if rising_edge( clk ) then 
			--current_dc_update <= '0';
			if (key_on_A = '1' or  key_on_C = '1') then
				pwm_state <= pwm_on;
				
				---------------------------on
			elsif (key_off_A = '1' or  key_off_C = '1') then
				pwm_state <= pwm_off;
				
				------------------------------ off
			elsif (key_up_A = '1' or  key_up_C = '1') then
				pwm_state <= pwm_up;
			
			-------------------------------------------up
			elsif (key_down_A = '1' or  key_down_C = '1') then
				pwm_state <= pwm_down;
				--------------------------------------------down
			end if;
			---------------------------------- buttons
			-------------------------------
			case pwm_state is 
			------------------------------------
			when pwm_on =>
				duty_cycle <= previous_duty_cycle;
				pwm_state <= pwm_refresh_dc;
				pwm_counter <= 0 ;
				pwm_active := true;
			-------------------------------------
			when pwm_off => 
				duty_cycle <= 0;
				pwm_state <= pwm_refresh_dc;
				pwm_active := false;
				led_on_off <= '0';
				previous_duty_cycle <= duty_cycle;
			-------------------------------------	
			when pwm_up =>
				if not pwm_active then 
					duty_cycle <= 10;
					pwm_active := true;
					pwm_counter <= 0;
				elsif duty_cycle + 1 <= 100 then 
					duty_cycle <= duty_cycle + 1;
				end if;
				pwm_state <= pwm_refresh_dc;
				
			-------------------------------------	
			when pwm_down => 
				if duty_cycle -1 >= 10 then 
					duty_cycle <= duty_cycle -1;
					pwm_state <= pwm_refresh_dc;
				end if;
			-------------------------------------	
			when pwm_refresh_dc => 
				current_dc_update <= '1';
				pwm_state <= pwm_idel;
			-------------------------------------	
			when others =>
				current_dc_update <= '0';
			-------------------------------------
			end case ;
			-------------------------------------
			if pwm_active then
			-------------------------------------
				pwm_counter <= pwm_counter + 1;
				if pwm_counter = cnt_max then 
					pwm_counter <= 0 ;
				end if;
				if	((cnt_max*duty_cycle)/100) >= pwm_counter then
					led_on_off 				<= '1';
					
				else led_on_off 			<= '0';
				end if;
				---------------------------------------------pwm 
			end if;
		end if;
		------------------------------------------
		
		---------------------- update duty_cycle when any change happen
		if reset = '1' then 
		
				duty_cycle 					<= 0;
				previous_duty_cycle 		<= 100;
				pwm_state 					<= pwm_idel;
				led_on_off 					<= '0';
				pwm_active 					:= false;
				current_dc_update 		<= '1';
		end if;
		------------------
	end process p_main;
end architecture rtl;