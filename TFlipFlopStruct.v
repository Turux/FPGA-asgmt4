module TFlipFlopStruct(T,clk,Q,NotQ);

input T,clk;
output Q,NotQ;

JKFlipFlopStruct(T,T,clk,Q,NotQ);

endmodule 