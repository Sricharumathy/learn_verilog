module full_subtractor_tb;
reg x,y,z;
wire d,b;
full_subtractor fs1(.a(x),.b(y),.c(z),.diff(d),.borrow(b));
initial begin
$monitor("Time=%0t,x=%b y=%b z=%b | d=%b b=%b",$time,x,y,z,d,b);
end
initial begin
x=0;y=0;z=0;#10;
x=0;y=0;z=1;#10;
x=0;y=1;z=0;#10;
x=0;y=1;z=1;#10;
x=1;y=0;z=0;#10;
x=1;y=0;z=1;#10;
x=1;y=1;z=0;#10;
x=1;y=1;z=1;#10;
$finish;
end
endmodule
