`timescale 1ns/10ps

module test_tb;

reg A,B;
wire Y;

test own_and(A,B,Y);

initial
	begin
        $dumpfile("test_tb.vcd");
        $dumpvars(0,test_tb);
		
		A = 0;
		B = 0;
	end

initial
	begin
		#10
		A = 1;
		
		#10
		A = 0;
		B = 1;
		
		#10
		A = 1;
		
		#10
		A = 0;
		B = 0;
		
	end

always @(Y)
	$display("time =%0t \t A =%b, B =%b and Y =%b",$time,A,B,Y);

endmodule