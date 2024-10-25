--=================================================================
--
-- Testbench Top
--
-- Testbench for Pattern Gen Exam Question
--
--    2023-05-23  Kent Abrahamsson
--                   First revision.
--
----=================================================================
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

library work;

library std;
   use std.textio.all;

entity testbench_top is

end entity testbench_top;

architecture bhv of testbench_top is

   -- Type and constant declarations
   constant c_test_timeout_cycles               : integer   := 870*12; -- ~12 bit times
   constant c_test_cases                        : integer   := 4;
   constant c_out_a_p1                          : std_logic_vector(7 downto 0)   := "00110100";
   constant c_out_b_p1                          : std_logic_vector(7 downto 0)   := "00101100";
   constant c_out_c_p1                          : std_logic_vector(7 downto 0)   := "00010100";

   constant c_out_a_p2                          : std_logic_vector(7 downto 0)   := "00010100";
   constant c_out_b_p2                          : std_logic_vector(7 downto 0)   := "00011100";
   constant c_out_c_p2                          : std_logic_vector(7 downto 0)   := "00100100";

   constant c_115200_bps                        : time := 8681 ns;
   constant c_serial_transmission_bit_time      : time := c_115200_bps;
   constant c_ascii_1                           : std_logic_vector(7 downto 0)   := X"31";
   constant c_ascii_2                           : std_logic_vector(7 downto 0)   := X"32";
   constant c_ascii_a_lc                        : std_logic_vector(7 downto 0)   := X"61";
   constant c_ascii_a_uc                        : std_logic_vector(7 downto 0)   := X"41";

   -- Clock and reset generation
   signal clk                          : std_logic := '0';
   signal reset_n                      : std_logic := '0';
   signal tb_reset                     : std_logic := '1';
   signal kill_clock                   : std_logic := '0';

   -- Signals for p_serial_send process
   signal send_serial                  : std_logic;
   signal serial_byte2send             : std_logic_vector(7 downto 0);
   signal serial_byte2send_save        : std_logic_vector(7 downto 0);
   signal serial_send_busy             : std_logic;
   signal serial_bit_cnt               : natural range 0 to 8;
   signal serial_send_tx               : std_logic;

   -- Signals for main test process
   signal test_case                    : integer;
   signal test_errors                  : integer;

   -- signals for receive timeout process
   signal test_timeout_en              : std_logic;
   signal test_timeout_count           : integer range 0 to c_test_timeout_cycles;
   signal test_timeout                 : std_logic;

   -- Signals for DUT
   signal fpga_rx                      : std_logic;
   signal out_a                        : std_logic;
   signal out_b                        : std_logic;
   signal out_c                        : std_logic;

   -- Signals for pattern check process
   signal out_a_shreg                  : std_logic_vector(7 downto 0)   := (others => '0');
   signal out_b_shreg                  : std_logic_vector(7 downto 0)   := (others => '0');
   signal out_c_shreg                  : std_logic_vector(7 downto 0)   := (others => '0');
   signal out_shreg_comb               : std_logic_vector(7 downto 0)   := (others => '0');
   signal pattern_1_ok                 : std_logic;
   signal pattern_2_ok                 : std_logic;
   signal unknown_pattern              : std_logic;

   procedure pr_write(v_input_str : in string) is
      variable v_line : line;
   begin
      write(v_line,v_input_str);
      writeline(OUTPUT, v_line);
   end procedure pr_write;

begin -- architecture

   p_clk_gen : process
   begin
      clk          <= '0';
      wait for 100 ns;
      clk          <= '1';
      wait for 5 ns;
      clk          <= '0';
      wait for 30 ns;
      clk          <= '1';
      wait for 20 ns;
      clk          <= '0';
      wait for 5 ns;
      clk          <= '1';
      wait for 5 ns;
      while ( kill_clock = '0' ) loop
         clk          <= not clk;
         wait for 5 ns;
      end loop;
      -- wait forever;
      wait;
   end process p_clk_gen;

   p_reset_gen : process
      variable v_reset_cnt    : integer := 50;
   begin
      -- Set reset active
      reset_n           <= '0';
      tb_reset          <= '1';
      while v_reset_cnt > 0 loop
         v_reset_cnt    := v_reset_cnt - 1;
         wait until clk = '1';
      end while;
      wait until clk = '1';
      -- Set reset inactive
      reset_n           <= '1';
      wait for 100 ns;
      wait until clk = '1';
      tb_reset          <= '0';
      wait; -- wait forever
   end process p_reset_gen;

   p_serial_send : process
   begin
      serial_send_busy        <= '0';
      serial_send_tx          <= '1';
      while (kill_clock = '0') loop
         wait until kill_clock = '1' or send_serial = '1';
         if kill_clock = '1' then
            -- Wait forever
            wait;
         else
            serial_send_busy        <= '1';
            serial_bit_cnt          <= 0;
            -- Send one byte
            serial_byte2send_save   <= serial_byte2send;
            -- Start bit
            serial_send_tx          <= '0';
            wait for c_serial_transmission_bit_time;
            while serial_bit_cnt <= 7 loop
               serial_send_tx          <= serial_byte2send_save(serial_bit_cnt);
               serial_bit_cnt          <= serial_bit_cnt + 1;
               wait for c_serial_transmission_bit_time;
            end loop;
            -- Stop bit
            serial_send_tx          <= '1';
            wait for c_serial_transmission_bit_time;
            serial_send_busy        <= '0';

      end loop;

      --Wait forever
      wait;

   end process;

   fpga_rx  <= serial_send_tx;

   p_pattern_check :process(clk)
   begin
      if rising_edge(clk) then
         pattern_1_ok      <= '0';
         pattern_2_ok      <= '0';
         unknown_pattern   <= '0';
         if out_a = '0' or out_a = '1' then
            out_a_shreg       <= out_a_shreg(out_a_shreg'high-1 downto 0) & out_a;
         end if;
         if out_b = '0' or out_b = '1' then
            out_b_shreg       <= out_b_shreg(out_b_shreg'high-1 downto 0) & out_b;
         end if;
         if out_c = '0' or out_c = '1' then
            out_c_shreg       <= out_c_shreg(out_c_shreg'high-1 downto 0) & out_c;
         end if;
         if out_shreg_comb(7 downto 5) = '001' then
            if out_a_shreg = c_out_a_p1 and out_b_shreg = c_out_b_p1 and out_c_shreg = c_out_c_p1 then
               pr_write(" > Pattern 1 was received...");
               pattern_1_ok      <= '1';
            elsif out_a_shreg = c_out_a_p2 and out_b_shreg = c_out_b_p2 and out_c_shreg = c_out_c_p2 then
               pr_write(" > Pattern 2 was received...");
               pattern_2_ok      <= '1';
            else
               pr_write(" > ERROR! Unknown pattern was received!");
               unknown_pattern   <= '1';
            end if;
         end if;
      end if;
   end process p_pattern_check;

   out_shreg_comb <= out_a_shreg or out_b_shreg or out_c_shreg;

   -- Main test process
   p_main_test : process
      variable v_init_wait_ns    : integer := 200;
   begin
      -- Set startup values
      kill_clock              <= '0';
      test_timeout_en         <= '0';
      test_case               <= 1;
      test_errors             <= 0;
      send_serial             <= '0';
      serial_byte2send        <= (others => '0');
      pr_write("Simulation starts");
      wait for 1 ns;
      -- wait until reset is released
      wait until tb_reset = '0';
      pr_write("Testbench Reset is released!");
      pr_write("Starting DUT tests.");
      pr_write(" ");

      --===========================================================================
      -- Test DUT here (suggestion) or by using other test method
      --===========================================================================

      while test_case <= c_test_cases loop

         case test_case is
            when 1 =>
               -- Test sending 1
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Sending ASCII character: 1 ");

               serial_byte2send        <= c_ascii_1;
               send_serial             <= '1';
               wait until serial_send_busy = '1';
               send_serial             <= '0';
               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_1_ok = '1' or
                           pattern_2_ok = '1' or
                           unknown_pattern = '1';
               if pattern_1_ok = '1' then
                  pr_write(" > Pattern 1 was received as expected!!!");
               else
                  pr_write("   ERROR: Pattern 1 was not received as expected!!!");
                  test_errors             <= test_errors + 1;
               end if;

            when 2 =>
               -- Test sending 2
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Sending ASCII character: 2 ");

               serial_byte2send        <= c_ascii_2;
               send_serial             <= '1';
               wait until serial_send_busy = '1';
               send_serial             <= '0';
               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_1_ok = '1' or
                           pattern_2_ok = '1' or
                           unknown_pattern = '1';
               if pattern_2_ok = '1' then
                  pr_write(" > Pattern 2 was received as expected!!!");
               else
                  pr_write("   ERROR: Pattern 2 was not received as expected!!!");
                  test_errors             <= test_errors + 1;
               end if;

            when 3 =>
               -- Test sending unknown character
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Sending ASCII character: a ");

               serial_byte2send        <= c_ascii_a_lc;
               send_serial             <= '1';
               wait until serial_send_busy = '1';
               send_serial             <= '0';
               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_1_ok = '1' or
                           pattern_2_ok = '1' or
                           unknown_pattern = '1';
               if test_timeout = '1' then
                  pr_write(" > Test timed out as expected !!!");
               else
                  pr_write("   ERROR: Got unexpected data!");
                  test_errors             <= test_errors + 1;
               end if;

            when 4 =>
               -- Test sending unknown character
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Sending ASCII character: A ");

               serial_byte2send        <= c_ascii_a_uc;
               send_serial             <= '1';
               wait until serial_send_busy = '1';
               send_serial             <= '0';
               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_1_ok = '1' or
                           pattern_2_ok = '1' or
                           unknown_pattern = '1';
               if test_timeout = '1' then
                  pr_write(" > Test timed out as expected !!!");
               else
                  pr_write("   ERROR: Got unexpected data!");
                  test_errors             <= test_errors + 1;
               end if;

            when others =>
               pr_write("   TESTBENCH ERROR: Unknown test case!");
               test_errors             <= test_errors + 1;

            end case;

         pr_write(" ");
         while serial_send_busy = '1' loop
            wait for 100 ns;
         end loop;
         test_case               <= test_case + 1;
         test_timeout_en         := '0';
         wait for 100 ns;
         wait until clk = '1';

      end loop;

      wait for 1 us;
      pr_write("Simulation ends... with " & integer'image(test_errors) & " errors.");

      -- Kill clock and wait forever.
      kill_clock           <= '1';
      wait;
   end process p_main_test;

   -- Instantiate DUT
   i_dut_pattern_gen : entity work.pattern_gen_top
      port map(
         clk                     => clk,
         reset_n                 => reset_n,
         -- Continue below...
         fpga_rx                 => fpga_rx,

         -- Output signals
         out_a                   => out_a,
         out_b                   => out_b,
         out_c                   => out_c);

   p_test_timeout : process(clk)
   begin
      if rising_edge(clk) then
         test_timeout               <= '0';
         if test_timeout_en == '1' then
            -- decrement timeout counter if timeout is enabled
            if test_timeout_count > 0 then
               test_timeout_count         <= test_timeout_count - 1;
            else
               -- zero reached set timeout
               test_timeout               <= '1';
               if test_timeout = '0' then
                  pr_write(" > Test timeout !");
               end if;
            end if;
         else
            test_timeout_count         <= c_test_timeout_cycles;
         end if;
      end if;
   end process p_test_timeout;

end architecture bhv;