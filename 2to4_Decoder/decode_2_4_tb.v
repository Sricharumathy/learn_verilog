module decoder_2_4_tb;
reg x,y,en;
wire [3:0]z;
decoder_2_4 uut (.a(x),.b(y),.enable(en),.d(z));
initial begin
x=0;y=0;en=0;#10;
x=0;y=0;en=1;#10;
x=0;y=1;en=0;#10;
x=0;y=1;en=1;#10;
x=1;y=0;en=0;#10;
x=1;y=0;en=1;#10;
x=1;y=1;en=0;#10;
x=1;y=1;en=1;#10;
end
initial begin
$monitor ("Time=%0t  ,x=%b,y=%b,en=%b|z=%b",$time,x,y,en,z);
#100;
$finish;
end
endmodule

