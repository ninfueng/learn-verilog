`timescale 1ns / 1ps

module top(
    input wire [7:0] a, [2:0] sel,
    output wire x
    );

assign x = ((sel[2] == 1'b0) && (sel[1] == 1'b0) && (sel[0] == 1'b0)) ? a[0] :
           ((sel[2] == 1'b0) && (sel[1] == 1'b0) && (sel[0] == 1'b1)) ? a[1] :
           ((sel[2] == 1'b0) && (sel[1] == 1'b1) && (sel[0] == 1'b0)) ? a[2] :
           ((sel[2] == 1'b0) && (sel[1] == 1'b1) && (sel[0] == 1'b1)) ? a[3] :
           ((sel[2] == 1'b1) && (sel[1] == 1'b0) && (sel[0] == 1'b0)) ? a[4] :
           ((sel[2] == 1'b1) && (sel[1] == 1'b0) && (sel[0] == 1'b1)) ? a[5] :
           ((sel[2] == 1'b1) && (sel[1] == 1'b1) && (sel[0] == 1'b0)) ? a[6] : a[7];

endmodule
