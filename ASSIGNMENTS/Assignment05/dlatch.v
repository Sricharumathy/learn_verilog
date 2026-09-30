module dlatch(input d,enable,output reg q);
always @(*) begin
if (enable) 
begin
q=d;
end
else begin
q=q;
end
end
endmodule

