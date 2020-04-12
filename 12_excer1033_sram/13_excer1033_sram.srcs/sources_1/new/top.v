`timescale 1ns / 1ps


module top(
    input wire din, we, wl,
    output reg dout
    );

always@(*)
begin
    if(we)
    begin
        dout <= din;
    end
    else
    begin
        dout <= dout;
    end

end
endmodule
