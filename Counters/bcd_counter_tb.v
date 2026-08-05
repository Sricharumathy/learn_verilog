module bcd_tb();
reg clk,rst;
wire [3:0] count;
bcd_counter dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t  |clk=%b|rst=%b|count=%b(%0t)|",$time,clk,rst,count,count);
rst=1;#10;
rst=0;#100;
$finish;
end
endmodule
