  module updown_tb();
  reg clk, rst,dir;
  wire [2:0] count;
  updown dut(clk,rst,dir,count);
  initial begin
  clk=0;
  rst=0;
  forever #5 clk=~clk;
  end
  initial begin
  $monitor("Time = %0t   | clk=%b|rst=%b|dir=%b|count=%d",$time,clk,rst,dir,count);
  rst=1;#10;
  rst=0;dir=1;#70;
  dir=0;#70;
  $finish;
  end
  endmodule
