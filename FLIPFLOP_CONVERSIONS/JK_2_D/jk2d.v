module jk2d(input clk,rst,d,output reg q,q_bar);
wire j;
wire k;
assign j=d;
assign j=~d;
always @(posedge clk) begin
if(rst) begin
q<=1'b0;
end
else begin
case({j,k})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=~q;
endcase
end
end
assign q_bar=~q;
endmodule
