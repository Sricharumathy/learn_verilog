module sipo_tb();
reg clk,rst,si;
wire s0;
wire [3:0] q;
sipo dut(clk,rst,si,so,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;#10;
rst=0;
si=1;#10;
si=1;#10;
si=0;#10;
si=1;#10;
end
initial begin
$monitor("Time=%0t clk=%b rst=%b si=%b q=%b so=%b ",$time,clk,rst,si,q,so);
#100;
$finish;
end
endmodule
