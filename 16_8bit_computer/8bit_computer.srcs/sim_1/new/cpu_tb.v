`timescale 1ns / 1ps


module cpu_tb;
reg clk, rst;
reg [7:0] from_mem;
wire [7:0] to_mem, addr;
wire write;

cpu uut(.clk(clk), .rst(rst), .from_mem(from_mem), 
        .to_mem(to_mem), .addr(addr), .write(write)
        );

initial
begin
    clk = 1'b0;
    rst = 1'b0; #5;
    forever
    begin
        clk = ~clk; rst = 1'b1; from_mem = 8'h86; #1; 

    end
end


endmodule
