`timescale 1ns / 1ps

module half_adder(
    input wire a, b,
    output wire sum, cout
    );


xor u0 (sum, a, b);
and u1 (cout, a, b);
    
endmodule
