module DFlipFlopStruct (D,clk,Q,NotQ);

input D,clk;
output Q,NotQ;

wire w0,w1;

MyNot(clk,w0);
DLatchStruct Master(D,w0,w1);
DLatchStruct Slave(w1,clk,Q,NotQ);

endmodule 