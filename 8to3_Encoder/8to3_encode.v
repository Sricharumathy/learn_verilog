module encode8to3 (input a,b,c,d,e,f,g,h,output x,y,z);
assign x=a|b|c|d;
assign y=a|b|e|f;
assign z=a|c|e|g;
endmodule;
