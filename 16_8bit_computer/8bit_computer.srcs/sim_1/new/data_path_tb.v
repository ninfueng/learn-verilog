`timescale 1ns / 1ps


module data_path_tb;

reg [7:0] from_mem;
reg clk, rst;
reg write, ir_load, mar_load, pc_load, 
    pc_inc, a_load, b_load, ccr_load;
reg [2:0] alu_sel;
reg [1:0] bus0_sel, bus1_sel;
wire [7:0] ir, to_mem, addr;
wire [3:0] ccr;

// Inner
wire [7:0] bus1_i, bus0_o;
wire [3:0] ccr_o, nzvc_o;
wire [7:0] a_o, b_o, ir_o, alu_o, mar_o, pc_o;

data_path uut(.from_mem(from_mem), .clk(clk), .rst(rst), .write(write),
              .ir_load(ir_load), .mar_load(mar_load), .pc_load(pc_load), .pc_inc(pc_inc), 
              .a_load(a_load), .b_load(b_load), .ccr_load(ccr_load), .alu_sel(alu_sel),
              .bus0_sel(bus0_sel), .bus1_sel(bus1_sel), .ir(ir), .to_mem(to_mem), .addr(addr),
              .ccr(ccr)//, 
              
//              .bus1_i(bus1_i), .bus0_o(bus0_o),
//              .ccr_o(ccr_o), .nzvc_o(nzvc_o),
//              .a_o(a_o), .b_o(b_o), .ir_o(ir_o), .alu_o(alu_o), .mar_o(mar_o), .pc_o(pc_o)

              );
initial
begin
    clk = 1'b0;
    rst = 1'b0; #5;
    forever
    begin
        clk = ~clk; rst = 1'b1; from_mem = 8'h86; #1; 
    end
end

always@(posedge clk)
begin
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b1;
    pc_load = 1'b0;
    pc_inc = 1'b0;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b01; #10;
    
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b0;
    pc_load = 1'b0;
    pc_inc = 1'b1;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b00; #10;
    
    
    write = 1'b0;
    ir_load = 1'b1;
    mar_load = 1'b0;
    pc_load = 1'b0;
    pc_inc = 1'b0;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b01; #10;
    
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b0;
    pc_load = 1'b0;
    pc_inc = 1'b0;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b00; #10;
    
    
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b1;
    pc_load = 1'b0;
    pc_inc = 1'b0;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b01; #10;
    
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b0;
    pc_load = 1'b0;
    pc_inc = 1'b1;
    a_load = 1'b0;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b00; #10;
     
    write = 1'b0;
    ir_load = 1'b0;
    mar_load = 1'b0;
    pc_load = 1'b0;
    pc_inc = 1'b0;
    a_load = 1'b1;
    b_load = 1'b0;
    ccr_load = 1'b0;
    alu_sel = 3'b000;
    bus0_sel = 2'b00;
    bus1_sel = 2'b10; #10;
end

endmodule
