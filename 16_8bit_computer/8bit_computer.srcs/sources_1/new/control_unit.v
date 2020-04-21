`timescale 1ns / 1ps

module control_unit(
    input wire [7:0] ir,
    input wire [3:0] ccr,
    input wire clk, rst,
    output reg write, ir_load, mar_load, pc_load, 
               pc_inc, a_load, b_load, ccr_load,
    output reg [2:0] alu_sel,
    output reg [1:0] bus0_sel, bus1_sel
    );
`include "param.v"
reg [7:0] cur_state, next_state;
initial
begin
    cur_state <= S_FETCH0;
end


always@(posedge clk, negedge rst)
begin
    if(!rst)
    begin
        cur_state <= S_FETCH0;
    end
    else
    begin
        cur_state <= next_state;
    end
end

always@(cur_state)
begin
    case(cur_state)
        S_FETCH0: next_state = S_FETCH1;
        S_FETCH1: next_state = S_FETCH2;
        S_FETCH2: next_state = S_DECODE3;
        
        S_DECODE3:
        begin
            if(ir == LDA_IMM)
            begin
                next_state = S_LDA_IMM4;
            end
            
            //else if
        end
        
        S_LDA_IMM4: next_state = S_LDA_IMM5;
        S_LDA_IMM5: next_state = S_LDA_IMM6;
        S_LDA_IMM6: next_state = S_FETCH0;
        
        default: $display("Instruction out of range !!!");
    endcase
end


always@(cur_state)
begin
    case(cur_state)
        S_FETCH0: // Load from_mem to MAR.
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
            //Out, 00:PC , 01:A , 10:B.
            //In, 00:ALU, 01:Bus0, 10:from_mem.
            bus0_sel = 2'b00;
            bus1_sel = 2'b01;
        end
        
        S_FETCH1: // Incremental
        begin
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
            bus1_sel = 2'b00;
        end
        
        S_FETCH2: // Load the instruction into IR.
        begin
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
            bus1_sel = 2'b01;
        end
        
        S_DECODE3: // This state will automatically move to other state. No output.
        begin
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
            bus1_sel = 2'b00;
        end
        
        S_LDA_IMM4: // 
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
            bus1_sel = 2'b01;
        end
        
        S_LDA_IMM5: // 
        begin
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
            bus1_sel = 2'b00;
        
        end
        S_LDA_IMM6: //
        begin
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
            bus1_sel = 2'b10;
        end
        default:
        begin
            $display("Generate outputs from state is out of range !!!");
        end 
    endcase    
end

endmodule
