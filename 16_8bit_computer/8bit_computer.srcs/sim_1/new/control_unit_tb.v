`timescale 1ns / 1ps

module control_unit_tb;
reg clk, rst;
reg [7:0] ir;
reg [3:0] ccr;
wire write, ir_load, mar_load, pc_load, 
           pc_inc, a_load, b_load, ccr_load;
wire [2:0] alu_sel;
wire [1:0] bus0_sel, bus1_sel;

//wire [7:0] cur_state, next_state;

control_unit uut(.clk(clk), .rst(rst), .ir(ir), .ccr(ccr),
    .write(write), .ir_load(ir_load), .mar_load(mar_load),
     .pc_load(pc_load), .pc_inc(pc_inc), .a_load(a_load), 
    .b_load(b_load), .ccr_load(ccr_load), .alu_sel(alu_sel),
     .bus0_sel(bus0_sel), .bus1_sel(bus1_sel)//,
     //.cur_state_tmp(cur_state), .next_state_tmp(next_state)
     );
     
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
    rst = 1'b1; ir = 8'h86; ccr = 4'b0000; #20;
    rst = 1'b0; ir = 8'h86; ccr = 4'b0000; #20;
end
endmodule
