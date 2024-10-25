set_global_assignment -entity "pll_cycloneV" -library "lib_pll_cycloneV" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_cycloneV" -library "lib_pll_cycloneV" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "pll_cycloneV" -library "lib_pll_cycloneV" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_cycloneV" -name SPD_FILE [file join $::quartus(sip_path) "pll_cycloneV.spd"]

set_global_assignment -library "lib_pll_cycloneV" -name MISC_FILE [file join $::quartus(sip_path) "pll_cycloneV_sim/pll_cycloneV.vho"]
