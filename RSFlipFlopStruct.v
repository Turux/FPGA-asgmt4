module RSFlipFlopStruct(S,R,clk,Q,NotQ);

input S,R,clk;
output Q,NotQ;

wire w1,w2,w3,w4;

MyOr(S,w3,w1);
MyNot(R,w2);
MyAnd(w2,w4);
DFlipFlopStruct(w1,clk,w4,NotQ);

assign Q = w4;

endmodule 