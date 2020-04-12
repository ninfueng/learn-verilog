`timescale 1ns / 1ps

module full_adder_tb;

reg a, b, cin;
wire sum, cout;

full_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial
begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    
    #20 a = 1'b0;
    #20 b = 1'b1;
    #20 cin = 1'b0;
    
    #40 a = 1'b1;
    #40 b = 1'b0;
    #40 cin = 1'b1;


    #60 a = 1'b1;
    #60 b = 1'b1;
    #60 cin = 1'b0;

    #80 a = 1'b1;
    #80 b = 1'b1;
    #80 cin = 1'b1;
end
endmodule
