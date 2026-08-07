module siso(input  clk,rst,sin,output sout);
reg [3:0]q;
always@(posedge clk) 
begin
if(rst)
q<=4'b000;
else
q<={sin,q[3:1]};
end 
assign sout=q[0];
endmodule


