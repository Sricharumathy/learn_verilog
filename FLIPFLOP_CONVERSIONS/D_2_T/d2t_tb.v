module d2t_tb;
reg clk,rst,t;
wire q;
d2t dut(clk,rst,t,q);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
rst=1;t=1;
#20;
rst=0;t=0;
#20;
t=1;
#20;
t=1;
#20;
t=0;
#20;
t=1;
#20;
end
initial begin 
$monitor("Time=%0t ,clk=%b,rst=%b,t=%b,q=%b",$time,clk,rst,t,q);
#120;
$finish;
end
endmodule

