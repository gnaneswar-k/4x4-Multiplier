`timescale 1ns/10ps
module test (A,B,Y);

input A,B;
output Y;
wire x1;

nand inst1(x1,A,B);
not inst2(Y,x1);

endmodule