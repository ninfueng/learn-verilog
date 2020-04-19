`timescale 1ns / 1ps


module rw(
    input wire [7:0] data_i, addr,
    input wire clk, write,
    output reg [7:0] data_o
    );
reg [7:0] rw [128:223];
reg en;

always@(addr)
begin
    if(addr >= 128 && addr <= 223)
    begin
        en = 1'b1;
    end
    else
    begin
        en = 1'b0;
        $display("Out of range of RW address; Not valid!!!.");

    end
end

always@(posedge clk)
begin
    if(write && en)
    begin
        rw[addr] <= data_i;
        data_o <= 8'hxx;
    end
    else
    begin
        data_o <= rw[addr];
    end
end

endmodule
