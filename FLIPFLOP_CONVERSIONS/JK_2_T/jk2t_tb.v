module jk2t_tb;
reg clk,rst,t;
wire q,q_bar;
jk2t dut(clk,rst,t,q,q_bar);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;t=1;#10;
rst=0;t=0;#10;
rst=0;t=1;#10;
end
initial begin
$monitor("Time=%0t clk=%b,rst=%b,t=%b,q=%b;q_bar=%b",$time,clk,rst,t,q,q_bar);
#40;
$finish;
end
endmodule
