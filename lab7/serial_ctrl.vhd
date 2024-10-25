library ieee;
	use ieee.std_logic_1164.all;
	
entity serial_ctrl is 

port (
	clk 						: in std_logic;
	reset 					: in std_logic;
	received_data 			: in std_logic_vector(7 downto 0);
	received_data_valid 	: in std_logic;
	key_on 					: out std_logic;
	key_off 					: out std_logic;
	key_up 					: out std_logic;
	key_down 				: out std_logic
	
);

end entity serial_ctrl;

architecture rtl of serial_ctrl is 
	
begin 
	p_main : process(clk)
	begin 
		if rising_edge (clk) then
				key_off 	<= '0';
				key_on 	<= '0';
				key_up	<= '0';
				key_down <= '0';
			if received_data_valid = '1' then
				case received_data is
					when "00110000" => 
						key_off <= '1';
					when "00110001" => 
						key_on <= '1';
					when "01110101"  => 
						key_up <= '1';
					when "01010101" => 
						key_up <= '1';
					when "01100100"  =>
						key_down <= '1';
					when "01000100" =>
						key_down <= '1';
					when others =>
						key_off 	<= '0';
						key_on 	<= '0';
						key_up	<= '0';
						key_down <= '0';
					end case;
			end if;
			if reset = '1' then
				key_off 	<= '0';
				key_on 	<= '0';
				key_up	<= '0';
				key_down <= '0';
			end if;
		end if;
	end process p_main;
end architecture rtl;