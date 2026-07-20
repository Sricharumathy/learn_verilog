module HS_tb;
reg a,b;
wire diff,borrow;
HS h1(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
end
initial begin
$monitor("Time =%0t | a=%b | b=%b | diff=%b | borrow=%b",$time,a,b,diff,borrow);
#50;
$finish;
end
endmodule

