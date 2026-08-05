module mod_n_tb();
reg clk,rst;
wire [2:0] count;

mod_n #(5) dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t  |clk=%b|rst=%b|count=%b(%0d)|",$time,clk,rst,count,count);
rst=1;#10;
rst=0;#60;
$finish;
end
endmodule
