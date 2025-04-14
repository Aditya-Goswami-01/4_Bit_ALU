`timescale 1ns / 1ps
module tb;
    wire Cout;
        wire [3:0] Y;
        reg sel;
       reg  [3:0] A,B;
        reg [15:0]S;
  alu uut (Y, Cout, A,B,S, sel);
  
  initial begin 
        A=4'b1010; B=4'b1111; S=0; 
        #5 S=1;
        #5 S=2;
        #5 S=3; sel=0;
        #5 sel=1;
        #5 S=4; #5 sel=0;
        #5 S=5; #10 S=6; #10 S=7; #10 S=10; #10 S=8; #10 S=9; #20 S=12;
        
        $finish;
         end
endmodule
