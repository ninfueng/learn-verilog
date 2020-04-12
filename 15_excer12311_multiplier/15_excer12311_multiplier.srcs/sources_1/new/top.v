`timescale 1ns / 1ps
//`include "utils.v"

module top(
    input wire [7:0] a, b,
    output wire [15:0] sum
    );
    
wire [7:0] u_o [0:7];
reg [15:0] u_o2 [0:7];
reg [15:0] cin;

generate
    for(genvar i=0; i<8; i=i+1)
    begin: g0
        broadcast_and u0(.a(a), .b(b[i]), .x(u_o[i]));
    end
endgenerate

generate
    for(genvar i=0; i<8; i=i+1)
    begin: g1
        always@(*)
        begin: g2
            u_o2[i] = (u_o[i] << i);
            $display("%d, %d", i, u_o2[i]);
        end
    end
endgenerate

wire [15:0] tmp_sum [5:0];
//wire [15:0] tmp_sum1;
//wire [15:0] tmp_sum2;
//wire [15:0] tmp_sum3;
//wire [15:0] tmp_sum4;
//wire [15:0] tmp_sum5;

ripple_carry_adder u1(.a(u_o2[0]), .b(u_o2[1]), .sum(tmp_sum[0]));
generate
    for(genvar i=2; i<7; i=i+1)
    begin :g3
        ripple_carry_adder u2(.a(tmp_sum[i-2]), .b(u_o2[i]), .sum(tmp_sum[i-1]));
    end
endgenerate
ripple_carry_adder u3(.a(tmp_sum[5]), .b(u_o2[7]), .sum(sum));

//ripple_carry_adder u1(.a(tmp_sum0), .b(u_o2[2]), .sum(tmp_sum1));
//ripple_carry_adder u2(.a(tmp_sum1), .b(u_o2[3]), .sum(tmp_sum2));
//ripple_carry_adder u3(.a(tmp_sum2), .b(u_o2[4]), .sum(tmp_sum3));
//ripple_carry_adder u4(.a(tmp_sum3), .b(u_o2[5]), .sum(tmp_sum4));
//ripple_carry_adder u5(.a(tmp_sum4), .b(u_o2[6]), .sum(tmp_sum5));
//ripple_carry_adder u6(.a(tmp_sum5), .b(u_o2[7]), .sum(sum));

endmodule 