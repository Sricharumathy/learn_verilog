module jkff_tb;
reg clk,rst,j,k;
wire q;
jkff dut(clk,rst,j,k,q);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
rst=1;#10;
rst=0;#10;
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
end
initial begin
$monitor("Time=%0t  clk=%b|rst=%b|j=%b|k=%b|q=%b",$time,clk,rst,j,k,q);
#70;
$finish;
end
endmodule
