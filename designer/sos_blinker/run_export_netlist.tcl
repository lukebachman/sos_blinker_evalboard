set_device -fam PolarFire
read_verilog -top_module_name {sos_blinker} \
    -file {C:\Verilog_Projects\sos_blinker_evalboard\synthesis\sos_blinker.vm}
write_verilog -file {C:\Verilog_Projects\sos_blinker_evalboard\synthesis\sos_blinker.v}
