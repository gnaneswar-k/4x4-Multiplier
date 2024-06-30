`timescale 1ns/10ps
`include "./half_adder.v"
module full_adder (A,B,Cin,S,C);

input A,B,Cin;
output S,C;
wire S1,C1,X;

half_adder inst1(A,B,S1,C1);
half_adder inst2(Cin,S1,S,X);
or inst3(C,X,C1);

endmodule