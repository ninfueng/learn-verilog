`timescale 1ns / 1ps

module ripple_carry_adder(
    input wire [15:0] a, b,
    output wire [15:0] sum
    );

wire [15:0] tmp_cout;
full_adder u0(.a(a[0]), .b(b[0]), .cin(1'b0), .sum(sum[0]), .cout(tmp_cout[0]));
generate
    for(genvar i=1; i<16; i=i+1)
        begin : rca0
            full_adder u1(.a(a[i]), .b(b[i]), .cin(tmp_cout[i-1]), .sum(sum[i]), .cout(tmp_cout[i]));
        end
endgenerate

endmodule
