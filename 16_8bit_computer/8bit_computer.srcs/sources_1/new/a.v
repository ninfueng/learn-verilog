`timescale 1ns / 1ps

module a(
    input wire a_load, clk, rst,
    input wire [7:0] bus1,
    output reg [7:0] a_o
    );

always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        a_o <= 8'h00;
    end
    else
    begin
        if(a_load)
        begin
            a_o <= bus1;
        end
    end
end
endmodule
