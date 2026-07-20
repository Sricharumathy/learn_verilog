module decoder_2to4_tb;
reg a,b,en;
wire [0:3]d;
decode_2to4 d1(.a(a),.b(b),.enable(en),.d(d));
initial begin
$monitor ("Time=%0t  a=%b b=%b en=%b d=%b",$time,a,b,en,d);
a=0;b=0;en=0;#10;
a=0;b=0;en=1;#10;
a=0;b=1;en=1;#10;
a=1;b=0;en=1;#10;
a=1;b=1;en=1;#10;
$finish;
end
endmodule
