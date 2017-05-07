`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:30 05/05/2017 
// Design Name: 
// Module Name:    cordic 
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
module cordic(
    input [4:0] ADDR,
	 input clk
    );
	 
	 reg [31:0] read_mem [0:11]; //IEEE 754
	 reg [31:0] write_mem [0:11]; //IEEE 754
	 
	 reg [31:0] alpha [0:14]; //IEEE 754
	 reg [31:0] powers [0:15]; //IEEE 754
	 
	 
	 reg [31:0] ieee_angle; //IEEE 754
	 reg [31:0] x, y, newx, tx, ty; //2s comp
	 reg [31:0] x_out, y_out, ex_out, currangle, start; //IEEE 754
	 
	 
	 //reg for ip cores
	 reg alu_en, alu_rst, comp_en, comp_rst;
	 reg [5:0] alu_op, comp_op;
	 reg [31:0] alu_a, alu_b, comp_a, comp_b;
	 wire alu_rdy, comp_rdy;
	 wire [31:0] alu_result;
	 wire [0:0] comp_result;
	 
	 integer BAD;
	 
	 reg cont;
	 integer i,j, rv, fd_alpha, fd_powers, fd_readm, fd_out;
	 parameter AG = 2458; //1.2 * 2048
	 
	 parameter [5:0] 	add 		= 6'b000000,
							subtract = 6'b000001,
							lessthan = 6'b001100,
							equal		= 6'b010100,
							lessoreq = 6'b011100,
							greater	= 6'b100100,
							notequal = 6'b101100,
							greatoreq	= 6'b110100;
							
	 
		fp_alu fp_alu (
				.a(alu_a), 					// input [31 : 0] a
				.b(alu_b), 					// input [31 : 0] b
				.operation(alu_op), 		// input [5 : 0] operation
				.clk(clk), 					// input clk
				.ce(alu_en), 				// input ce
				.sclr(alu_rst),			// input sclr
				.result(alu_result), 	// output [31 : 0] result
				.rdy(alu_rdy) 				// output rdy
		);
		
		fp_core fp_comp (
				.a(comp_a), 				// input [31 : 0] a
				.b(comp_b), 				// input [31 : 0] b
				.operation(comp_op), 	// input [5 : 0] operation
				.clk(clk), 					// input clk
				.ce(comp_en), 				// input ce
				.sclr(comp_rst),			// input sclr
				.result(comp_result),	// output [0 : 0] result
				.rdy(comp_rdy) 			// output rdy
		);
	 
	 
	 initial begin
		//read file for alpha, powers, and read_mem
		fd_alpha = $fopen("alpha.txt","r");
		fd_powers= $fopen("powers.txt", "r");
		fd_readm = $fopen("read_mem.txt", "r");
	 
		for (i = 0; i < 15; i = i + 1) begin
			rv = $fscanf(fd_alpha, "%b\n", alpha[i]);
		end
		
		for (i = 0; i < 16; i = i + 1) begin
			rv = $fscanf(fd_powers, "%b\n", powers[i]);
		end
	 
		for (i = 0; i < 11; i = i + 1) begin
			rv = $fscanf(fd_readm, "%b\n", read_mem[i]);
		end
		
		$fclose(fd_alpha);
		$fclose(fd_powers);
		$fclose(fd_readm);
	end //initial
	 
	 always @ (ADDR) begin
		ieee_angle = read_mem[ADDR];
		
		x = AG;
		y = 0;
		currangle = ieee_angle;
		
		//DUMMY ADD
		alu_rst = 1;
		#4 alu_rst = 0;
		alu_a = alpha[1];
		alu_b = alpha[1];
		alu_op = add;
		alu_en = 1; 
		#80; 
		alu_en = 0;
		if (alu_rdy) begin start = alu_result; end else begin BAD = 1; end
		
		
		for (i = 1; i < 15; i = i + 1) begin
			if (!currangle[31]) begin
				tx = (y >> i);
				ty = (x >> i );
				newx 	= x + (y >> i);
				y 		= y + (x >> i);
				x 		= newx;
				
				//currangle = currangle - alpha[i]
				alu_rst = 1;
				#4 alu_rst = 0;
				alu_a = currangle;
				alu_b = alpha[i];
				alu_op = subtract;
				alu_en = 1; 
				#80; 
				alu_en = 0;
				if (alu_rdy) begin currangle = alu_result; end else begin BAD = 1; end
				
			end else begin
				// if (currangle <= 0)
				tx = (y >> i);
				ty = (x >> i );
				newx 	= x - (y >> i);
				y 		= y - (x >> i);
				x 		= newx;
			
				//currangle = currangle + alpha[i]
				alu_rst = 1;
				#4 alu_rst = 0;
				alu_a = currangle;
				alu_b = alpha[i];
				alu_op = add;
				alu_en = 1; 
				#80;
				alu_en = 0;
				if (alu_rdy) begin  currangle = alu_result; end else begin BAD = 1; end
				
			end
		end // for loop
			
		x_out = 0;
		y_out = 0;
		
		for (i = 0; i < 13; i = i + 1) begin
			if (x[i] == 1'b1) begin
				//x_out = x_out + powers[i]
				alu_rst = 1;
				#4 alu_rst = 0;
				alu_a = x_out;
				alu_b = powers[i];
				alu_op = add;
				alu_en = 1; 
				#80;
				alu_en = 0;
				if (alu_rdy) begin  x_out = alu_result; end else begin BAD = 1; end
			end //end if (x[i])
			
			if (y[i] == 1'b1) begin
				//y_out = y_out + powers[i]
				alu_rst = 1;
				#4 alu_rst = 0;
				alu_a = y_out;
				alu_b = powers[i];
				alu_op = add;
				alu_en = 1; 
				#80;
				alu_en = 0;
				if (alu_rdy == 1) begin y_out = alu_result; end else begin BAD = 1; end
				
				
			end // end if (y[i])
		end //end for loop
		
		//ex_out = x_out + y_out
		alu_rst = 1;
		#4 alu_rst = 0;
		alu_a = x_out;
		alu_b = y_out;
		alu_op = add;
		alu_en = 1; 
		#80;
		alu_en = 0;
		if (alu_rdy) begin ex_out = alu_result; end else begin BAD = 1; end
		
		
		begin : write
			fd_out = $fopen("mem_out.txt", "w");
			$fwrite(fd_out, "%b\n", x_out);
			$fwrite(fd_out, "%b\n", y_out);
			$fwrite(fd_out, "%b\n", ex_out);
			$fclose(fd_out);
			write_mem[0] = x_out;
			write_mem[1] = y_out;
			write_mem[2] = ex_out; 
		end
		
	end // end always
	 
endmodule
