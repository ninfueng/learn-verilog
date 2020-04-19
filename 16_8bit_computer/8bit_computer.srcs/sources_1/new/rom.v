`timescale 1ns / 1ps

module rom(
    input wire [7:0] addr,
    input wire clk,
    output reg [7:0] data_o
    );

reg [7:0] rom [127:0];
reg en;

always@(addr)
begin
    if(addr >= 0 && addr <= 127)
    begin
        en = 1'b1;
    end
    else
    begin
        en = 1'b0;
        $display("Out of range of RAM address; Not valid!!!.");
    end
end

initial
begin
    rom[0] = 8'h00;
    rom[1] = 8'h01;
    rom[2] = 8'h02;
    rom[3] = 8'h03;
    rom[4] = 8'h04;
end

always@(posedge clk)
begin
    if(en)
    begin
        data_o <= rom[addr];
    end
    else
    begin
        data_o <= 8'hxx;
    end
end
    
endmodule
