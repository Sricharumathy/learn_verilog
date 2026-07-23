module siso3b(input clk,rst,input  din,output reg dout);
reg q0,q1,q2;
always @(posedge clk or posedge rst)
begin
if(rst) begin
q0<=1'b0;
q1<=1'b0;
q2<=1'b0;
dout<=1'b0;
end
else begin
q0<=din;
q1<=q0;
q2<=q1;
dout<=q2;
end
end
endmodule

