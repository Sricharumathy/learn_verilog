module srff_tb;
reg clk,rst,s,r;
wire q;
srff dut(clk,rst,s,r,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;#10;
rst=0;
s=0;r=0;#10;
s=0;r=1;#10;
s=0;r=0;#10;
s=1;r=1;#10;
s=0;r=0;#10;
s=1;r=0;#10;
end
initial begin
$monitor("Time=%0t  clk=%b;rst=%b,s=%b,r=%b,q=%b",$time,clk,rst,s,r,q);
#90;
$finish ;
end
endmodule

