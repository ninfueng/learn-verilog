`timescale 1ns / 1ps


module top(
    input wire clk, rst,
    output reg [15:0] counter
    );

initial
begin
    counter <= 1'h0;
end

always@(posedge clk or negedge rst)
begin
    if(!rst)
    begin
        counter <= 0;
        $display("rst");
    end
    else
    begin
        counter <= counter + 1;
        $display("up");
    end
end
    
endmodule
