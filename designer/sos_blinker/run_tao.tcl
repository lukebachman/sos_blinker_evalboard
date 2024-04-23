set_device -family {PolarFire} -die {MPF300TS} -speed {-1}
read_verilog -mode system_verilog {C:\Verilog_Projects\sos_blinker_evalboard\hdl\sos_blinker.v}
set_top_level {sos_blinker}
map_netlist
check_constraints {C:\Verilog_Projects\sos_blinker_evalboard\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\synthesis.fdc}
