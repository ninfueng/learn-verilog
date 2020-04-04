`timescale 1ns / 100ps

module clk_tb;    
reg clk;
	
initial 
begin 
    clk = 0;
end

always
begin
    #10 clk = ~clk;
end

always @(posedge clk)
begin
    // Protect for overflowing.
	$display(clk);
end
	
// Add the test module.

endmodule
