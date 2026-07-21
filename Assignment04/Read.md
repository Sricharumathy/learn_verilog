
1. What value of a is displayed on the console output? Justify the same.
 ```
reg[1:0]a;
initial
begin
$display($time,“a=%d”,a);
a =2’d3;
#10;

a = 2’d2;

end

```

Answer :0,a=x <br>
Reason:The $display statement executes at simulation time 0 before any assignment to a. Since a is an uninitialized reg, its initial value is 2'bxx (unknown), so the console displays a = x.<br>

2. What is the value of b displayed on the console output? Justify the same. 
```
reg[1:0]b;
initial
begin
$strobe($time,“b=%d”,b);
b =2’d3;
b = 2’dx;
#10;
b = 2’d2;
end
```
Answer:0,b=x<br>
Reason:$strobe displays the value at the end of the current simulation time. Since b is assigned 2'd3 and then overwritten by 2'dx before time advances, the final value at time 0 is 2'bxx, so the console displays b = x.<br>

3. What values are monitored for the variable b till the end ofsimulation time? Display the same.
```
reg[1:0]b;
initial
begin
$monitor($time,“b=%d”,b);
b = 2’d0;
b = 2’dx;
#10;
b = 2’d2;
#10;
b = 2’d1;
$monitoroff;
#10;
b = 2’d2;
$monitoron;
#10;
#100 $finish;
end
```
Answer:0 b=x, 10 b=2 ,20 b=1<br>
Reason:$monitoroff disables monitoring before the assignment at time 30, so b = 2 is not displayed.<br>

4. Display the console output for the following. `timescale 10ns/1ns
```
parameter P=15.5;
reg a;
initial begin
$monitor($time,“Value of a = %b”,a);
#P a = 1’b1;
#P a = 1’b0;
end
```
Answer:0 a=x ,16 a=1 , 32 a=0 <br>
Reason:$time does't consider float value so take it whole number<br>

5. Display the console output for the following. `timescale 10ns/1ns
```
parameter P=15.5 ;
reg a ;
initial
begin
$monitor($realtime,“Value of a = %b”,a);
#P a = 1’b1;
#P a = 1’b0;
end
```
Answer:0 a=x ,15.5 a=1,31 a=0 <br>
Reason:$realtime consider float value<br>




