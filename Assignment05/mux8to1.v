module mux8to1(input [7:0]in,input [2:0]sel,output reg out);
integer i;
always @(*) begin
for(i=0;i<8;i=i+1)
begin
if(sel==i)begin
out=in[i];
end
end
end
endmodule
