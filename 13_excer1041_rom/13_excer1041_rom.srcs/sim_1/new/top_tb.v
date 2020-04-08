`timescale 1ns / 1ps

module top_tb;
reg [3:0] addr;
wire [15:0] data_out;

top uut (.addr(addr), .data_out(data_out));

initial
begin
    addr = 4'b0001;
    #10 addr = 4'b0010;
    #10 addr = 4'b0011;
    #10 addr = 4'b0100;
    #10 addr = 4'b1100;
end


endmodule
