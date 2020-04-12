`timescale 1ns / 1ps

module top_tb;

reg [7:0] a, b;
wire cout;
wire [7:0] sum;

top uut(.a(a), .b(b), .cout(cout), .sum(sum));

initial
begin
    #10 a = 8'h00;
    b = 8'h00;
    $display("a: %d", a);
    
    #10 a = 8'h09;
    b = 8'h09;
    $display("a: %d", a);
    
    
    #10 a = 8'h0f;
    b = 8'h0f;
    $display("a: %d", a);
    
    #10 a = 8'hff;
    b = 8'hff;
    $display("a: %d", a);
    
    
//    #1 a = 8'o0;
//    b = 8'o1;
    
//    #1 a = 8'o1;
//    b = 8'o0;
    
//    #1 a = 8'o1;
//    b = 8'o1;

//    #1 a = 8'o2;
//    b = 8'o1;
    
//    #1 a = 8'o1;
//    b = 8'o2;

//    #1 a = 8'o2;
//    b = 8'o2;
    
//    #1 a = 8'o3;
//    b = 8'o3;

end


endmodule
