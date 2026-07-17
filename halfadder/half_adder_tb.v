module half_adder_tb;
reg A,B;
wire SUM,CARRY;
half_adder ha1(.a(A),.b(B),.sum(SUM),.carry(CARRY));
initial begin
$display("A B | SUM | CARRY");
$monitor("%b %b | %b | %b",A,B,SUM,CARRY);
end
initial begin
A=0;B=0;#5;
A=0;B=1;#5;
A=1;B=0;#5;
A=1;B=1;#5;
$finish;
end
endmodule
