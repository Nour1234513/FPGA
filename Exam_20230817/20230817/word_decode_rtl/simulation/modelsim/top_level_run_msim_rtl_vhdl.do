transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/Exam_20230817/20230817/word_decode_rtl/word_decode_rtl.vhd}

