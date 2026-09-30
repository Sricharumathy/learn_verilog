module mux_4_1_tb;
reg [3:0] i;
reg s1,s0;
wire y;
mux_4_1 m1(.i(i),.s1(s1),.s0(s0),.y(y));
initial begin
i=4'b0101;
#10;s1=0;s0=0;
#10;s1=0;s0=1;
#10;s1=1;s0=0;
#10;s1=1;s0=1;
end
initial begin
$monitor("Time=%0t   :i=%b s1=%b s0=%b | y=%b",$time,i,s1,s0,y);
#50;
$finish;
end
endmodule 
