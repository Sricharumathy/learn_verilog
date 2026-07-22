module decoder_3to8_tb;
reg a,b,c;
wire [7:0]y;
decoder3to8 ddt(.a(a),.b(b),.c(c),.d(y));
initial begin
{a,b,c}=000;#10;
{a,b,c}=001;#10;
{a,b,c}=010;#10;
{a,b,c}=011;#10;
{a,b,c}=100;#10;
{a,b,c}=101;#10;
{a,b,c}=110;#10;
{a,b,c}=111;#10;
end
initial begin
$monitor("a=%b,b=%b,c=%b,y=%b",a,b,c,y);
#100;
$finish;
end
endmodule

