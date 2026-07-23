module siso3b_tb;
reg clk,rst,d;
wire out;
siso3b dut(.clk(clk),.rst(rst),.din(d),.dout(out));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
d=1;
rst = 1;
#15 rst = 0;
d=3'b1;#15;
d=3'b0;#15;
d=3'b1;#15;
end
initial begin
$monitor("Time=%0t    , d=%b ,out=%b",$time,d,out);
#50;
$finish;
end
endmodule


