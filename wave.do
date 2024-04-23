onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sos_blinker_tb/clk
add wave -noupdate /sos_blinker_tb/rst
add wave -noupdate /sos_blinker_tb/led
add wave -noupdate /sos_blinker_tb/uut/w
add wave -noupdate /sos_blinker_tb/uut/state
add wave -noupdate /sos_blinker_tb/uut/rst
add wave -noupdate /sos_blinker_tb/uut/quarter_sec
add wave -noupdate /sos_blinker_tb/uut/pattern_seq
add wave -noupdate /sos_blinker_tb/uut/one_sec
add wave -noupdate /sos_blinker_tb/uut/on_quarter
add wave -noupdate /sos_blinker_tb/uut/on_half
add wave -noupdate /sos_blinker_tb/uut/off_quarter
add wave -noupdate /sos_blinker_tb/uut/off_one
add wave -noupdate /sos_blinker_tb/uut/off_half
add wave -noupdate /sos_blinker_tb/uut/led
add wave -noupdate /sos_blinker_tb/uut/i
add wave -noupdate /sos_blinker_tb/uut/half_sec
add wave -noupdate /sos_blinker_tb/uut/counter_rst
add wave -noupdate /sos_blinker_tb/uut/counter
add wave -noupdate /sos_blinker_tb/uut/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {75485 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 255
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
WaveRestoreZoom {0 ps} {960945 ps}
