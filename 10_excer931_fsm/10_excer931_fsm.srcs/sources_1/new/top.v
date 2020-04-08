`timescale 1ns / 1ps


module top(
    input wire din, clk, rst,
    output reg dout
    );

parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
reg [1:0] s = 2'b00;

always@(posedge clk)
begin
    if(rst)
        s = 2'b00;
    else
        if(din == 1'b0 && s == s0)
        begin
            s = s0;
            dout = 1'b0;
            $display("s0->s0 %d %d", s, dout);
        end
        else if(din == 1'b1 && s == s0)
        begin
            s = s1;
            dout = 1'b0;
            $display("s0->s1 s1 %d %d", s, dout);

        end
        else if(din == 1'b0 && s == s2)
        begin
            s = s0;
            dout = 1'b0;
            $display("s2->s0 %d %d", s, dout);

        end
        else if(din == 1'b1 && s == s2)
        begin
            s = s0;
            dout = 1'b1;
            $display("s2->s0 %d %d", s, dout);
        end
        else
        begin
            s = s2;
            dout = 1'b0;
            $display("s1->s2 %d %d", s, dout);

        end
end
endmodule
