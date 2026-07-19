module demux_1_8_tb;
reg i,s2,s1,s0;
wire [7:0]y;
demux_1_8 d1(.i(i),.s2(s2),.s1(s1),.s0(s0),.y(y));
initial begin
i=1;
s2=0;s1=0;s0=0;#10;
s2=0;s1=0;s0=1;#10;
s2=0;s1=1;s0=0;#10;
s2=0;s1=1;s0=1;#10;
s2=1;s1=0;s0=0;#10;
s2=1;s1=0;s0=1;#10;
s2=1;s1=1;s0=0;#10;
s2=1;s1=1;s0=1;#10;
end
initial begin
$monitor("Time=%0t  | i=%b | s2=%b | s1=%b | s0=%b | y=%b ",$time,i,s2,s1,s0,y);
#100;
$finish;
end
endmodule

