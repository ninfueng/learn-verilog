`timescale 1ns / 1ps

module pc_tb;
reg [7:0] bus1;
reg pc_load, pc_inc, clk, rst;
wire [7:0] pc_o;

pc uut(.clk(clk), .rst(rst), .bus1(bus1), .pc_load(pc_load), .pc_inc(pc_inc), .pc_o(pc_o));


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
    rst = 1'b1; bus1 = 8'h1; pc_load = 1'b1; pc_inc = 1'b0; #20;
    rst = 1'b1; bus1 = 8'h2; pc_load = 1'b1; pc_inc = 1'b0; #20;
    rst = 1'b1; bus1 = 8'h3; pc_load = 1'b1; pc_inc = 1'b0; #20;
    rst = 1'b1; bus1 = 8'h4; pc_load = 1'b1; pc_inc = 1'b0; #20;
    rst = 1'b1; bus1 = 8'h5; pc_load = 1'b0; pc_inc = 1'b1; #20;
    rst = 1'b1; bus1 = 8'h6; pc_load = 1'b0; pc_inc = 1'b1; #20;
    rst = 1'b1; bus1 = 8'h7; pc_load = 1'b0; pc_inc = 1'b1; #20;
    rst = 1'b1; bus1 = 8'h8; pc_load = 1'b0; pc_inc = 1'b1; #20;
    rst = 1'b0; bus1 = 8'h9; pc_load = 1'b0; pc_inc = 1'b0; #20;
    rst = 1'b0; bus1 = 8'hA; pc_load = 1'b0; pc_inc = 1'b0; #20;
end

endmodule
