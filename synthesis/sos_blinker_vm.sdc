# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1713999211 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {sos_blinker|clk} [get_ports {clk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {sos_blinker|un1_led4_1_inferred_clock} [get_pins {un1_led4_1_inferred_clock_RNO/Y}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list sos_blinker|clk]
set Inferred_clkgroup_1 [list sos_blinker|un1_led4_1_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {sos_blinker|clk}]
set_clock_groups -asynchronous -group [get_clocks {sos_blinker|un1_led4_1_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

