`timescale 1ns / 1ps

module inc_counter_tb;
reg clk, rst_n;
reg [7:0] dec_count;
wire [7:0] inc_count;

inc_counter i_inc_counter(.clk(clk), .rst_n(rst_n), .dec_count(dec_count), .inc_count(inc_count));

initial
begin
    clk = 1'b0;
    rst_n = 1'b1;
    dec_count = 3;
    #100 rst_n = ~rst_n;
    forever
    begin
    #1 clk = ~clk;
    end
end

always@(posedge clk)
begin
    if(inc_count == 6)
    begin
        dec_count <= 3;
    end
    else if(dec_count < 0)
    begin
        dec_count <= 3;
    end
    dec_count <= dec_count - 1;
end





endmodule
