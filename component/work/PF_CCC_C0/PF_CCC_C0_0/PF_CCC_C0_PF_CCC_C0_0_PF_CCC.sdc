set_component PF_CCC_C0_PF_CCC_C0_0_PF_CCC
# Microchip Technology Inc.
# Date: 2024-Apr-09 15:13:08
#

# Base clock for PLL #0
create_clock -period 40 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 4 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
