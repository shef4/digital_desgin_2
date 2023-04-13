set_global_assignment -entity "audio_controller" -library "lib_audio_controller" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "audio_controller" -library "lib_audio_controller" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "audio_controller" -library "lib_audio_controller" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_audio_controller" -name SPD_FILE [file join $::quartus(sip_path) "../audio_controller.spd"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "../../audio_controller.qsys"]

set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "audio_controller.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_audio_bit_counter.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_audio_in_deserializer.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_audio_out_serializer.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_clock_edge.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_sync_fifo.v"]
set_global_assignment -library "lib_audio_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/audio_controller_audio_0.v"]
