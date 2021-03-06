module registerX(clock, instruction, inX, outX);

input wire clock;
input wire [2:0] instruction;
input wire [3:0] inX;
output reg [3:0] outX;

parameter HOLD = 3'b000;
parameter LOAD = 3'b001;
parameter SHIFTR = 3'b010;
parameter SHIFTL = 3'b011;
parameter RESET = 3'b100;

always @(posedge clock)begin
	case(instruction)
		HOLD:
			outX <= outX;
		LOAD:
			outX <= inX;
		SHIFTR:
			outX <= outX >> 1;
		SHIFTL:
			outX <= outX << 1;
		RESET:
			outX <= 4'b0000;
	endcase
end
endmodule