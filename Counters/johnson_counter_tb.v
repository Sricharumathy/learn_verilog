module johnson_tb();
reg clk,rst;
wire [3:0] count;

johnson_counter dut(clk,rst,count);
initial begin
clk=0;
end
always #5 clk=~clk;
initial begin
$monitor("clk=%b rst=%b count=%b",clk,rst,count);
rst=1;#10;
rst=0;#100;
$finish;
end
endmodule

