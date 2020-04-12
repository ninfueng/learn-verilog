`timescale 1ns / 1ps


module broadcast_and(
    input wire [7:0] a,
    wire [0:0] b,
    output wire [7:0] x
    );
    
and u0(x[0], a[0] , b);
and u1(x[1], a[1] , b);
and u2(x[2], a[2] , b);
and u3(x[3], a[3] , b);
and u4(x[4], a[4] , b);
and u5(x[5], a[5] , b);
and u6(x[6], a[6] , b);
and u7(x[7], a[7] , b);

endmodule

