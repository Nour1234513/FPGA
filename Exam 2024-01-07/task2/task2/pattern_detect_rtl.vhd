library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity pattern_detect is
   port(
      clk                     : in  std_logic;
      reset_n                 : in  std_logic;   -- active low reset
      -- Continue below...

      );
end entity pattern_detect;

architecture rtl of pattern_detect is

    -- SYNTAX HELP:
   -- convert from integer to 4 bit std_logic_vector:
   -- signal example_integer        : integer range 0 to 15;      signal example_4_bit_vector   : std_logic_vector(3 downto 0);
   -- ...      example_4_bit_vector    <= std_logic_vector(to_unsigned(example_integer,example_4_bit_vector'length));

   -- Convert to integer from 4 bit vector:
   -- example_integer         <= to_integer(unsigned(example_4_bit_vector));
