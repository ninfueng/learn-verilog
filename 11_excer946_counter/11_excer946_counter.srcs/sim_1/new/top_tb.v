`timescale 1ns / 1ps

module top_tb;

reg clk, rst;
wire [15:0] counter;

top uut (.clk(clk), .rst(rst), .counter(counter));

initial
begin
    clk = 1'b0;
    rst = 1'b1;
    //counter = 1'h0;
end

always
begin
    #10 clk = ~clk;
end


endmodule
