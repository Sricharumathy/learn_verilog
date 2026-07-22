module jk_define_tb;
reg clk,j,k;
wire qn;
jk_define jktd(.clk(clk),.j(j),.k(k),.qn(qn));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
{j,k}=00;#10;
{j,k}=01;#10
{j,k}=10;#10;
{j,k}=11;#10;
end
initial begin
$monitor("Time =%0t    clk=%b j=%b k=%b qn=%b",$time,clk,j,k,qn);
#50;
$finish;
end
endmodule
