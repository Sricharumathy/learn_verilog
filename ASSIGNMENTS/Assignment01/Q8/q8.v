module glitchfree_clk(input pclk_62_5,pclk_250,input [1:0]rate,output reg pclk);
wire sel0,sel1;
assign sel0=(rate==2'b00);
assign sel1=(rate==2'b01);

always @(*) begin
if (sel0)
pclk=pclk_62_5;
else if(sel1)
pclk=pclk_250;
else
pclk=1'b0;
end
endmodule
