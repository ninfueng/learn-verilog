`timescale 1ns / 1ps


module top_tb;

reg a = 0;
reg b = 1;
wire x;

top dut(
    .a (a),
    .b (b),
    .x (x)
);


endmodule
