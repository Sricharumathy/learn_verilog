module encoder_tb;
reg a,b;
wire [0:3]d;
decoder_2_4 e1(.a(a),.b(b),.d(d));
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
initial begin 
$monitor("Time:%0t  :a=%b b=%b d=%b",$time,a,b,d);
#50;
$finish;
end
endmodule
