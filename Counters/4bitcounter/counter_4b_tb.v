module counter_4b_tb();
reg clk,rst;
wire [3:0] counter;
counter_4b dut(.clk(clk),.rst(rst),.count(counter));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t   |clock=%b  | reset=%b | count=%b|",$time,clk,rst,counter);
rst=1;#10;
rst=0; #150;
$finish;
end
endmodule
