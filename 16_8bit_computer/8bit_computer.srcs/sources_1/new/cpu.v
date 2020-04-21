`timescale 1ns / 1ps

module cpu(
    input wire clk, rst, 
    input wire [7:0] from_mem,
    output wire [7:0] to_mem, addr,
    output wire write
    );
    
// Put wire from control to datapath.
wire [1:0] bus0_sel, bus1_sel;
wire ir_load, mar_load, pc_load, pc_inc, a_load, b_load, ccr_load;
wire [2:0] alu_sel;
reg [7:0] ir;
wire [3:0] ccr;

initial
begin
    ir = 8'h86;
end

control_unit u0(.clk(clk), .rst(rst), .write(write), 
                .ir_load(ir_load), .mar_load(mar_load), .pc_load(pc_load), .pc_inc(pc_inc), 
                .a_load(a_load), .b_load(b_load), .ccr_load(ccr_load), .alu_sel(alu_sel),
                .bus0_sel(bus0_sel), .bus1_sel(bus1_sel), .ir(ir), .ccr(ccr)
                );

assign ir_a = ir;
data_path u1(.clk(clk), .rst(rst), .write(write),
            .ir_load(ir_load), .mar_load(mar_load), .pc_load(pc_load), .pc_inc(pc_inc), 
            .a_load(a_load), .b_load(b_load), .ccr_load(ccr_load), .alu_sel(alu_sel),
            .bus0_sel(bus0_sel), .bus1_sel(bus1_sel), .ir(ir_a), .ccr(ccr),
            .from_mem(from_mem), .to_mem(to_mem), .addr(addr)
            );
endmodule
