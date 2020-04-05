`timescale 1ns / 1ps

module top_tb;

wire a = 1'b0;
wire b = 1'b1;
wire c = 1'b1;
wire d = 1'b1;
wire [15:0] f;

top uut(.a(a), .b(b), .c(c), .d(d), .f(f));


endmodule
