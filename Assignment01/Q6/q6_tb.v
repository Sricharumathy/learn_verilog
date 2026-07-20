module demux_1_4_tb;
reg i,s1,s0;
wire [3:0]y;
demux_1_4 d1(.i(i),.s1(s1),.s0(s0),.y(y));
initial begin
$monitor ("Time=%0t  : i=%b s1=%b s0=%b y=%b",$time,i,s1,s0,y);
end
initial begin
i=1;
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;

$finish;
end
endmodule



