module  mealy_1101(input clk,rst,din,output reg detected);
parameter idle=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;

reg [1:0] ps,ns;

//present state logic ---(Sequential logic)
always@(posedge clk) begin
if(rst) begin
ps<=idle;
end
else begin
ps<=ns;
end
end


//nextstate logic ---(Combinational logic)
always @(*) begin
case(ps)
idle: begin
if(din) begin
ns=s1;
end
else begin 
ns=idle;
end
end

s1:begin
if(din) begin
ns=s2;
end
else begin
ns=idle;
end
end

s2:begin
if(din) begin
ns=s2;
end
else begin
ns=s3;
end
end

s3:begin
if(din) begin
ns=s1;
end
else begin
ns=idle;
end
end
default: ns=idle;
endcase
end


//Output state logic
always@(posedge clk) begin
if (rst) begin
detected<=1'b0;
end
else begin
case(ps)
idle:detected<=1'b0;
s1:detected<=1'b0;
s2:detected<=1'b0;
s3:begin
if(din)
detected<=1'b1;
else
detected<=1'b0;
end
default:detected<=1'b0;
endcase
end



end
endmodule

