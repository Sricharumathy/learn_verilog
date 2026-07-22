module dlatch(input enb,rst,d,output reg q,qb);
always @(*) begin
if (rst) begin
q=1'b0;
qb=1'b1;
end
else if (enb) begin
if(d==0)begin
q=1'b0;
qb=1'b1;
end
else begin
q=1'b1;
qb=1'b0;
end
end
end 
endmodule

 

