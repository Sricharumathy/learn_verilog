module counter_widenable_tb();
reg clk,rst,enb,dir;
wire [2:0] count;
counter_enb dut(clk,rst,enb,dir,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t   |clk=%b|rst=%b|enb=%b|dir=%b|count=%b(%0d)",$time,clk,rst, enb,dir,count,count);
rst=1;#10;
rst=0;enb=1;
dir=1;#70;
enb=0;#10;
enb=1;dir=0;#70;
$finish;
end
endmodule


