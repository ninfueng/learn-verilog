`timescale 1ns / 1ps


module memory_tb;
reg [7:0] addr, data_i;
reg clk, rst, write;
//wire [7:0] io_o;
wire [7:0] data_o;

memory uut(.addr(addr), .data_i(data_i), .clk(clk), .rst(rst), .write(write), .data_o(data_o)); //.io_o(io_o)
initial
begin
    clk = 1'b0;
    forever
    begin
        #1 clk = ~clk;
    end
    addr = 8'h00;
    data_i = 8'h00;
    rst = 1'b1;
end

always@(posedge clk)
begin

    // Test rom.
    rst <= 1'b1; write = 1'b1; addr <= 8'd0; data_i <= 8'hff; #3;
    rst <= 1'b1; write = 1'b1; addr <= 8'd1; data_i <= 8'hfe; #3;
    rst <= 1'b1; write = 1'b1; addr <= 8'd2; data_i <= 8'hfd; #3;
    rst <= 1'b0; write = 1'b1; addr <= 8'd2; data_i <= 8'hfd; #3;    
    
    
    // Test rw.
    // Write.
    rst <= 1'b1; write = 1'b1; addr <= 8'd128; data_i <= 8'hff; #3;
    rst <= 1'b1; write = 1'b1; addr <= 8'd129; data_i <= 8'hfe; #3;
    // Read.
    rst <= 1'b1; write = 1'b0; addr <= 8'd128; data_i <= 8'hxx; #3;
    rst <= 1'b1; write = 1'b0; addr <= 8'd129; data_i <= 8'hxx; #3;
    
    // Test io.
    rst <= 1'b1; write = 1'b1; addr <= 8'd224; data_i <= 8'hff; #3;
    rst <= 1'b1; write = 1'b1; addr <= 8'd225; data_i <= 8'hfe; #3;
    rst <= 1'b1; write = 1'b1; addr <= 8'd226; data_i <= 8'hfd; #3;
    rst <= 1'b0; write = 1'b1; addr <= 8'd226; data_i <= 8'hfd; #3;
    
end



endmodule
