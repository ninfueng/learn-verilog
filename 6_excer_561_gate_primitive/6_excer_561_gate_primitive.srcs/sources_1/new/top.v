`timescale 1ns / 1ps


module top(
    input wire a, b, c,
    output wire x
    );

wire an, bn, cn;
wire m3, m4, m5;

not u0 (an, a);
not u1 (bn, a);
not u2 (cn, a);

and u3 (m3, an, bn, c);
and u4 (m4, a, bn, cn);
and u5 (m5, an, bn, cn);

or u6 (x, m3, m4, m5);
    
endmodule
