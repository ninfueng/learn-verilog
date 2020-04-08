`timescale 1ns / 1ps


module top(
    input wire [3:0] addr,
    output reg [15:0] data_out
    );
reg [15:0] data [0:15];

initial
begin
    data[0] = 16'h0;
    data[1] = 16'h1;
    data[2] = 16'h2;
    data[3] = 16'h3;
    data[4] = 16'h4;
    data[5] = 16'h5;
    data[6] = 16'h6;
    data[7] = 16'h7;
    data[8] = 16'h8;
    data[9] = 16'h9;
    data[10] = 16'hA;
    data[11] = 16'hB;
    data[12] = 16'hC;
    data[13] = 16'hD;
    data[14] = 16'hE;
    data[15] = 16'hF;
end

always@(addr)
    data_out = data[addr];
endmodule
