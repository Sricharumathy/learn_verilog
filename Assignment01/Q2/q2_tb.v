module FS_tb;
reg a,b,c;
wire diff,borrow;
FS f1(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
initial begin
a=0;b=0;c=0;#5;
a=0;b=0;c=1;#5;
a=0;b=1;c=0;#5;
a=0;b=1;c=1;#5;
a=1;b=0;c=0;#5;
a=1;b=0;c=1;#5;
a=1;b=1;c=0;#5;
a=1;b=1;c=1;#5;
end
initial begin
$monitor("Time=%0t  :a=%b | b=%b | c=%b | diff=%b | borrow=%b ",$time,a,b,c,diff,borrow);
#100;$finish;
end
endmodule
