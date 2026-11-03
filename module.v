module mux4to1 (
    input [3:0] I,       // 4 input lines
    input [1:0] S,       // 2 select lines
    output Y             // 1 output
);

assign Y = I[S];

endmodule