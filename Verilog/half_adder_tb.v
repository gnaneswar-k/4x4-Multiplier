`timescale 1ns/10ps
module half_adder_tb;

reg A,B;
wire S,C;
integer i,k;

half_adder half_add(A,B,S,C);

initial
	begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0,half_adder_tb);
		
		A = 0;
		B = 0;
	end

initial begin
	for (i = 1; i <=4; i = i + 1)
		begin
			#10
			k = i;
			A = k % 2;
			k = k / 2;
			
			B = k % 2;
		end
end

always @(S,C)
	$display("time =%0t \t A =%b, B =%b and S =%b, C =%b",$time,A,B,S,C);

endmodule