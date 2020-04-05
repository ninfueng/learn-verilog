`timescale 1ns / 1ps

primitive top(
    output x,
    input a, b, c
    );
    
    table
    // a b c: x;
    0 0 0: 0;
    0 0 1: 1;
    0 1 0: 0;
    0 1 1: 1;
    1 0 0: 1;
    1 0 1: 0;
    1 1 0: 1;
    1 1 1: 0;    
    endtable
    
endprimitive
