module sr2jk(input clk,rst,j,k,output reg q,output q_bar);
wire s,r;
assign s=~q&j;
assign r=q&k;
always @(posedge clk) begin
if(rst)
q<=1'b0;
else begin
case({s,r})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
default:q<=1'bx;
endcase
end
end
assign q_bar=~q;
endmodule
