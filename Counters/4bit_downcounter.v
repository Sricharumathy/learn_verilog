module down_4b(input clk,rst,output reg [3:0] count);
always @(posedge clk)
begin
if(rst)
count<=4'b1111;
else
count<=count-4'b0001;
end
endmodule

