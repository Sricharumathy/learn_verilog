module dual_port(input clk,we,re,input [2:0] addr,input [7:0] data_in,output reg [7:0] data_out);
reg [7:0] mem [7:0];
always @(posedge clk) begin
if(we)
mem[addr]<=data_in;
end
always @(posedge clk) begin
if(re)
data_out<=mem[addr];
else
data_out<=0;
end
endmodule

