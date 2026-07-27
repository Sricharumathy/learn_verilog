module moore_1010(input clk,rst,din,output reg detected);
parameter idle =3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;

reg [2:0]ps,ns;
//present state logic---(Sequential)
always @(posedge clk) begin
if(rst)begin
ps<=idle;
end
else begin
ps<=ns;
end
end

//nextstate logic---(Combinational)
always @(*) begin
case(ps)
idle: begin
if(din==1)begin
ns=s1;
end
else begin
ns=idle;
end
end
s1:begin
if(din==1)begin
ns=s1;
end
else begin
ns=s2;
end
end
s2:begin
if(din==1)begin
ns=s3;
end 
else begin
ns=idle;
end
end
s3:begin
if(din==1)begin
ns=s2;
end
else begin
ns=s4;
end
end
s4:begin
if(din==1)begin
ns=s1;
end
else begin
ns=idle;
end
end
default:ns=idle;
endcase
end
//output logic
always @(posedge clk) begin
if(rst) begin
detected<=1'b0;
end
else begin
case(ps)
idle:detected<=1'b0;
s1:detected<=1'b0;
s2:detected<=1'b0;
s3:detected<=1'b0;
s4:detected<=1'b1;
default:detected<=1'b0;
endcase
end
end
endmodule

