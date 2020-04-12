`timescale 1ns / 1ps

module top_tb;

reg [7:0] a, b;
wire [15:0] x;

top uut(.a(a), .b(b), .sum(x));

initial
begin
    a = 8'o0; b = 8'o0; 
    a = 8'o2; b = 8'o2; #10;
    a = 8'o3; b = 8'o1; #10;
    a = 8'o7; b = 8'o7; #10;
    a = 8'o5; b = 8'o5; #10;
    a = 8'o1; b = 8'o1; #10;
    
end





endmodule
