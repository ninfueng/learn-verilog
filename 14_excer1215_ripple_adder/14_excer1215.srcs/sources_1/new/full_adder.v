`timescale 1ns / 1ps


module full_adder(
    input wire a, b, cin,
    output wire sum, cout
    );

wire cout1_o, cout2_o, sum1_o;
half_adder u1(.a(a), .b(b), .cout(cout1_o), .sum(sum1_o));
half_adder u2(.a(sum1_o), .b(cin), .cout(cout2_o), .sum(sum));
or u3 (cout, cout2_o, cout1_o);

endmodule
