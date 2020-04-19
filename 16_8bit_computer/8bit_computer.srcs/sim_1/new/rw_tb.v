`timescale 1ns / 1ps


module rw_tb;

reg [7:0] data_i, addr;
reg clk, write;
wire [7:0] data_o;

rw uut(.data_i(data_i), .addr(addr), .write(write), .clk(clk), .data_o(data_o));

initial
begin
    clk = 1'b0;
    forever
    begin
        #1 clk = ~clk;
    end
    addr = 8'h00;
    write = 1'b0;
    data_i = 8'h00;
end

always@(posedge clk)
begin
    addr <= 8'd129;
    #2 addr <= 8'd129;
    #2 addr <= 8'd130;
    #2 addr <= 8'd130;
end

always@(posedge clk)
begin
    write <= 1'b1;
    #2 write <= 1'b0;
    #2 write <= 1'b1;
    #2 write <= 1'b0;
end

always@(posedge clk)
begin
    data_i <= 8'hff;
    #2 data_i <= 8'hxx;
    #2 data_i <= 8'hfe;
    #2 data_i <= 8'hxx;
end



endmodule
