module sys_fifo(
input clk,rst,re,we,
input [7:0] data_in,
output full,
output empty,
output reg [7:0] data_out);

reg [7:0]mem[7:0];
reg [2:0] wr_ptr=3'b000;
reg [2:0] rd_ptr=3'b000;

integer i;
always @(posedge clk)
begin
if(rst) begin
for(i=0;i<8;i=i+1)
mem[i]<=3'b000;
end
else if(we) begin
mem[wr_ptr]<=data_in;   // Write Operation
wr_ptr<=wr_ptr+1;
end
end

always @(posedge clk) begin
if(rst) 
data_out<=0;
else if(re) begin
data_out<=mem[rd_ptr];
rd_ptr<=rd_ptr+1;
end
end

assign full=((wr_ptr+1'b1)==rd_ptr) ? 1:0;
assign empty=(wr_ptr==rd_ptr) ? 1:0;
endmodule

