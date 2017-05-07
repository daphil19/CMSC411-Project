`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:51 05/06/2017
// Design Name:   fp_alu
// Module Name:   F:/411/cmpe411proj/alu_tb.v
// Project Name:  cmpe411proj
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg clk;
	reg ce;
	reg sclr;
	reg [5:0] operation;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire rdy;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	fp_alu uut (
		.clk(clk), 
		.ce(ce), 
		.sclr(sclr), 
		.rdy(rdy), 
		.result(result), 
		.operation(operation), 
		.a(a), 
		.b(b)
	);
	always 
		#5 clk <= ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		sclr = 0;
		operation = 1;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      sclr = 1; #10;
		sclr = 0;
		a = 32'b01000001001000000000000000000000;
		b = 32'b01000010010010000000000000000000;
		ce = 1;
		operation = 5'b00001;
		// Add stimulus here

	end
      
endmodule

