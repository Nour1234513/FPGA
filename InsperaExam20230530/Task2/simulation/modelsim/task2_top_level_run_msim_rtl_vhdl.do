transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/InsperaExam20230530/Task2/task2_top_level.vhd}

