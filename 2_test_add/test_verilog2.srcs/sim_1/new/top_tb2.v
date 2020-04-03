`timescale 1ns / 1ps

module top_tb2;

reg a = 1;
reg b = 1;
wire x;

top uut(
    .a (a),
    .b (b),
    .x (x)
);

endmodule
