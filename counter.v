module counter(clock, counterOut);

input wire clock;
output reg[2:0] counterOut;

parameter START = 3'b000;
parameter END = 3'b101;

always @(posedge clock) begin
	if(counterOut >= END)
		counterOut = START;
	else
		counterOut = (counterOut + 1);
end

endmodule