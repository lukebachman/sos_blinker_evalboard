new_project \
         -name {sos_blinker} \
         -location {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300TS} \
         -name {MPF300TS}
enable_device \
         -name {MPF300TS} \
         -enable {TRUE}
save_project
close_project
