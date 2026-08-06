module siso_tb();
reg clk,rst,sin;
wire sout;
wire [3:0] q;

siso dut(.clk(clk),.rst(rst),.serial_in(sin),.serial_out(sout),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t  ,clk=%b,rst=%b,sin=%b,q=%b,sout=%b",$time,clk,rst,sin,q,sout);
rst=1;#10;
rst=0;
sin=1;#10;
sin=1;#10;
sin=0;#10;
sin=1;#10;
#40;
$finish;
end 
endmodule
