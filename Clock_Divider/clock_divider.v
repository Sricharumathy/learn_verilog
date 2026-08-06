module clk_divide(input clk,rst,output reg clk_out,output reg [3:0] count);
always @(posedge clk)
begin
if(rst)
begin
count<=4'b0000;
clk_out<=1'b0;
end
else begin
if(count==4)
begin
count<=4'b0000;
clk_out=~clk_out;
end
else
count<=count+4'b0001;
end
end
endmodule

