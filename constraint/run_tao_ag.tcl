set_device -family {PolarFire} -die {MPF300TS} -speed {-1} -range {IND}
read_verilog -mode system_verilog {C:\Verilog_Projects\sos_blinker_evalboard\hdl\sos_blinker.v}
set_top_level {sos_blinker}
read_sdc -component {C:\Verilog_Projects\sos_blinker_evalboard\component\work\PF_CCC_C0\PF_CCC_C0_0\PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc}
derive_constraints
write_sdc {C:\Verilog_Projects\sos_blinker_evalboard\constraint\sos_blinker_derived_constraints.sdc}
write_ndc {C:\Verilog_Projects\sos_blinker_evalboard\constraint\sos_blinker_derived_constraints.ndc}
write_pdc {C:\Verilog_Projects\sos_blinker_evalboard\constraint\fp\sos_blinker_derived_constraints.pdc}
