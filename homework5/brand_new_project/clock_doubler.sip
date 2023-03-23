set_global_assignment -entity "clock_doubler" -library "lib_clock_doubler" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clock_doubler" -library "lib_clock_doubler" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "clock_doubler" -library "lib_clock_doubler" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clock_doubler" -name SPD_FILE [file join $::quartus(sip_path) "clock_doubler.spd"]

set_global_assignment -library "lib_clock_doubler" -name MISC_FILE [file join $::quartus(sip_path) "clock_doubler_sim/clock_doubler.vo"]
