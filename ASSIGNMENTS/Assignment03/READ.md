1. What is the value of y in the below snippet?
```
reg [2:0] a, b;
reg y;
initial
begin
a= 3'd5;
b= 3,b111
y = a&&b;
end
```
Answer: Y=1<br>
2. What is the value of x in the below snippet?
```
reg [2:0] a, b;
reg [2:0]x;
initial
begin
a=3'd5;
b=3’b111;
x= a | b;
end
```
Answer: x=111<br>

3. What is the value of x in the below snippet?
```
reg [2:0]a;
reg [2:0]x;
initial
begin
x = ^a;
a = 3'd4;
end
```
Answer:x=1<br>

4. Evaluate the value of x in the below snippet. reg [3:0]a;
```
reg [1:0]x;
initial
begin
a = 4'd10;
X= (a>>1);
end
```
Answer=x=01

5. Find the value of b in the below snippet. reg [3:0]a;
```
reg [6:0]b;
initial
begin
a=4'd10;
b={a,1};
end
```
Answer: b={0000001}<br>

6. Which block executes in the below snippet and justify the reason:
```
reg [3:0]a= 4'b110x;
initial
begin
if (a==4'b1100)
begin: B1
end
else
begin: B2 end
end
```
Answer: B2 will Execute<br>

7. Which block executes in the below snippet and justify thereason.
```
reg [3:0]a= 4'b110x;
initial
begin
if ( a !== 4'b1100)
begin: B1
end
else
begin: B2 end
end
```
Answer: B1 will Execute<br>

8. What is the value of y in the below expression and justify the reason.
```
reg [3:0]a= 4'b110x;
wire y = (a== 4'b1100)?1'b1:1'b0;
```
Answer:Y=1'bx<br>

9. What is the value of y in the below expression and justify the reason.
```
reg [3:0]a= 4'b010x;
wire y = (a== 4'b1100)?1'b1:1'b0;
```
Answer:Y=1'b0<br>

10. What is the value of b in the below expression and justify the reason.
```
reg [3:0]a= 4'b0100;
reg [3:0]b;
initial
begin
b = a+1'bx;
end
```
Answer:b=xxxx
