//Write RTL for designing a 1-bit Full Subtractor using Half-Subtractor
module HS(input a,b,output diff,borrow);
assign diff=a^b;
assign borrow= ~a&b;
endmodule

module FS(input a,b,c,output diff, borrow);
wire d1,b1,b2;
HS a1(.a(a),.b(b),.diff(d1),.borrow(b1));
HS a2(.a(d1),.b(c),.diff(diff),.borrow(b2));
assign borrow=b1|b2;
endmodule

