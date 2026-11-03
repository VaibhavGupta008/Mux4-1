module mux4to1_tb;

reg [3:0] I;
reg [1:0] S;
wire Y;

// Instantiate the multiplexer
mux4to1 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux4to1_tb);

    $monitor("Time=%0t | I=%b | S=%b | Y=%b", $time, I, S, Y);

    I = 4'b1010;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    $finish;
end

endmodule