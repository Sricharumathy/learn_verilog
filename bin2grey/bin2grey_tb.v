module bin2grey_tb;
reg [3:0]in;
wire [3:0]out;
bin2grey bg1(.b(in),.g(out));
initial begin
in=4'b0000;#10;
in=4'b0001;#10;
in=4'b0010;#10;
in=4'b0011;#10;
in=4'b0100;#10;
in=4'b0101;#10;
in=4'b0111;#10;
in=4'b1000;#10;
in=4'b1001;#10;
in=4'b1010;#10;
in=4'b1011;#10;
in=4'b1100;#10;
in=4'b1101;#10;
in=4'b1110;#10;
in=4'b1111;#10;
end
initial begin
$monitor("Time = %0t   in=%b  out=%b ",$time,in,out);
#200;
$finish;
end
endmodule

