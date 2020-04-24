`timescale 1ns / 1ps


module inc_counter(
    input wire clk, rst_n,
    input wire [7:0] dec_count,
    output reg [7:0] inc_count
    );
    
reg waiting;
initial
begin
    inc_count = 0;
    waiting = 0;
end

always@(posedge clk, negedge rst_n)
begin
    if(!rst_n)
    begin
        if(waiting)
        begin
            waiting <= waiting - 1;
        end
        else if(dec_count == 0 && inc_count == 6)
        begin
            inc_count <= 0;
        end
        else if(dec_count == 0)
        begin
            inc_count = inc_count + 1;
            if(inc_count == 6)
            begin
                waiting = 1;
            end
        end
        
    end
end

endmodule
