library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
	
package seven_seg_pkg is
    -- Declaration part
    type t_7seg_numbers is array (16 downto 0) of std_logic_vector(6 downto 0);
        constant c_7seg_numbers: t_7seg_numbers := ("0111111", -- 0 "0"
                                                "0000110", -- 1 "1"
                                                "1011011", -- 2 "2"
                                                "1001111", -- 3 "3"
                                                "1100110", -- 4 "4"
                                                "1101101", -- 5 "5"
                                                "1111101", -- 6 "6"
                                                "0000111", -- 7 "7"
                                                "1111111", -- 8 "8"
                                                "1101111", -- 9 "9"
                                                "1110111", -- 10 = "A"
                                                "1111100", -- 11 = "b"
                                                "0111001", -- 12 = "C"
                                                "1011110", -- 13 = "d"
                                                "1111001", -- 14 = "E"
                                                "1110001", -- 15 = "F"
                                                "0111111"); -- 16 = "-"

    -- Declare functions
    function fn_ascii_to_7seg(
        ascii_char : in std_logic_vector(7 downto 0))
        return std_logic_vector;
end package seven_seg_pkg;

-- Package body
package body seven_seg_pkg is

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
            when 65 | 97 => -- ASCII "A" / "a"
                v_return_vector := c_7seg_numbers(10); -- "A"
            when 66 | 98 => -- ASCII "B" / "b"
                v_return_vector := c_7seg_numbers(11); -- "b"
            when 67 | 99 => -- ASCII "C" / "c"
                v_return_vector := c_7seg_numbers(12); -- "C"
            when 68 | 100 => -- ASCII "D" / "d"
                v_return_vector := c_7seg_numbers(13); -- "d"
            when 69 | 101 => -- ASCII "E" / "e"
                v_return_vector := c_7seg_numbers(14); -- "E"
            when 70 | 102 => -- ASCII "F" / "f"
                v_return_vector := c_7seg_numbers(15); -- "F"
            when others =>
                v_return_vector := c_7seg_numbers(16); -- "-"
        end case;

        return v_return_vector;
    end function fn_ascii_to_7seg;
end package body seven_seg_pkg;