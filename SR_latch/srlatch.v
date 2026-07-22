module srlatch(input enb,rst,s,r,output reg q,qbar);
always @(*)begin
if (enb)
begin
if (rst) begin
q=1'b0;
qbar=1'b1;
end
//hold
else if(s==0 && r==0)begin
q=q;
qbar=qbar;
end
//reset
else if(s==0 && r==1)begin
q=1'b0;
qbar=1'b1;
end
//set
else if(s==1 && r==0) begin
q=1'b1;
qbar=1'b0;
end
//forbidden
else begin
q=1'bx;
qbar=1'bx;
end
end
end
endmodule



