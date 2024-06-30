`timescale 1ns/10ps
module multiplier_tb;

reg A0,A1,A2,A3,B0,B1,B2,B3;
wire P0,P1,P2,P3,P4,P5,P6,P7;

multiplier multi(A0,A1,A2,A3,B0,B1,B2,B3,P0,P1,P2,P3,P4,P5,P6,P7);

initial begin
    $dumpfile("multiplier_tb.vcd");
    $dumpvars(0,multiplier_tb);
	
	A0 = 0;
	A1 = 0;
	A2 = 0;
	A3 = 0;
	B0 = 0;
	B1 = 0;
	B2 = 0;
	B3 = 0;
end

initial begin
	#10
	A0 = 0;
	A1 = 0;
	A2 = 0;
	A3 = 0;
	B0 = 1;
	B1 = 1;
	B2 = 1;
	B3 = 1;
	
	#10
	A0 = 1;
	A1 = 1;
	A2 = 1;
	A3 = 1;
	B0 = 0;
	B1 = 0;
	B2 = 0;
	B3 = 0;
	
	#10
	A0 = 0;
	A1 = 1;
	A2 = 1;
	A3 = 0;
	B0 = 0;
	B1 = 1;
	B2 = 1;
	B3 = 0;
	
	#10
	A0 = 0;
	A1 = 1;
	A2 = 0;
	A3 = 0;
	B0 = 0;
	B1 = 0;
	B2 = 1;
	B3 = 1;
	
	#10
	A0 = 1;
	A1 = 0;
	A2 = 0;
	A3 = 1;
	B0 = 1;
	B1 = 0;
	B2 = 0;
	B3 = 1;
	
	#10
	A0 = 0;
	A1 = 0;
	A2 = 0;
	A3 = 1;
	B0 = 1;
	B1 = 0;
	B2 = 0;
	B3 = 1;
	
	#10
	A0 = 0;
	A1 = 1;
	A2 = 0;
	A3 = 1;
	B0 = 1;
	B1 = 0;
	B2 = 1;
	B3 = 0;
	
	#10
	A0 = 1;
	A1 = 0;
	A2 = 1;
	A3 = 0;
	B0 = 0;
	B1 = 1;
	B2 = 0;
	B3 = 1;
	
	#10
	A0 = 1;
	A1 = 1;
	A2 = 1;
	A3 = 1;
	B0 = 1;
	B1 = 1;
	B2 = 1;
	B3 = 1;
	
	#10
	A0 = 0;
	A1 = 0;
	A2 = 0;
	A3 = 0;
	B0 = 0;
	B1 = 0;
	B2 = 0;
	B3 = 0;
end

endmodule