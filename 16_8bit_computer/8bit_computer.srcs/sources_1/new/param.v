`ifndef PARAM_H
`define PARAM_H
    // Instruction.
    localparam LDA_IMM = 8'h86;

    // State.    
    localparam S_FETCH0 = 0;
    localparam S_FETCH1 = 1;
    localparam S_FETCH2 = 2;
    
    localparam S_DECODE3 = 3;
    
    localparam S_LDA_IMM4 = 4;
    localparam S_LDA_IMM5 = 5;
    localparam S_LDA_IMM6 = 6;

`endif
