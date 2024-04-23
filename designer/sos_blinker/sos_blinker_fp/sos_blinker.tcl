open_project -project {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker_fp\sos_blinker.pro}
enable_device -name {MPF300TS} -enable 1
set_programming_file -name {MPF300TS} -file {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker.ppd}
set_programming_action -action {PROGRAM} -name {MPF300TS} 
run_selected_actions
save_project
close_project
