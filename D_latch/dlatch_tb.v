module dlatch_tb;
reg enb,rst,d;
wire q,qb;
dlatch dd (.enb(enb),.rst(rst),.d(d),.q(q),.qb(qb));
initial begin
rst=1;enb=0;d=0;#10;
rst=0;enb=0;d=1;#10;
rst=0;enb=1;d=0;#10;
rst=0;enb=1;d=1;#10;
end
initial begin
$monitor("Time=%0t,rst=%b,enb=%b,d=%b,q=%b,qb=%b",$time,rst,enb,d,q,qb);
#50;
$finish;
end 
endmodule
