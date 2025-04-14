`timescale 1ns / 1ps
module alu(Y, Cout, A, B, S, sel);
        output reg Cout;
        output reg [3:0] Y;
        input sel;
        input [3:0] A,B;
        input [15:0]S; 
        
  always @ (A or B or S) begin
                        if (S==0) 
                                {Cout, Y}= A+B;
                        else if (S==1)
                                {Cout, Y}= A-B;
                        else if (S==2)
                                Y= A + (~B+1);
                        else if (S==3) begin
                                 if(sel==1)
                                        {Cout,Y}=A+1;
                                 else 
                                        {Cout,Y}=B+1;
                            end
                      else if (S==4) begin
                                  if(sel==1)
                                        {Cout,Y}=A-1;
                                 else 
                                        {Cout,Y}=B-1;
                            end
                     else if (S==5)
                            Y= A&B;
                     else if (S==6)
                            Y=A|B;
                     else if (S==7)
                            Y=A^B;
                     else if (S==8)         
                            Y=A~^B;
                      else if (S==9)         
                            Y=~(A&B);
                      else if (S==9)         
                            Y=~(A|B);
                      else
                            Y=4'b0000;
   end
endmodule
