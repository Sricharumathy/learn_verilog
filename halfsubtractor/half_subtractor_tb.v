module half_subtractor_tb;
reg A,B;
wire D,BOUT;
half_subtractor hs1(.a(A),.b(B),.diff(D),.borrow(BOUT));
initial begin
$display("A | B | D | BOUT");
$monitor("%b | %b | %b | %d ",A,B,D,BOUT);
end
initial begin
A=0;B=0;#5;
A=0;B=1;#5;
A=1;B=0;#5;
A=1;B=1;#5;
$finish;
end
endmodule
