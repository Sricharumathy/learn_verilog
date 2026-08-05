module mod_n #(parameter N=8)
(input clk,rst,output reg [2:0] count);
always @(posedge clk)
begin
if(rst)
count<=0;
else if(count==N-1)
count<=0;
else
count=count+1;
end
endmodule
