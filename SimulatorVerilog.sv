// Code your design here

module cordic(
  input real z,
  input [2:0] dummy,
  output sin,
  output cos
);
  reg [31:0] x, y, newx;
  reg real alpha [0:15];
  reg real powers [0:16];
  reg real x_out, y_out, e_x, currangle;
  integer i;
  reg real AG_CONST, AG;
  initial begin
    AG_CONST = 1.20;///0.6072529350;
    
    AG = 2458;
    
    x = AG;
    y = 0;
    alpha[0] = 0;
    alpha[1] = 31.47292;
    alpha[2] = 14.63407;
    alpha[3] =  7.19962;
    alpha[4] =  3.58565;
    alpha[5] =  1.79107;
    alpha[6] =  0.89531;
    alpha[7] =  0.44763;
    alpha[8] =  0.22381;
    alpha[9] =  0.11190;
    alpha[10] = 0.05595;
    alpha[11] = 0.02797;
    alpha[12] = 0.01398;
    alpha[13] = 0.00699;
    alpha[14] = 0.00349;
    alpha[15] = 0.00174;

    powers[0] = 0.00048828125; //2^-11
    powers[1] = 0.0009765625; //2^-10
    powers[2] = 0.001953125; //2^-9
    powers[3] = 0.00390625;	//2^-8
    powers[4] = 0.0078125;	//2^-7
    powers[5] = 0.015625;	//2^-6
    powers[6] = 0.03125;	//2^-5
    powers[7] = 0.0625;	//2^-4
    powers[8] = 0.125;		//2^-3
    powers[9] = 0.25;		//2^-2
    powers[10] = 0.5; 		//2^-1
    powers[11] = 1.0;
    powers[12] = 2.0;
    powers[13] = 4.0;
    powers[14] = 8.0;
    powers[15] = 16.0;
    powers[16] = 32.0;
  

    currangle = 30.0;//$bitstoreal(z); 
    
    $display("%f\t%f\n",currangle, z);     
    $display("DUMMY %b", dummy);
    
    for (i = 1; i < 15; i = i + 1) begin
      if (currangle > 0) begin
        while(currangle >= alpha[i]) begin
          newx = x + (y>>i);
          y = y+ (x >> i);
      	x = newx;
          currangle = currangle - alpha[i];
        end
      end else begin
        while(currangle <= alpha[i]) begin
          newx = x - (y>>i);
          y = y- (x >> i);
      	x = newx;
          currangle = currangle + alpha[i];
        end 
    end 
    end 
    
    $display("x %f\n", x/2048.0);
    $display("y %f\n", y/2048.0);
    
    x_out = 0;
    y_out = 0;
    for (i = 0; i < 17; i = i + 1) begin
      x_out = (x[i]) ? x_out + powers[i] : x_out;
      y_out = (y[i]) ? y_out + powers[i] : y_out;
    end
    e_x = x_out+y_out;
    $display("x %f\n", x_out);
    $display("y %f\n", y_out);
    $display("e %f\n", e_x);
  end
  
  assign sin = y_out;
  assign cos = x_out;
  

  endmodule



  
