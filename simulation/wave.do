restart

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