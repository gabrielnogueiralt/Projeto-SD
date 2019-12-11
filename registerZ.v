module registerZ(clock, instruction, outY, outZ);

input wire clock;
input wire [2:0] instruction;
input wire [3:0] outY;
output reg [3:0] outZ;

parameter HOLD = 3'b000;
parameter LOAD = 3'b001;
parameter SHIFTR = 3'b010;
parameter SHIFTL = 3'b011;
parameter RESET = 3'b100;

always @(posedge clock)begin
	case(instruction)
		HOLD:
			outZ <= outZ;
		LOAD:
			outZ <= outY;
		SHIFTR:
			outZ <= outZ >> 1;
		SHIFTL:
			outZ <= outZ << 1;
		RESET:
			outZ <= 4'b0000;
	endcase
end
endmodule