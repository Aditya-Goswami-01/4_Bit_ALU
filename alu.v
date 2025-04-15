`timescale 1ns / 1ps
module alu(Y, Cout, A, B, S);
        output reg Cout;
        output reg [3:0] Y;
        input [3:0] A,B;
        input [3:0]S; 
        
  always @(*) begin
          case (S)  // sel is the control input (e.g., 4-bit selector)
    4'b0000: result = A + B;         // Addition
    4'b0001: result = A - B;         // Subtraction
    4'b0010: result = A + 1;         // Increment
    4'b0011: result = A - 1;         // Decrement
    4'b0100: result = ~A + 1;        // 2's Complement
    4'b0101: result = A & B;         // AND
    4'b0110: result = A | B;         // OR
    4'b0111: result = A ^ B;         // XOR
    4'b1000: result = ~(A & B);      // NAND
    4'b1001: result = ~(A | B);      // NOR
    4'b1010: result = ~(A ^ B);      // XNOR
    default: result = 4'b0000;       // Default case
  endcase
end
endmodule
