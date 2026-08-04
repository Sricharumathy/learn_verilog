module counter_enb(input clk,rst,enb,dir,output reg [2:0] count);
always @(posedge clk) begin
if(rst)
count<=3'b000;
else if (enb) begin
if(dir==1)
count<=count+3'b001;
else
count<=count-3'b001;
end
else
count<=count;
end
endmodule
