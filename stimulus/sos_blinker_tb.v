`timescale 1ns / 1ps

module sos_blinker_tb;

// Inputs
reg clk;
reg rst;

// Outputs
wire led;

// Instantiate the Unit Under Test (UUT)
sos_blinker uut (
    .clk(clk),
    .rst(rst),
    .led(led)
);

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 0; // Assert the reset signal (active-low)

    // Wait for 100 ns for global reset to finish
    #100;
    
    rst = 0; // De-assert the reset signal

end

// Clock generation
always #10 clk = ~clk; // Generate a clock with a period of 20 ns (50MHz)
                       // Generate a 50MHz clock (20ns period, 10ns high and 10ns low)

endmodule