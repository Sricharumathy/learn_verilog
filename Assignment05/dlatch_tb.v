module dlatch_tb;
reg in,en;
wire out;
dlatch uut(.d(in),.enable(en),.q(out));
initial begin
en=0;in=0;#10;
en=1;in=0;#10;
en=1;in=1;#10;
en=0;in=0;#10;
end
initial begin
$monitor("Time=%0t  ,in=%b , en=%b , out=%b",$time,in,en,out);
#50;
$finish;
end
endmodule

