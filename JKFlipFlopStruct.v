module JKFlipFlopStruct(J,K,clk,Q,NotQ);

input J,K,clk;
output Q,NotQ;

wire w1,w2,w3,w4,notW4,notK;

MyAnd(J,w4,w1);
MyNot(K,notK);
MyNot(w4,notW4);
MyAnd(notW4,notK,w2);
MyOr(w1,w2,w3);
DFlipFlopStruct(w3,clk,Q,w4);

assign NotQ = w4;

endmodule 