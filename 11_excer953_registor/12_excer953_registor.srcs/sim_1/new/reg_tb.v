`timescale 1ns / 1ps


module reg_tb;

reg [7:0] din;
reg clk, en, rst;
wire [7:0] dout;

register uut(.din(din), .clk(clk), .en(en), .rst(rst), .dout(dout));

initial
begin
    clk = 1'b0;
    en = 1'b1;
    rst = 1'b1;
    #11 din = 8'o4;
    #10 din = 8'o7;
    #10 din = 8'o1;
    #10 din = 8'o2;
    #10 din = 8'o3;
    #10 din = 8'o5;
end

always
begin
  #10 clk = ~clk;
end

always
begin
  #100 rst = ~rst;
end

always
begin
    #50 en = ~en;
end

endmodule