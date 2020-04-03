`timescale 1ns / 100ps

module top_tb;    
reg a, b, c;
wire f;
reg clk;
reg [3:0] i;

initial 
begin 
    clk = 0;
    i = 1'b000;
    assign a = i[0];
    assign b = i[1];
    assign c = i[2];
end

always
begin
    #10 clk = ~clk;
end

always @(posedge clk)
begin
    // Protect for overflowing.
    if (i == 3'b111) 
    begin
        i = 3'b000;
    end
    
    else
    begin
        i = i + 1'b1;
        assign a = i[0];
        assign b = i[1];
        assign c = i[2];
    end
end

top uut (.a(a), .b(b), .c(c), .f(f));

endmodule
