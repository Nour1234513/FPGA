transcript on
if ![file isdirectory lab7_top_level_iputf_libs] {
	file mkdir lab7_top_level_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/cycloneV_pll_sim/cycloneV_pll.vho"

vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/seven_seg_pkg.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/bcd_decode_rom_rtl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/serial_uart_rtl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/startup_reset.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/reset_ctrl_rtl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/key_ctrl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/serial_ctrl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/pwm_ctrl.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/lab7_top_level.vhd}
vcom -93 -work work {C:/Users/nourn/OneDrive/Skrivbord/VHDL/lab7/c_disp_ctrl.vhd}

