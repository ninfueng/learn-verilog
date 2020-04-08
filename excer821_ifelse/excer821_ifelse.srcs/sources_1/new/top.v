`timescale 1ns / 1ps


module top(
    input wire a, b, c, d,
    output reg f
    );

//always@(a, b, c, d)
//begin
//    if(a == 1'b0 && b == 1'b0 && c == 1'b0 && d == 1'b1)
//        f = 1'b1;
//    else if(a == 1'b1 && b == 1'b0 && c == 1'b0 && d == 1'b1)
//        f = 1'b1;
//    else if(a == 1'b1 && b == 1'b0 && c == 1'b1 && d == 1'b1)
//        f = 1'b1;
//    else if(a == 1'b0 && b == 1'b0 && c == 1'b1 && d == 1'b1)
//        f = 1'b1;
//    else
//        f = 1'b0;
//end

always@(a, b, c, d)
begin
    case({a, b, c, d})
    4'b0001, 4'b1001, 4'b1011, 4'b0011 : f = 1'b1;
    default : f = 1'b0;
    endcase
end
    endmodule
