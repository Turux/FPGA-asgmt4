module MyNor(a,b,z);

input a,b;
output z;

assign z= ~(a | b);

endmodule 