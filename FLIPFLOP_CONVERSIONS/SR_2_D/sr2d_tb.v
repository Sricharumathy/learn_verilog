module sr2d_tb;
reg clk,rst,d;
wire q,q_bar;
sr2d dut(clk,rst,d,q,q_bar);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
$monitor("Time=%0t clk=%b,rst=%b,d=%b,q=%b,q_bar=%b",$time,clk,rst,d,q,q_bar);
rst=1;d=0;#20;
rst=0;d=1;#20;
d=0;#20;
$finish;
end
endmodule

