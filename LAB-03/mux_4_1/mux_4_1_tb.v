`include "mux_4_1_logic.v"
`timescale 1ns/1ps

module mux_4_1_tb;

    reg [3:0] IN;
    reg [1:0] S;
    reg EN;
    wire Y;

    mux_4_1_logic uut (IN, S, EN, Y);

    initial begin
        $dumpfile("mux_4_1tb.vcd");
        $dumpvars (0, mux_4_1_tb);
    end

    initial 
        $monitor($time,"IN = %d, S = %d, Y = %b",
                            IN, S, Y);

    initial begin
        EN = 1; IN = 14; S = 0; #1
        EN = 1; IN = 10; S = 1; #1
        EN = 1; IN = 8; S = 2; #1
        EN = 1; IN = 5; S = 3; #1
        EN = 1; IN = 14; S = 1; #1
        EN = 1; IN = 14; S = 2; #1
        EN = 1; IN = 14; S = 3; #1
    
        $finish;
    end
endmodule