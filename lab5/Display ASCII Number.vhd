library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity display_ASCII_Number is

port (
	ASCII_Data : in std_logic_vector(7 downto 0);
	segg : out std_logic_vector(6 downto 0);
	ready : in std_logic;
	reset_n : std_logic;
	clk : std_logic
);

end entity display_ASCII_Number;

architecture rtl of display_ASCII_Number is 

	signal nummber : std_logic_vector(6 downto 0);
	signal data :integer;
	signal reset_n_r : std_logic;
	signal reset_n_2r : std_logic;
	
begin 
	
	data <= to_integer(unsigned(ASCII_Data));
	--------------------------------
	
	----------------------------------
	p_doubleRegister : process(clk)
	begin 
		if rising_edge(clk) then 
			reset_n_r <= reset_n;
			reset_n_2r <= reset_n_r;
		end if;
	end process p_doubleRegister;
	----------------------------------double register
	p_main : process (clk,reset_n_2r)
	begin
		if rising_edge(clk) then 
		-------------------------
			if ready = '1' then 
				case data is
					when 16#30# =>
						nummber <= "1000000";
					when 16#31# =>
						nummber <= "1111001";
					when 16#32# =>
						nummber <= "0100100";
					when 16#33# =>
						nummber <= "0110000";
					when 16#34# =>
						nummber <= "0011001";
					when 16#35# =>
						nummber <= "0010010";
					when 16#36# =>
						nummber <= "0000010";
					when 16#37# =>
						nummber <= "0110000";
					when 16#38# =>
						nummber <= "0000000";
					when 16#39# =>
						nummber <= "0110000";
					when others =>
						nummber <= "0111111";
				end case;
				else 
					segg <= nummber;
			end if ;
			--------------- show the ascii nummber
			
		end if; -------- rising_edge
		-------------------
			if reset_n_2r = '0' then 
				nummber <= (others => '1');
			end if;
			------------ reset
				
	end process p_main;
end architecture rtl;
