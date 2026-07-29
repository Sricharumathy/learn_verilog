module sr2t_tb;
reg clk,rst,t;
wire q;
sr2t dut(clk,rst,t,q);
initial begin
clk=0;
end
always #10 clk=~clk;
initial begin
$monitor("Time=%0t clk=%b,rst=%b,t=%b,q=%b",$time,clk,rst,t,q);
rst=1;t=0;
#20;
rst=0;t=1;
#20;
t=0;
#20;
t=1;
#20;
$finish;
end
endmodule

