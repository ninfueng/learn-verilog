`timescale 1ns / 1ps


module top(
    input wire  a, b, c,
    output wire z
    );
    
assign z = ((a == 1'b0) && (b == 1'b0) && (c == 1'b0)) ? 1'b0 :
    ((a == 1'b0) && (b == 1'b0) && (c == 1'b1)) ? 1'b0 :
    ((a == 1'b0) && (b == 1'b1) && (c == 1'b0)) ? 1'b1 :
    ((a == 1'b0) && (b == 1'b1) && (c == 1'b1)) ? 1'b0 :
    ((a == 1'b1) && (b == 1'b0) && (c == 1'b0)) ? 1'b1 :
    ((a == 1'b1) && (b == 1'b0) && (c == 1'b1)) ? 1'b0 :
    ((a == 1'b1) && (b == 1'b1) && (c == 1'b1)) ? 1'b1 : 1'b0;
    
endmodule
