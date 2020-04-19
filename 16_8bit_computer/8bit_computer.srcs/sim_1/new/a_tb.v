`timescale 1ns / 1ps

module a_tb;
reg a_load, clk, rst;
reg [7:0] bus1;
wire [7:0] a_o;

a uut(.clk(clk), .a_load(a_load), .rst(rst), .bus1(bus1), .a_o(a_o));

initial
begin
    clk = 1'b0;
    rst = 1'b1;
    forever
    begin
        #1 clk = ~clk;
    end
end

always@(posedge clk)
begin
    rst <= 1'b1; bus1 = 8'h1; a_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h2; a_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h3; a_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h4; a_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h5; a_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h6; a_load = 1'b1; #10;
    // Test load.
    rst <= 1'b1; bus1 = 8'h7; a_load = 1'b0; #10;
    rst <= 1'b1; bus1 = 8'h8; a_load = 1'b0; #10;
    // Test rst.
    rst <= 1'b0; bus1 = 8'h9; a_load = 1'b1; #10;
    rst <= 1'b0; bus1 = 8'hA; a_load = 1'b1; #10;
end

endmodule
