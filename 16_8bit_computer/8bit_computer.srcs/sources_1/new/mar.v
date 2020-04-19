`timescale 1ns / 1ps

module mar(
    input wire [7:0] bus1,
    input wire clk, rst, mar_load,
    output reg [7:0] mar_o);

always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        mar_o <= 8'h00;
    end
    else
    begin
        if(mar_load)
        begin
            mar_o <= bus1;
        end
    end
end


endmodule