`timescale 1ns/10ps
module half_adder (A,B,S,C);

input A,B;
output S,C;

xor inst1(S,A,B);
and inst2(C,A,B);

endmodule