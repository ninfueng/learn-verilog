`timescale 1ns / 1ps


module top(
    input wire d, wire clk, wire rst,
    output reg q, reg qn
    );

always@(posedge clk)
begin
    if(rst == 1'b1)
        q <= 1'b0;
    else
        q <= d;
        qn <= ~d;
end
    
    
endmodule
