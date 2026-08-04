module updown(input clk,rst,dir,output reg [2:0] count);
always @(posedge clk) begin
if(rst)
count<=3'b000;
else begin
if(dir==1)
count<=count+3'b001;
else
count<=count-3'b001;
end
end
endmodule

