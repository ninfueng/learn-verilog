`timescale 1ns / 1ps

module data_path(
    input wire [7:0] from_mem,
    input wire clk, rst, write, ir_load, mar_load, pc_load, 
               pc_inc, a_load, b_load, ccr_load,
    input wire [2:0] alu_sel,
    input wire [1:0] bus0_sel, bus1_sel,
    output wire [7:0] ir, 
    output reg [7:0] to_mem, addr,
    output wire [3:0] ccr
    );
    
reg [7:0] bus1_i, bus0_o;
wire [3:0] ccr_o, nzvc_o;
wire [7:0] a_o, b_o, ir_o, alu_o, mar_o, pc_o;

a u0(.clk(clk), .rst(rst), .a_load(a_load), .bus1(bus1_i), .a_o(a_o));
//b u1(.clk(clk), .rst(rst), .b_load(b_load), .bus1(bus1_i), .b_o(b_o));
//ccr u2(.clk(clk), .rst(rst), .ccr_load(ccr_load), .nzvc(ccr_o));
ir u3(.clk(clk), .rst(rst), .ir_load(ir_load), .ir_o(ir_o), .bus1(bus1_i));
//alu u4(.alu_sel(alu_sel), .nzvc(nzvc_o), .res(alu_o));
mar u5(.clk(clk), .rst(rst), .mar_load(mar_load), .mar_o(mar_o), .bus1(bus1_i));
pc u6(.clk(clk), .rst(rst), .pc_inc(pc_inc), .pc_load(pc_load), .pc_o(pc_o), .bus1(bus1_i));

// MUX for bus0, bus1
always@(bus0_sel, a_o, b_o, pc_o)
begin
    case (bus0_sel)
    2'b00: bus0_o = pc_o;
    2'b01: bus0_o = a_o;
    2'b10: bus0_o = b_o;
    default: bus0_o = 8'hxx;    
    endcase
    $display("%h %h %h", bus0_sel, a_o, b_o, pc_o, bus0_o);

end

always@(bus1_sel, from_mem, bus0_o, alu_o)
begin
    case (bus1_sel)
    2'b00: bus1_i = alu_o;
    2'b01: bus1_i = bus0_o;
    2'b10: bus1_i = from_mem;
    default: bus1_i = 8'hxx;
    endcase
end

always@(bus0_o, mar_o)
begin
    to_mem = bus0_o;
    addr = mar_o;
end

endmodule
