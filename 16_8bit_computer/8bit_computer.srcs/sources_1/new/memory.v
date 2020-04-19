`timescale 1ns / 1ps

module memory(
    input wire [7:0] addr, data_i,
    input wire clk, rst, write,
    //output reg [7:0] io_o,
    output reg [7:0] data_o
    );

wire [7:0] data_o_rom;
wire [7:0] data_o_rw;

wire [7:0] io_o0, io_o1, io_o2, io_o3, io_o4, io_o5, io_o6, 
           io_o7, io_o8, io_o9, io_o10, io_o11, io_o12, io_o13, io_o14, io_o15;

rom u0(.addr(addr), .clk(clk), .data_o(data_o_rom));
rw u1(.data_i(data_i), .addr(addr), .write(write), .clk(clk), .data_o(data_o_rw));
io u2(.data_i(data_i), .addr(addr), .write(write), .clk(clk), .rst(rst), 
      .io_o0(io_o0), .io_o1(io_o1), .io_o2(io_o2), .io_o3(io_o3), .io_o4(io_o4), .io_o5(io_o5), 
      .io_o6(io_o6), .io_o7(io_o7), .io_o8(io_o8), .io_o9(io_o9), .io_o10(io_o10), .io_o11(io_o11), 
      .io_o12(io_o12), .io_o13(io_o13), .io_o14(io_o14), .io_o15(io_o15));

always@(*)
begin: mux
    if(addr >= 0 && addr <= 127)
    begin
        data_o = data_o_rom;
    end
    
    else if(addr >= 128 && addr <= 223)
    begin
        data_o = data_o_rw;
    end
    
    else if(addr == 224)
    begin
        data_o = io_o0;
    end
    
    else if(addr == 225)
    begin
        data_o = io_o1;
    end 
    
    else if(addr == 226)
    begin
        data_o = io_o2;
    end 
    
    else if(addr == 227)
    begin
        data_o = io_o3;
    end 
    
    else if(addr == 228)
    begin
        data_o = io_o4;
    end 
    
    else if(addr == 229)
    begin
        data_o = io_o5;
    end
    
    else if(addr == 230)
    begin
        data_o = io_o6;
    end 
    
    else if(addr == 231)
    begin
        data_o = io_o7;
    end
    
    else if(addr == 232)
    begin
        data_o = io_o8;
    end
    
    else if(addr == 233)
    begin
        data_o = io_o9;
    end
    
    else if(addr == 234)
    begin
        data_o = io_o10;
    end
    
    else if(addr == 235)
    begin
        data_o = io_o11;
    end
     
    else if(addr == 236)
    begin
        data_o = io_o12;
    end
     
    else if(addr == 237)
    begin
        data_o = io_o13;
    end
     
    else if(addr == 238)
    begin
        data_o = io_o14;
    end
     
    else if(addr == 239)
    begin
        data_o = io_o15;
    end 
end
    
    
endmodule
