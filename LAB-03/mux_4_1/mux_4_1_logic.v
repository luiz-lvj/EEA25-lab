module mux_4_1_logic (
    input [3:0] IN,
    input [1:0] S,
    input EN,

    output Y
);

    
    wire A3, A2, A1, A0;

    assign A3 = EN & IN[3] & S[1] & S[0];

    assign A2 = EN & IN[2] & S[1] & (~S[0]);

    assign A1 = EN & IN[1] & (~S[1]) & S[0];

    assign A0 = EN & IN[0] & (~S[1]) & (~S[0]);

    assign Y = A3 | A2 | A1 | A0;
    
endmodule