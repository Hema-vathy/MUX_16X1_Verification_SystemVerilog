//////////////////******************DESIGN CODE FOR THE PARAMETERIZED MUX******************//////////////////
module mux #( parameter WIDTH = 32, DEPTH = 16, SELECT_LINE_DEPTH=4) 
  (input clk,
   input rst,
   input [(WIDTH-1):0] din[(DEPTH-1):0],
   input s[(SELECT_LINE_DEPTH-1):0],
   output reg [(WIDTH-1):0]cout);
  always @(posedge clk or negedge clk) begin
        if(rst) begin
        cout <=0;
      end
      else begin
        if(s[0]==0 && s[1]==0 && s[2]==0 && s[3]==0) begin
          cout <=din[0];
        end
        else if(s[0]==0 && s[1]==0 && s[2]==0 && s[3]==1) begin
          cout <=din[1];
        end
        else if(s[0]==0 && s[1]==0 && s[2]==1 && s[3]==0) begin
          cout <=din[2];
        end
        else if(s[0]==0 && s[1]==0 && s[2]==1 && s[3]==1) begin
          cout <=din[3];
        end
        else if(s[0]==0 && s[1]==1 && s[2]==0 && s[3]==0) begin
          cout <=din[4];
        end
        else if(s[0]==0 && s[1]==1 && s[2]==0 && s[3]==1) begin
           cout <=din[5];
        end
        else if(s[0]==0 && s[1]==1 && s[2]==1 && s[3]==0) begin
          cout <=din[6];
        end
        else if(s[0]==0 && s[1]==1 && s[2]==1 && s[3]==1) begin
          cout <=din[7];
        end
        else if(s[0]==1 && s[1]==0 && s[2]==0 && s[3]==0) begin
          cout <=din[8];
        end
        else if(s[0]==1 && s[1]==0 && s[2]==0 && s[3]==1) begin
          cout <=din[9];
        end
        else if(s[0]==1 && s[1]==0 && s[2]==1 && s[3]==0) begin
          cout <=din[10];
        end
        else if(s[0]==1 && s[1]==0 && s[2]==1 && s[3]==1) begin
          cout <=din[11];
        end
        else if(s[0]==1 && s[1]==1 && s[2]==0 && s[3]==0) begin
          cout <=din[12];
        end
        else if(s[0]==1 && s[1]==1 && s[2]==0 && s[3]==1) begin
          cout <=din[13];
        end
        else if(s[0]==1 && s[1]==1 && s[2]==1 && s[3]==0) begin
          cout <=din[14];
        end
        else begin
          cout <=din[15];
        end
    end
  end
endmodule
