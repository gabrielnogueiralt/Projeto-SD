module CPU(clock, Tx, Ty, Tz, Tula, ULAout, outX, outY, outZ, inX, count, controllerInstruction);

input wire clock;
output wire [3:0] outX;
output wire [3:0] outY;
output wire [3:0] outZ;
output wire [3:0] ULAout;
output wire [1:0] Tx;
output wire [1:0] Ty;
output wire [1:0] Tz;
output wire Tula;

output wire [2:0] controllerInstruction;
output wire [2:0] count;
output wire [3:0] inX;

counter(clock, count);
memory(count, inX, controllerInstruction);
registerX registerX(clock, Tx, inX, outX);
registerY registerY(clock, Ty, ULAout, outY);
registerZ registerZ(clock, Tz, outY, outZ);
controller cont(clock, controllerInstruction, Tx, Ty, Tz, Tula);
ULA ula(Tula, outX, outY, ULAout);

endmodule