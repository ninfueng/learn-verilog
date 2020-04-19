`timescale 1ns / 1ps

module pc(input wire [7:0] bus1,
          input wire pc_load, pc_inc, clk, rst,
          output reg [7:0] pc_o
         );
reg [7:0] pc_reg;

always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        pc_reg = 8'h00;
        pc_o <= 8'h00;
    end
    else
    begin
        if(pc_load)
        begin
            pc_reg = bus1;
            pc_o <= bus1;
        end
        else if(pc_inc)
        begin
            pc_o <= pc_reg + 1;
        end
    end
end

endmodule