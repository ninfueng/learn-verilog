`timescale 1ns / 1ps


module io_tb;
reg [7:0] addr, data_i;
reg write, clk, rst;
wire [7:0] io_o0, io_o1, io_o2, io_o3, io_o4, io_o5, io_o6,
    io_o7, io_o8, io_o9, io_o10, io_o11, io_o12, io_o13, io_o14, io_o15;

io uut(.addr(addr), .write(write), .data_i(data_i),
 .clk(clk), .rst(rst), .io_o0(io_o0), .io_o1(io_o1),
 .io_o2(io_o2), .io_o3(io_o3), .io_o4(io_o4), .io_o5(io_o5), .io_o6(io_o6),
 .io_o7(io_o7), .io_o8(io_o8), .io_o9(io_o9), .io_o10(io_o10), .io_o11(io_o11), 
 .io_o12(io_o12), .io_o13(io_o13), .io_o14(io_o14), .io_o15(io_o15));

initial
begin
    clk = 1'b0;
    forever
    begin
        #1 clk = ~clk;
    end
    addr = 8'h00;
    data_i = 8'h00;
    rst = 1'b0;
end

always@(posedge clk)
begin
    rst <= 1'b1; write = 1'b1; addr <= 8'd224; data_i <= 8'hff; #2;
    rst <= 1'b1; write = 1'b1; addr <= 8'd225; data_i <= 8'hfe; #2;
    rst <= 1'b1; write = 1'b1; addr <= 8'd226; data_i <= 8'hfd; #2;
    rst <= 1'b0; write = 1'b1; addr <= 8'd226; data_i <= 8'hfd; #2;
end

endmodule
