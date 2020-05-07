module DLatchStruct(D,clk,Q,NotQ);

input D, clk;
output Q, NotQ;

wire w1,w2,w3,w4,w5;

MyNot(D,w1);
MyAnd(clk,D,w2);
MyAnd(w1,clk,w3);
MyNor(w3,w5,w4);
MyNor(w4,w2,w5);

assign Q = w4;
assign NotQ = w5;

endmodule 