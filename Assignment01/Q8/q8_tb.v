module glitchfree_clk_tb;
reg pclk_62_5,pclk_250;
reg [1:0] rate;
wire pclk;
glitchfree_clk g1(.pclk_62_5(pclk_62_5),.pclk_250(pclk_250),.rate(rate),.pclk(pclk));
initial begin
pclk_62_5=0;
forever #8  pclk_62_5=~pclk_62_5;
end
initial begin
pclk_250=0;
forever #2 pclk_250=~pclk_250;
end
initial begin
rate=2'b00; #10;
rate=2'b10; #10;
rate=2'b01; #10;
end
initial begin
$monitor("Time=%0t | rate=%b | pclk_62_5=%b | pclk_250=%b | pclk=%b",$time, rate, pclk_62_5, pclk_250, pclk);
#30;
$finish;
end
endmodule


