module d2jk(input clk,rst,j,k,output reg q);
wire d;
assign d=(~q&j)|(~k&q);
always @(posedge clk)
begin 
if (rst)
q<=1'b0;
else 
q<=d;
end
endmodule
