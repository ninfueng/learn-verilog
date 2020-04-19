`timescale 1ns / 1ps

module b_tb;
reg b_load, clk, rst;
reg [7:0] bus1;
wire [7:0] b_o;

//a uut(.clk(clk), .a_load(a_load), .rst(rst), .bus1(bus1), .a_o(a_o));
b uut(.clk(clk), .b_load(b_load), .rst(rst), .bus1(bus1), .b_o(b_o));

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
    rst <= 1'b1; bus1 = 8'h1; b_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h2; b_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h3; b_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h4; b_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h5; b_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h6; b_load = 1'b1; #10;
    // Test load.
    rst <= 1'b1; bus1 = 8'h7; b_load = 1'b0; #10;
    rst <= 1'b1; bus1 = 8'h8; b_load = 1'b0; #10;
    // Test rst.
    rst <= 1'b0; bus1 = 8'h9; b_load = 1'b1; #10;
    rst <= 1'b0; bus1 = 8'hA; b_load = 1'b1; #10;
end

endmodule
