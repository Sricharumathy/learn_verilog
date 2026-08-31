module sys_fifo_tb();
reg clk,rst,we,re;
reg [7:0] data_in;
wire full,empty;
wire [7:0] data_out;
integer i;
sys_fifo dut(.clk(clk),.rst(rst),.we(we),.re(re),.data_in(data_in),.full(full),.empty(empty),.data_out(data_out));
initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
$dumpfile("sys_fifo.vcd");
$dumpvars(0,sys_fifo_tb);

rst=1;we=0;re=0;data_in=0;
#20;
rst=0;#20;
$display("After Reset --> full=%b empty=%b",full,empty);

$display("\n filling FIFO");
for(i=0;i<8;i=i+1) begin
we=1;
data_in=i+8'h10;
#20;
$display("Wrote %h|full=%b|empty=%b",data_in,full,empty);
end 
we=0;
#20;

$display("Final state after fill attempts -> full=%b empty=%b", full, empty);
$display("\n--- Draining FIFO ---");
for (i = 0; i < 8; i = i + 1) begin
re = 1;
#20;
$display("Read data_out=%h | full=%b empty=%b", data_out, full, empty);
end

re = 0;
#20;
$finish;
end 
endmodule
