module random_no;
integer a,i;
integer count=0;
initial begin
for( i=0;i<5;)
begin
a=($random%10)+1;
if (a%2!=0)begin
$display("Random Odd Number %d",a);
i=i+1;
end
end
end
endmodule
