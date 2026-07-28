module jk2sr(input clk,rst,s,r,output reg q,output q_bar);
wire j,k;
assign j=s;
assign k=r;
always @(posedge clk) begin
	if(rst)
		q<=1'b0;
	else begin
		case({j,k})
			2'b00:q<=q;
			2'b01:q<=1'b0;
			2'b10:q<=1'b1;
			2'b11:q<=1'bx;
		endcase
	end
end
assign q_bar=~q;
endmodule

