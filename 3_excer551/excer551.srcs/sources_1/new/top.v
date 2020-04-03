/* Conditional assignment with logical operator.
*/
`timescale 1ns / 100ps

module top(
    input wire [0:0] a, wire [0:0] b, wire [0:0] c,
    output wire [0:0] f
    );


assign f = ((a == 1'b0) && (b == 1'b0) && (c == 1'b0)) ? 1'b0 :
       ((a == 1'b0) && (b == 1'b0) && (c == 1'b1)) ? 1'b1 :
       ((a == 1'b0) && (b == 1'b1) && (c == 1'b0)) ? 1'b0 :
       ((a == 1'b0) && (b == 1'b1) && (c == 1'b1)) ? 1'b1 :
       ((a == 1'b1) && (b == 1'b0) && (c == 1'b0)) ? 1'b1 :
       ((a == 1'b1) && (b == 1'b0) && (c == 1'b1)) ? 1'b0 :
       ((a == 1'b1) && (b == 1'b1) && (c == 1'b0)) ? 1'b1 : 1'b0;

endmodule
