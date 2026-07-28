module tff_tb;
reg clk,rst,t;
wire q;
tff dut(clk,rst,t,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;t=0;#10;
rst=1;t=1;#10;
rst=0;t=0;#10;
rst=0;t=1;#10;
#40;
$finish;
end
initial begin
$monitor("Time=%0t clk=%b|rst=%b|t=%b|q=%b|",$time,clk,rst,t,q);
end
endmodule
