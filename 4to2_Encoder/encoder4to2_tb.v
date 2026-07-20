module encoder4to2_tb;
reg [3:0]i;
wire a,b;
encoder4to2 e1(.i(i),.x(a),.y(b));
initial begin
i=4'b0001;#10;
i=4'b0010;#10;
i=4'b0100;#10;
i=4'b1000;#10;
end
initial begin
$monitor("Time=%0t  i=%b,a=%b,b=%b",$time,i,a,b);
#40;
$finish;
end
endmodule
