library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity word_decode is
port(
   clk            : in  std_logic;
   reset          : in  std_logic;    -- Active high reset
   -- Continue below
	received_data 	: in std_logic_vector (7 downto 0);
	received_data_valid: in std_logic;
	
	status_output 		: out std_logic;
	pulse_output 		: out	std_logic
);

end entity word_decode;

architecture rtl of word_decode is 
	type data_array is array (0 to 4) of std_logic_vector (7 downto 0);
	signal saved_data : data_array;
	signal counter : natural range 0 to 5;
	signal start_pulse : boolean;
	constant number_of_pulse : natural := 41;
	signal pulse_counter : natural range 0 to 43;
	signal reset_ram : boolean;
	
	
begin 
	p_main : process (clk , reset)
	begin 
		if rising_edge (clk) then 
			if received_data_valid = '1' then 
				saved_data(counter) <= received_data;
				counter <= counter +1;
				
			end if;
					if (saved_data(0) = x"6F" 
						and saved_data(1) = x"6E") then 
							--------------
							status_output <= '1';
							
							reset_ram <= true;
						---------;
					elsif (saved_data(0)= x"6F" 
						and saved_data(1) = x"66" 
						and saved_data(2) = x"66")	 then
						------------------
							status_output <= '0';
							
							reset_ram <= true;
						------------;
					elsif (saved_data(0)= x"70"  
						and saved_data(1) = x"75" 
						and saved_data(2) = x"6C" 
						and saved_data(3) = x"73" 
						and saved_data(4) = x"65")	then
							---------------------
							start_pulse <= true;
							pulse_output <= '1';
							reset_ram <= true;
					-------------------;
					elsif (not(saved_data(0) /= x"70" or saved_data(0) /= x"00")  
						and not (saved_data(1) /= x"75" or saved_data(1) /= x"00")
						and not (saved_data(2) /= x"6C"  or saved_data(2) /= x"00")
						and not (saved_data(3) /= x"73" or saved_data(3) /= x"00")
						and not (saved_data(4) /= x"65"	or saved_data(4) /= x"00")) then
						-----------------------
						reset_ram <= true;
						-----------------------
					
						-----------------
					----------------
					end if;
					if reset_ram then 
						saved_data(0) <=(others => '0');
						saved_data(1) <=(others => '0');
						saved_data(2) <=(others => '0');
						saved_data(3) <=(others => '0');
						saved_data(4) <=(others => '0');
						reset_ram <= false;
						counter <= 0;
					end if;
					if start_pulse then 
						pulse_counter <= pulse_counter +1;
						if pulse_counter = number_of_pulse then 
							start_pulse <= false;
							pulse_output <= '0';
						end if;
					end if ;
			
		end if ;
		if reset = '1' then 
			pulse_counter <= 0;
			status_output <= '0';
			pulse_output <= '0';
			reset_ram <= true;
			
		end if ;
	end process p_main;
end architecture rtl;








   -- SYNTAX HELP:
   -- convert from integer to 4 bit std_logic_vector:
   -- signal example_integer        : integer range 0 to 15;
   -- signal example_4_bit_vector   : std_logic_vector(3 downto 0);
   -- ...
   -- example_4_bit_vector    <= std_logic_vector(to_unsigned(example_integer,example_4_bit_vector'length));

   -- Convert to integer from 4 bit vector:
   -- example_integer         <= to_integer(unsigned(example_4_bit_vector));
