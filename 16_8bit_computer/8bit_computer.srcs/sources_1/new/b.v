`timescale 1ns / 1ps

module b(
    input wire b_load, clk, rst,
    input wire [7:0] bus1,
    output reg [7:0] b_o
    );

always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        b_o <= 8'h00;
    end
    else
    begin
        if(b_load)
        begin
            b_o <= bus1;
        end
    end
end
endmodule

