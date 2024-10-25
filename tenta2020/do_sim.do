# Do script for testing Task 2 functionality
# Creating a clock with period 20 ns is written like this: 
#    force clk 0 0, 1 10 ns -r 20 ns
#
# Continue below

# Define clock and all inputs, reset active
force clk 0 0, 1 10 ns -r 20 ns
force reset_n 0
force do_sample 0
force data 0

#run a couple of clock cycles
run 100 ns

#release reset
force reset_n 1

#run a couple of clock cycles
run 100 ns
