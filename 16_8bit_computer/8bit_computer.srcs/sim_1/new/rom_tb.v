`timescale 1ns / 1ps


module rom_tb;
reg [7:0] addr;
reg clk;
wire [7:0] data_o;

rom uut(.addr(addr), .clk(clk), .data_o(data_o));

initial
begin
    clk = 1'b0;
    forever
    begin
        #1 clk = ~clk;
    end
    addr = 8'h00;
end

always@(posedge clk)
begin
    addr <= 8'h01;
    #10 addr <= 8'h02;
    #10 addr <= 8'h03;
    #10 addr <= 8'h04;
end

endmodule
