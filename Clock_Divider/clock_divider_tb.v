module clk_divide_tb();
reg clk,rst;
wire clk_out;
wire [3:0] count;

clk_divide dut(clk,rst,clk_out,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t  |clk=%b|rst=%b|count=%b(%0d)|clk_out=%b",$time,clk,rst,count,count,clk_out);
rst=1;#10;
rst=0;#100;
$finish;
end
endmodule

