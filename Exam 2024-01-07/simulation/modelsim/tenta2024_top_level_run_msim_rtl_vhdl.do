transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/Exam 2024-01-07/pattern_detect.vhd}

