`timescale 1ns / 1ps


module io(
    input wire [7:0] addr, data_i,
    input wire write, clk, rst,
    output reg [7:0] io_o0, io_o1, io_o2, io_o3, io_o4, io_o5, io_o6,
    io_o7, io_o8, io_o9, io_o10, io_o11, io_o12, io_o13, io_o14, io_o15
    );

reg en;

always@(addr)
begin
    if((addr >= 224) && (addr <= 239))
    begin
        en = 1'b1;
    end
    else
    begin
        en = 1'b0;
        $display("Out of range of IO address; Not valid!!!.");

    end
end

begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o0 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 224))
            begin
                io_o0 <= data_i;
            end
        end
    end
end


begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o1 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 225))
            begin
                io_o1 <= data_i;
            end
        end
    end
end


begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o2 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 226))
            begin
                io_o2 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o3 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 227))
            begin
                io_o3 <= data_i;
            end
        end
    end
end


begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o4 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 228))
            begin
                io_o4 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o5 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 229))
            begin
                io_o5 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o6 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 230))
            begin
                io_o6 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o7 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 231))
            begin
                io_o7 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o8 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 232))
            begin
                io_o8 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o9 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 233))
            begin
                io_o9 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o10 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 234))
            begin
                io_o10 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o11 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 235))
            begin
                io_o11 <= data_i;
            end
        end
    end
end


begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o12 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 236))
            begin
                io_o12 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o13 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 237))
            begin
                io_o13 <= data_i;
            end
        end
    end
end



begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o14 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 238))
            begin
                io_o14 <= data_i;
            end
        end
    end
end


begin
    always@(posedge clk, negedge rst)
    begin
        if(!rst)
        begin
            io_o15 <= 8'h00;
        end
        else
        begin
            if((write) && (en) && (addr == 239))
            begin
                io_o15 <= data_i;
            end
        end
    end
end

endmodule
