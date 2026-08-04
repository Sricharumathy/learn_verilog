module upcounter_4b_tb();
reg clk,rst;
wire [3:0] count;
up_4b dut (clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t    | clk==%b | rst=%b | count=%b (count=%d)|",$time,clk,rst,count,count);
rst=1;#10;
rst=0;#170;
$finish;
end
endmodule

