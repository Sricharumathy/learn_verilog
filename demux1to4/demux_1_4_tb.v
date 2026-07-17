module demux_1_4_tb;
reg i,s0,s1;
wire [3:0]y;
demux_1_4 d1(.i(i),.sel0(s0),.sel1(s1),.y(y));
initial begin
$monitor("i=%b s1=%b s0=%b | y=%b",i,s1,s0,y);
end
initial begin
i=1;s1=0;s0=0;#10;
i=1;s1=0;s0=1;#10;
i=1;s1=1;s0=0;#10;
i=1;s1=1;s0=1;#10;
$finish;
end
endmodule
