module tff(input clk,rst,t,output reg q);
always @(posedge clk) begin
if(rst)
q<=1'b0;
else begin
if (t)
q <= ~q;
else
q <= q;
end
end 
endmodule

