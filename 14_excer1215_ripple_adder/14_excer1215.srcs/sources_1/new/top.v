`timescale 1ns / 1ps


module top(
    input wire [7:0] a, b,
    output wire cout,
    output wire [7:0] sum
    );

wire cout0_o, cout1_o, cout2_o, cout3_o, cout4_o, cout5_o, cout6_o;

full_adder u0(.a(a[0]), .b(b[0]), .cin(1'b0), .cout(cout0_o), .sum(sum[0]));
full_adder u1(.a(a[1]), .b(b[1]), .cin(cout0_o), .cout(cout1_o), .sum(sum[1]));
full_adder u2(.a(a[2]), .b(b[2]), .cin(cout1_o), .cout(cout2_o), .sum(sum[2]));
full_adder u3(.a(a[3]), .b(b[3]), .cin(cout2_o), .cout(cout3_o), .sum(sum[3]));
full_adder u4(.a(a[4]), .b(b[4]), .cin(cout3_o), .cout(cout4_o), .sum(sum[4]));
full_adder u5(.a(a[5]), .b(b[5]), .cin(cout4_o), .cout(cout5_o), .sum(sum[5]));
full_adder u6(.a(a[6]), .b(b[6]), .cin(cout5_o), .cout(cout6_o), .sum(sum[6]));
full_adder u7(.a(a[7]), .b(b[7]), .cin(cout6_o), .cout(cout), .sum(sum[7]));

endmodule