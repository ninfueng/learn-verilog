`timescale 1ns / 1ps

module ir(
    input wire [7:0] bus1,
    input wire ir_load, clk, rst,
    output reg [7:0] ir_o);
    
always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        ir_o <= 8'h00;
    end
    else
    begin
        if(ir_load)
        begin
            ir_o <= bus1;
        end
    end
end

endmodule

