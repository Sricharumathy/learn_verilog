module full_adder_tb;
reg A,B,C;
wire SUM,CARRY;
full_adder fa1(.a(A),.b(B),.c(C),.sum(SUM),.carry(CARRY));
initial begin
$monitor ("Time=%0t A=%b | B=%b | C=%b | SUM=%b | CARRY=%b",$time,A,B,C,SUM,CARRY);
end
initial begin
A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
$finish;
end
endmodule

