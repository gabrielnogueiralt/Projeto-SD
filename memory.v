module memory(count, inX, controllerInstruction);

input wire[2:0] count;
output reg [3:0] inX;
output reg [3:0] controllerInstruction;

parameter A = 2;
parameter B = 3;

always begin
	case(count)
		3'b000 : begin
			controllerInstruction <= 3'b000;
			inX <= 0;
			end
			
		3'b001 : begin
			controllerInstruction <= 3'b001;
			inX <= A;
			end
			
		3'b010 : begin
			controllerInstruction <= 3'b010;
			inX <= B;
			end
			
		3'b011 : begin
			controllerInstruction <= 3'b011;
			inX <= 0;
			end
			
		3'b100 : begin
			controllerInstruction <= 3'b100;
			inX <= 0;
			end
			
		3'b101 : begin
			controllerInstruction <= 3'b101;
			inX <= 0;
			end
				
	endcase
end
endmodule