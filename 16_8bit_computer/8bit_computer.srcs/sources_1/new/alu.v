`timescale 1ns / 1ps

module alu(
    input wire [7:0] a, b,
    input wire [2:0] alu_sel,
    output reg [7:0] res,
    output reg [3:0] nzvc
    );

always@(a, b, alu_sel)
begin
    //TODO: complete all case.
    case(alu_sel)
        3'b00:
        begin
            res = a + b;
        end
    
    endcase
end

endmodule
