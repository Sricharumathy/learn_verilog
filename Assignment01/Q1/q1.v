// Write a Dataflow for Designing Half Subtractor
module HS(input a,b,output diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule
