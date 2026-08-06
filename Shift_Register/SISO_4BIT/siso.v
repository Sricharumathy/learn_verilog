module siso(input clk,rst,serial_in,output serial_out,output 
reg [3:0] q);
always@(posedge clk) 
begin
if(rst)
q<=4'b0000;
else
q<={serial_in,q[3:1]};
end
assign serial_out=q[0];
endmodule
