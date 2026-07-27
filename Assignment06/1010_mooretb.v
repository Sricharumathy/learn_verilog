module moore_1010_tb;
reg clk,rst,din;
wire detected;
moore_1010 dut(clk,rst,din,detected);
initial begin
{clk,rst,din}=0;
end
always #5 clk=~clk;
initial begin
rst=1'b1;#10;
rst=1'b0;#10;
din=1'b1;#10;
din=1'b1;#10;
din=1'b0;#10;
din=1'b1;#10;
din=1'b0;#10;
din=1'b1;#10;
end
initial begin
$monitor("Time=%0t  clk=%b | rst=%b | din=%b | detected=%b ",$time,clk,rst,din,detected);
#90;
$finish;
end
endmodule


