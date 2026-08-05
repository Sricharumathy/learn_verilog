module ring_tb();
reg clk,rst;
wire [3:0] count;

ring_counter dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor ("clk=%b | rst=%b| count=%b",clk,rst,count);
rst=1;#10;
rst=0;#30;
$finish;
end
endmodule
