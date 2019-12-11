module ULA(instruction, A, B, ULAout);

input wire [3:0] A, B;
input wire instruction;
output reg [3:0] ULAout;

parameter ADD = 3'b000;

always begin
	case(instruction)
		ADD:
			ULAout <= (A + B);
	endcase
end
endmodule