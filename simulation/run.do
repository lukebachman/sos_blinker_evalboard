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
add wave /sos_blinker_tb/*
run 1000ns
