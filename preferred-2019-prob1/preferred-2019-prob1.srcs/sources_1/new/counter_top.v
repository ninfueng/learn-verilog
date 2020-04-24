`timescale 1ns / 1ps


module counter_top(
    input wire clk, rst_n,
    output wire [7:0] dec_count, inc_count
    );
inc_counter i_inc_counter(.clk(clk), .rst_n(rst_n), .dec_count(dec_count), .inc_count(inc_count));
dec_counter i_dec_counter(.clk(clk), .rst_n(rst_n), .dec_count(dec_count), .inc_count(inc_count));    
endmodule
