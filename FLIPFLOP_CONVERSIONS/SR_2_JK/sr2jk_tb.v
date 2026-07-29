module sr2jk_tb;
reg clk,rst,j,k;
wire q,q_bar;
sr2jk dut(clk,rst,j,k,q,q_bar);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
$monitor("Time=%0t clk=%b rst=%b j=%b k=%b q=%b q_bar=%b",$time,clk,rst,j,k,q,q_bar);
rst=1;j=1;k=0;#20;
rst=0;j=0;k=0;#20;
j=0;k=1;#20;
j=1;k=0;#20;
j=1;k=1;#20;
$finish;
end
endmodule
