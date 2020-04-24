`timescale 1ns / 1ps


module dec_counter(
    input wire clk, rst_n,
    input wire [7:0] inc_count,
    output reg [7:0] dec_count
    );
    
reg waiting;
initial
begin
    dec_count = 0;
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
        else if(inc_count == 6 && dec_count == 0)
        begin
            dec_count <= 3;
        end
        else if(inc_count == 6)
        begin
            dec_count = dec_count - 1;
                            //$display(dec_count);

            if(dec_count == 0)
            begin
                waiting = 1;

            end
        end
        
    end
end


endmodule