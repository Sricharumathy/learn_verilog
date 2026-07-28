module jk2d_tb;
reg clk,rst,d;
wire q,q_bar;
jk2d dut(clk,rst,d,q,q_bar);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
rst=1;d=0;#10;
rst=0;#10;
d=0;#10;
d=1;#10;
end
initial begin
$monitor("Time=%0t  ,clk=%b,rst=%b,d=%b,q=%b,q_bar=%b",$time,clk,rst,d,q,q_bar);
#80;
$finish;
end
endmodule
