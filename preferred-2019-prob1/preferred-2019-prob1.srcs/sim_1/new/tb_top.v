`timescale 1ns / 1ps

module tb_top;
reg clk, rst_n;
wire [7:0] dec_count;
wire [7:0] inc_count;

counter_top i_counter_top(.clk(clk), .rst_n(rst_n), .dec_count(dec_count), .inc_count(inc_count));

initial
begin
    clk = 1'b0;
    rst_n = 1'b1;
    #100 rst_n = ~rst_n;
    forever
    begin
    #1 clk = ~clk;
    end
end

endmodule
