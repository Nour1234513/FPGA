library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity pattern_gen_3_input is
   port(
      clk                     : in  std_logic;
      reset_n                 : in  std_logic;
      -- Control interface
      pattern_a               : in  std_logic;
      pattern_b               : in  std_logic;
      pattern_c               : in  std_logic;
      busy                    : out std_logic;

      -- Output signals
      out_a                   : out std_logic;
      out_b                   : out std_logic;
      out_c                   : out std_logic;
      out_d                   : out std_logic);
end entity pattern_gen_3_input;

-- Continue below...
architecture rtl of pattern_gen_3_input is

   -- SYNTAX HELP:
   --
   -- create own defined type
   -- type t_main_state is (s_idle, s_state1, s_state2, ...);
   --
   -- convert from integer to 4 bit std_logic_vector:
   -- signal example_integer        : integer range 0 to 15;
   -- signal example_4_bit_vector   : std_logic_vector(3 downto 0);
   -- ...
   -- example_4_bit_vector    <= std_logic_vector(to_unsigned(example_integer,example_4_bit_vector'length));

   -- Convert to integer from 4 bit vector:
   -- example_integer         <= to_integer(unsigned(example_4_bit_vector));

end architecture rtl;