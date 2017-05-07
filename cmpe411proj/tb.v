`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:29:06 05/06/2017
// Design Name:   cordic
// Module Name:   F:/411/cmpe411proj/tb.v
// Project Name:  cmpe411proj
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cordic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [4:0] ADDR;
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	cordic uut (
		.ADDR(ADDR), 
		.clk(clk)
	);
	always
		#2 clk <= ~clk;
	initial begin
		// Initialize Inputs
		ADDR = 10;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      //ADDR = 1; #100; //ADDR = 2;  
		// Add stimulus here

	end
      
endmodule

