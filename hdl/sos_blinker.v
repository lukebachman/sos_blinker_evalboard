// Module Description: Blink an LED with specific delays and follow a pattern of your choosing
// Modify Design where you see *** to customize desired Blink
`timescale 1ns / 1ps

module sos_blinker(clk, rst, led);

input wire clk;                 // 50MHz Source Clock
input wire rst;                 // Active-high asynchronous reset
output reg led;                 // Output LED

// Signal declarations
reg [25:0] counter;             // 50MHz in Binary number is (26 digits)
reg [1:0] counter_rst = 1;      // Resets counter (intialize at 1)
reg [2:0] state;
reg [2:0] pattern_seq [20:0];   // Stores pattern sequence      (Modify bit size to fit your pattern) ***
parameter w = 21;               // This allows pattern to loop  (Modify to match bit size of pattern_seq) ***
integer i = 0;                  // Index for Pattern

// State Declarations
parameter on_quarter = 3'b000;  // LED ON 1/4 second
parameter off_quarter = 3'b001; // LED OFF 1/4 second
parameter on_half = 3'b010;     // LED ON 1/2 second
parameter off_half = 3'b011;    // LED OFF 1/2 second
parameter off_one = 3'b100;     // LED OFF 1 second

// Delay Declarations
// Number of Clock Cycles = Delay Time (in seconds) * Clock Frequency (in Hz)


parameter quarter_sec = 12_500_000;      // 12_500_000 for 0.25 sec (0.25 sec * 50,000,000 Hz)
parameter half_sec = 25_000_000;         // 25_000_000 for 0.5 sec  (0.5 sec * 50,000,000 Hz)
parameter one_sec = 50_000_000;          // 50_000_000 for 1 sec    (1 sec * 50,000,000 Hz)

/*
// For testing purposes
parameter quarter_sec = 5;      // 12_500_000 for 0.25 sec (0.25 sec * 50,000,000 Hz)
parameter half_sec = 5;         // 25_000_000 for 0.5 sec  (0.5 sec * 50,000,000 Hz)
parameter one_sec = 5;          // 50_000_000 for 1 sec    (1 sec * 50,000,000 Hz)
*/

// Create the pattern sequence you want here ***
// This creates an SOS_Pattern in morse code
initial begin
    // Part 1: S
    pattern_seq[0] = on_quarter;
    pattern_seq[1] = off_quarter;
    pattern_seq[2] = on_quarter;
    pattern_seq[3] = off_quarter;
    pattern_seq[4] = on_quarter;
    pattern_seq[5] = off_quarter;
    pattern_seq[6] = off_half;
    
    // Part 2: O
    pattern_seq[7] = on_half;
    pattern_seq[8] = off_quarter;
    pattern_seq[9] = on_half;
    pattern_seq[10] = off_quarter;
    pattern_seq[11] = on_half;
    pattern_seq[12] = off_quarter;
    pattern_seq[13] = off_half;
    
    // Part 3: S
    pattern_seq[14] = on_quarter;
    pattern_seq[15] = off_quarter;
    pattern_seq[16] = on_quarter;
    pattern_seq[17]= off_quarter;
    pattern_seq[18] = on_quarter;
    pattern_seq[19] = off_quarter;
    pattern_seq[20] = off_one;
    
    // Loop to top and repeat forever ***
end

// Asynchronous reset and state machine logic (Sequential Logic Block)
always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
        state <= pattern_seq[0];
        i <= 0;
        counter <= 0;
    end else if (counter_rst == 1'b1) begin
        counter <= 0;                                   // Reset the counter
        i <= (i + 1) % w;                               // Move to the next state in the pattern and wrap around at end
        state <= pattern_seq[i];                        // Update the state
    end else begin
        counter <= counter + 1;                         // Increment the counter
    end
end
    
// State Definitions (Combinational Logic Block)
always @(*)
    begin
       case (state)
        on_quarter: begin  // ON for � sec
                    counter_rst = 0;                     // Turn off counter reset
                    if (counter < quarter_sec) begin
                        led = 1'b1;
                    end else begin
                        counter_rst = 1;                 // Reset counter
                    end
                    end
        off_quarter: begin  // OFF for � sec
                     counter_rst = 0;                    // Turn off counter reset
                     if (counter < quarter_sec) begin
                        led = 1'b0;
                     end else begin
                        counter_rst = 1;                 // Reset counter
                     end
                     end
        on_half: begin  // ON for 1/2 sec
                    counter_rst = 0;                     // Turn off counter reset
                    if (counter < half_sec) begin
                        led = 1'b1;
                    end else begin
                        counter_rst = 1;                 // Reset counter
                    end
                    end
        off_half: begin  // OFF for 1/2 sec
                     counter_rst = 0;                    // Turn off counter reset
                     if (counter < half_sec) begin
                        led = 1'b0;
                     end else begin
                        counter_rst = 1;                 // Reset counter
                     end
                     end
        off_one: begin  // OFF for 1 sec
                     counter_rst = 0;                    // Turn off counter reset
                     if (counter < one_sec) begin
                        led = 1'b0;
                     end else begin
                        counter_rst = 1;                 // Reset counter
                     end
                     end

        default: begin
                 led = 1'b0;
                 counter_rst = 1;
                 end
        endcase
    end
endmodule