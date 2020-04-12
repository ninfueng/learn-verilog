`timescale 1ns / 1ps

module ripple_carry_adder_tb;

reg [15:0] a, b;
wire [15:0] sum;
integer i;
integer j;

ripple_carry_adder uut(.a(a), .b(b), .sum(sum));

initial
begin
    for(i=0; i<16; i=i+1)
    begin
        for(j=0; j<16; j=j+1)
        begin
            a = i; b = j; #10;
        end
    end
end

endmodule
