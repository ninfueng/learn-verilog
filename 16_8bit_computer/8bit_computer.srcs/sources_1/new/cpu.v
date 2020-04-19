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

//wire [7:0] bus1_i, bus0_o;
//wire [3:0] ccr_o, nzvc_o;
//wire [7:0] a_o, b_o, ir_o, alu_o, mar_o, pc_o;

initial
begin
    ir = 8'h86;
end


control_unit u0(.clk(clk), .rst(rst), .write(write), 
                .ir_load(ir_load), .mar_load(mar_load), .pc_load(pc_load), .pc_inc(pc_inc), 
                .a_load(a_load), .b_load(b_load), .ccr_load(ccr_load), .alu_sel(alu_sel),
                .bus0_sel(bus0_sel), .bus1_sel(bus1_sel), .ir(ir), .ccr(ccr)
                );
wire ir_load_a;
wire mar_load_a;
wire pc_load_a;
wire pc_inc_a;
wire a_load_a;
wire b_load_a;
wire ccr_load_a;
wire [2:0] alu_sel_a;
wire [1:0] bus0_sel_a, bus1_sel_a;
wire [7:0] ir_a;
wire [3:0] ccr_a;
wire clk_a, rst_a;
wire write_a;

assign ir_load_a = ir_load;
assign mar_load_a = mar_load;
assign pc_load_a = pc_load;
assign pc_inc_a = pc_inc;
assign a_load_a = a_load;
assign b_load_a = b_load;
assign ccr_load_a = ccr_load;
assign alu_sel_a = alu_sel;
assign bus0_sel_a = bus0_sel;
assign bus1_sel_a = bus1_sel;
assign ir_a = ir;
assign ccr_a = ccr;
assign clk_a = clk;
assign rst_a = rst;
assign write_a = write;


data_path u1(.clk(clk_a), .rst(rst_a), .write(write_a),
            .ir_load(ir_load_a), .mar_load(mar_load_a), .pc_load(pc_load_a), .pc_inc(pc_inc_a), 
            .a_load(a_load_a), .b_load(b_load_a), .ccr_load(ccr_load_a), .alu_sel(alu_sel_a),
            .bus0_sel(bus0_sel_a), .bus1_sel(bus1_sel_a), .ir(ir_a), .ccr(ccr_a),
            .from_mem(from_mem), .to_mem(to_mem), .addr(addr)
            );
            
endmodule
