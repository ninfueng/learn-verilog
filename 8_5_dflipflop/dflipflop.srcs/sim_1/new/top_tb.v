`timescale 1ns / 1ps

module top_tb;

reg d, clk, rst;
wire q, qn;

top uut(.d(d), .clk(clk), .rst(rst), .q(q), .qn(qn));

initial
begin
    rst = 1'b0;
    clk = 1'b0;
    d = 1'b0; 
end

always
begin: clk_gen
    #10 clk = ~clk;
end

always
begin: d_gen
    # 50 d = ~d;
end

endmodule
