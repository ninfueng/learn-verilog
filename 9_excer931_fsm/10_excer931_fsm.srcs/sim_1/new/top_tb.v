`timescale 1ns / 1ps


module top_tb;
reg din, clk, rst;
wire dout;
top uut(.din(din), .clk(clk), .rst(rst), .dout(dout));

initial
begin
    din = 1'b0;
    clk = 1'b0;
    rst = 1'b0;
    
    #11 din = 1'b0;
    #10 din = 1'b1;
    #10 din = 1'b0;
    #10 din = 1'b1;
    #10 din = 1'b0;
    #10 din = 1'b1;
    #10 din = 1'b0;
    #10 din = 1'b1;
    #10 din = 1'b0;
    #10 din = 1'b1;
    din = 1'b0;
end

always
begin
    #10 clk = ~clk;
end


endmodule
