set_device -family {PolarFire} -die {MPF300TS} -speed {-1}
read_adl {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker.adl}
read_afl {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker.afl}
map_netlist
read_sdc {C:\Verilog_Projects\sos_blinker_evalboard\constraint\sos_blinker_derived_constraints.sdc}
check_constraints {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\timing_coverage.log}
write_sdc -mode smarttime {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\timing_analysis.sdc}
