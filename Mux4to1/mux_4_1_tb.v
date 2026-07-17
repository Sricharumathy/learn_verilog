module mux_4_1_tb;
reg [3:0]i;
reg sel1,sel0;
wire out;
mux_4_1 m2(.i(i),.s1(sel1),.s0(sel0),.y(out));
initial begin
$monitor("Time=%0t i=%b,sel1=%b,sel0=%b,out=%b",$time,i,sel1,sel0,out);
end
initial begin
	i=4'b0110;
#10 sel0=0;sel1=0;
#10 sel0=0;sel1=1;
#10 sel0=1;sel1=0;
#10 sel0=1;sel1=1;
end
endmodule
