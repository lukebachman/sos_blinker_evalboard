read_sdc -scenario "timing_analysis" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Verilog_Projects/sos_blinker_evalboard/designer/sos_blinker/timing_analysis.sdc}
set_options -analysis_scenario "timing_analysis"
save
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\sos_blinker_timing_constraints_coverage.xml}]
set reportfile {C:\Verilog_Projects\sos_blinker_evalboard\designer\sos_blinker\coverage_timing}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
