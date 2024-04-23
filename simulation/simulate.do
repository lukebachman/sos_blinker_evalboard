quietly set ACTELLIBNAME PolarFire
quietly set PROJECT_DIR "C:/Verilog_Projects/sos_blinker_evalboard"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap PolarFire "C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/precompiled/vlog/polarfire"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/sos_blinker.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/sos_blinker_tb.v"

vsim -L PolarFire -L presynth  -t 1ps -pli C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/pli/pf_crypto_win_me_pli.dll presynth.sos_blinker_tb

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sos_blinker_tb/clk
add wave -noupdate /sos_blinker_tb/rst
add wave -noupdate /sos_blinker_tb/led
add wave -noupdate /sos_blinker_tb/uut/clk
add wave -noupdate /sos_blinker_tb/uut/rst
add wave -noupdate /sos_blinker_tb/uut/led
add wave -noupdate /sos_blinker_tb/uut/counter
add wave -noupdate /sos_blinker_tb/uut/counter_rst
add wave -noupdate /sos_blinker_tb/uut/state
add wave -noupdate /sos_blinker_tb/uut/i
add wave -noupdate /sos_blinker_tb/uut/pattern_seq
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {455452342 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {2500 ns}

run 3000ns