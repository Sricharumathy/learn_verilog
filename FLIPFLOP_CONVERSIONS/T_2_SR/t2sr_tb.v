module t2sr_tb;
reg clk,rst,s,r;
wire q;
t2sr dut(clk,rst,s,r,q);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
rst=1;s=1;r=0;
#20;
rst=0;s=0;r=0;
#20;
s=0;r=1;
#20;
s=1;r=0;
#20;
s=0;r=0;
#20;
end
initial begin
$monitor("Time=%0t clk=%b rst=%b s=%b r=%b q=%b",$time,clk,rst,s,r,q);
#100;
$finish;
end
endmodule

