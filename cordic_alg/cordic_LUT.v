`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:05 04/26/2017 
// Design Name: 
// Module Name:    cordic_LUT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cordic_LUT(
    input [32:0] x_in,
	 input [4:0] addr,
    output [32:0] reg k_out,
    output [32:0] reg e_k_out,
	 output [4:0] reg addr_out,
    input CE
    );
	 
	 reg [31:0] LUT_k [0:31];
	 reg [31:0] LUT_e_k [0:31];
	 
	 parameter LAST = 32;
	 
	 initial begin
		$readmemh("", LUT_k);
		$readmemh("", LUT_e_k);
	 end
	 
	 always @ (posedge CE) begin //on enable
		if (addr == LAST) begin //hits last address..done
				k_out <= LUT_k[addr];
				e_k_out <= LUT_e_k[addr];
				addr_out <= addr;
		end else begin
			if (LUT_k[addr] <= x_in) begin
				k_out <= LUT_k[addr];
				e_k_out <= LUT_e_k[addr];
				addr_out <= addr;
			end else
			
				addr <= addr + 1; //increase count
			end
		end
	 
	 end


endmodule
