`timescale 1ns/10ps
`include "./full_adder.v"

module multiplier(A0,A1,A2,A3,B0,B1,B2,B3,P0,P1,P2,P3,P4,P5,P6,P7);

input A0,A1,A2,A3,B0,B1,B2,B3;
output P0,P1,P2,P3,P4,P5,P6,P7;
wire I01,I02,I03,I10,I11,I12,I13,I20,I21,I22,I23,I30,I31,I32,I33;
wire C1,C2,C3,C4,S2;
wire D1,D2,D3,D4,D5,D6,D7,J2,J3,J4,J5,J6;

and A00(P0,A0,B0);
and A01(I01,A0,B1);
and A02(I02,A0,B2);
and A03(I03,A0,B3);
and A10(I10,A1,B0);
and A11(I11,A1,B1);
and A12(I12,A1,B2);
and A13(I13,A1,B3);
and A20(I20,A2,B0);
and A21(I21,A2,B1);
and A22(I22,A2,B2);
and A23(I23,A2,B3);
and A30(I30,A3,B0);
and A31(I31,A3,B1);
and A32(I32,A3,B2);
and A33(I33,A3,B3);

half_adder H1(I01,I10,P1,C1);
half_adder H2(I20,I11,S2,C2);
full_adder F1(I02,S2,C1,P2,D1);
full_adder F2(I30,I21,C2,J2,D2);
full_adder F3(I12,I03,D1,J3,D3);
half_adder H3(J2,J3,P3,C3);
full_adder F4(I31,D2,D3,J4,D4);
full_adder F5(I22,I13,C3,J5,D5);
half_adder H4(J4,J5,P4,C4);
full_adder F6(I32,D4,D5,J6,D6);
full_adder F7(J6,I23,C4,P5,D7);
full_adder F8(D6,D7,I33,P6,P7);

endmodule