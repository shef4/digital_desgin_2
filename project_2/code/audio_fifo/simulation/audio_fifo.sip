set_global_assignment -entity "audio_fifo" -library "lib_audio_fifo" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "audio_fifo" -library "lib_audio_fifo" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "audio_fifo" -library "lib_audio_fifo" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_audio_fifo" -name SPD_FILE [file join $::quartus(sip_path) "../audio_fifo.spd"]
set_global_assignment -library "lib_audio_fifo" -name MISC_FILE [file join $::quartus(sip_path) "../../audio_fifo.qsys"]

set_global_assignment -library "lib_audio_fifo" -name MISC_FILE [file join $::quartus(sip_path) "audio_fifo.v"]
set_global_assignment -library "lib_audio_fifo" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_avalon_sc_fifo.v"]
