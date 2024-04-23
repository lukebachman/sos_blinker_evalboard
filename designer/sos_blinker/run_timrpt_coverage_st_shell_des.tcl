set_device \
    -family  PolarFire \
    -die     PA5M300TS \
    -package fcg1152 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {IND}
set_def {VCCI_1.5_VOLTR} {IND}
set_def {VCCI_1.8_VOLTR} {IND}
set_def {VCCI_2.5_VOLTR} {IND}
set_def {VCCI_3.3_VOLTR} {IND}
set_def USE_CONSTRAINTS_FLOW 1
set_name sos_blinker
set_workdir {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker}
set_log     {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker_coverage_timing.log}
set_design_state pre_layout
