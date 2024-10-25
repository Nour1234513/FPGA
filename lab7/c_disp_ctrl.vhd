library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	use ieee.std_logic_unsigned.all;
	
	
	
library work;
	use work.all;
	--use work.seven_seg_pkg.all;
	
entity c_disp_ctrl is 
port (
	clk 					:in std_logic; 
	reset					:in std_logic;
	current_dc 			:in std_logic_vector(7 downto 0);
	current_dc_update :in std_logic;
	
	hex1 					:out std_logic_vector (6 downto 0);
	hex2 					:out std_logic_vector (6 downto 0);
	hex3 					:out std_logic_vector (6 downto 0);
	
	transmit_data		:out std_logic_vector (7 downto 0);
	transmit_valid		:out std_logic;
	
	transmit_ready		:in std_logic 
);
end entity c_disp_ctrl;
architecture rtl of c_disp_ctrl is 


------------------------------------------------------
	type t_7seg_numbers is array (0 to 10) of std_logic_vector(6 downto 0);
        constant c_7seg_numbers: t_7seg_numbers := ("1000000", -- 0 "0"
                                                "1111001", -- 1 "1"
                                                "0100100", -- 2 "2"
                                                "0110000", -- 3 "3"
                                                "0011001", -- 4 "4"
                                                "0010010", -- 5 "5"
                                                "0000010", -- 6 "6"
                                                "1111000", -- 7 "7"
                                                "0000000", -- 8 "8"
                                                "0010000", -- 9 "9"
                                                "0111111"); -- 10 = "-"



    function fn_ascii_to_7seg(
        ascii_char : in std_logic_vector(7 downto 0))
        return std_logic_vector is
        variable v_return_vector: std_logic_vector(6 downto 0);
        variable v_ascii_char_natural : natural range 0 to 255;
    begin
        v_ascii_char_natural := to_integer(unsigned(ascii_char));

        case v_ascii_char_natural is
            when 48 => -- ASCII "0"
                v_return_vector := c_7seg_numbers(0);
            when 49 => -- ASCII "1"
                v_return_vector := c_7seg_numbers(1);
            when 50 => -- ASCII "2"
                v_return_vector := c_7seg_numbers(2);
            when 51 => -- ASCII "3"
                v_return_vector := c_7seg_numbers(3);
            when 52 => -- ASCII "4"
                v_return_vector := c_7seg_numbers(4);
            when 53 => -- ASCII "5"
                v_return_vector := c_7seg_numbers(5);
            when 54 => -- ASCII "6"
                v_return_vector := c_7seg_numbers(6);
            when 55 => -- ASCII "7"
                v_return_vector := c_7seg_numbers(7);
            when 56 => -- ASCII "8"
                v_return_vector := c_7seg_numbers(8);
            when 57 => -- ASCII "9"
                v_return_vector := c_7seg_numbers(9);
            when others =>
                v_return_vector := c_7seg_numbers(10); -- "-"
        end case;
        return v_return_vector;
    end function fn_ascii_to_7seg;
	 
	-----------------------------------------------------
	signal valid_out 				: std_logic;
	signal send_data 				: std_logic;
	signal ones 					: std_logic_vector (3 downto 0);
	signal tens						: std_logic_vector (3 downto 0);
	signal hundreds 				: std_logic_vector (3 downto 0);
	constant ascii_start_48 	: std_logic_vector := "00110000";
	type Byte_Array is array (0 to 4) of std_logic_vector(7 downto 0);
   signal myArray 								: Byte_Array;
	signal send_x 									: natural range 0 to 5;
	signal wait_one_clockCycle 				: boolean;
	signal first_valuable_nummber_detected : boolean;

begin 
	---------------------------
	myArray(4) <= "00001101";
	myArray(3) <= "00100101";
	---------------------------				
	bcd : entity work.bcd_decode_rom
	port map (
		clk                     => clk,
      reset                   => reset,-- active high reset

    
      input_vector            => current_dc,
      valid_in                => current_dc_update,
      ready                   => open, -- ready for data when high

      -- output result
      bcd_0                   => ones, -- ones
      bcd_1                   => tens, -- tens
      bcd_2                   => hundreds,-- hundreds
      valid_out               => valid_out-- Set high one clock cycle when bcd* is valid
	);
	
	p_main : process (clk,reset) 
	--------------------------------------
			variable ones_out 		:  std_logic_vector (7 downto 0 );
			variable tens_out 		:  std_logic_vector (7 downto 0 );
			variable hundreds_out 	:  std_logic_vector (7 downto 0 );
	---------------------------------------------------
	begin 
	
		
		
		if rising_edge (clk) then
		
			ones_out := ascii_start_48 + ones;
			tens_out := ascii_start_48 + tens;
			hundreds_out := ascii_start_48 + hundreds;
			
			if valid_out = '1' then 
			
					hex1 					<=  (fn_ascii_to_7seg(ones_out));
					hex2 					<=  (fn_ascii_to_7seg(tens_out));
					hex3 					<=  (fn_ascii_to_7seg(hundreds_out));
					------------------------------------------
					myArray(2) 			<= ones_out;
					myArray(1) 			<= tens_out;
					myArray(0) 			<= hundreds_out;
					---------------------------
					send_data 			<= '1';
					
					------------------------------------------
			end if;
			-------------------------------------------
				transmit_valid 		<= '0';
			if send_data = '1' then 
				if wait_one_clockCycle = false then 
				
					if transmit_ready = '1' then 
						------------------------------------------- start transmit bytes
						
						if myArray(send_x) = "00110000" 
							and first_valuable_nummber_detected = false
							and send_x < 2 then
							
							transmit_data 		<= "00100000";
						else 
							first_valuable_nummber_detected <= true;
							transmit_data <= myArray(send_x);
						end if;
					
						transmit_valid 		<= '1';
						send_x 					<= send_x + 1; 
						-----------------------------
						wait_one_clockCycle 	<= true;
						----------------------------- wait to see the change in transmit_ready 
						-------------------------------------------
						if send_x = 4 then 
							send_x 				<= 0;
							send_data 			<= '0';
							myArray(2) 			<= (others => '0');
							myArray(1) 			<= (others => '0');
							myArray(0) 			<= (others => '0');
							first_valuable_nummber_detected <= false;
						end if;
						--------------------------------------------- when sends end 
					end if;
					
					else wait_one_clockCycle <= false ;
				end if;
			end if;
			--------------------------------------- send data
		end if;
		
		if reset = '1' then 
		------------------------------------------
			hex1 						<= (others => '1');
			hex2 						<= (others => '1');
			hex3 						<= (others => '1');
			send_data 				<= '0';
			send_x 					<= 0;
			wait_one_clockCycle  <= false;
		------------------------------------------
		end if;	
	end process p_main;
end architecture rtl;