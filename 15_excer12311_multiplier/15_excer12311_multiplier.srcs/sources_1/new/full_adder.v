`timescale 1ns / 1ps


module full_adder(
    input wire a, b, cin,
    output wire sum, cout
    );
    
wire u0_o;
wire u1_o;
wire u2_o;

xor u0 (u0_o, a, b);
and u1 (u1_o, a, b);
xor u2 (sum, u0_o, cin);
and u3 (u2_o, u0_o, cin);
or u4 (cout, u1_o, u2_o);

endmodule