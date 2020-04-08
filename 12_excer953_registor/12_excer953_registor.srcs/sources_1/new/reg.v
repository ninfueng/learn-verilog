`timescale 1ns /1ps

module register(
    input wire [7:0] din,
    input wire clk, en, rst,
    output reg [7:0] dout
    );


always@(posedge clk or negedge rst)
begin
    if(!rst)
        dout <= 8'o0;
    else
    begin
        if(en)
            dout <= din;
        else
            dout <= dout;
    end
end

endmodule
