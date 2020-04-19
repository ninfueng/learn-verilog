`timescale 1ns / 1ps


module ir_tb;
reg [7:0] bus1;
reg ir_load, clk, rst;
wire [7:0] ir_o;

ir uut(.clk(clk), .ir_load(ir_load), .rst(rst), .bus1(bus1), .ir_o(ir_o));

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
    rst <= 1'b1; bus1 = 8'h1; ir_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h2; ir_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h3; ir_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h4; ir_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h5; ir_load = 1'b1; #10;
    rst <= 1'b1; bus1 = 8'h6; ir_load = 1'b1; #10;
    // Test load.
    rst <= 1'b1; bus1 = 8'h7; ir_load = 1'b0; #10;
    rst <= 1'b1; bus1 = 8'h8; ir_load = 1'b0; #10;
    // Test rst.
    rst <= 1'b0; bus1 = 8'h9; ir_load = 1'b1; #10;
    rst <= 1'b0; bus1 = 8'hA; ir_load = 1'b1; #10;
end



endmodule
