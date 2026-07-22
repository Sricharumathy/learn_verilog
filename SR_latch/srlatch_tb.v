module srlatch_tb;
reg enb,rst,s,r;
wire q,qbar;
srlatch ss (.enb(enb),.rst(rst),.s(s),.r(r),.q(q),.qbar(qbar));
initial begin
rst=0;
enb=0;s=1;r=0;#20;
enb=1;s=0;r=0;#10;
enb=1;s=0;r=1;#10;
enb=1;s=0;r=0;#10;
enb=1;s=1;r=0;#10;
enb=1;s=0;r=0;#10;
enb=1;s=1;r=1;#10;
end
initial begin
$monitor("Time =%0t  ,enb=%b,rst=%b,s=%b,r=%b,q=%b,qbar=%b",$time,enb,rst,s,r,q,qbar);
#100;
$finish;
end
endmodule

