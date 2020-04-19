`timescale 1ns / 1ps

module ccr(
    input wire ccr_load, clk, rst,
    input wire [3:0] nzvc,
    output reg ccr_o
    );

always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        ccr_o <= 4'b0000;
    end
    else
    begin
        ccr_o <= nzvc;
    end
end
endmodule