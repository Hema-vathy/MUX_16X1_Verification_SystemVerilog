///////////////**************INTERFACE BLOCK**************///////////////
interface signal_intf ();
  
  parameter int WIDTH =32;
  parameter int DEPTH =16;
  parameter int SELECT_LINE_DEPTH=4;
  
  logic clk;
  logic rst;
  logic [(WIDTH-1):0] din[(DEPTH-1):0];
  logic s[(SELECT_LINE_DEPTH-1):0];
  logic [(WIDTH-1):0]cout;
  /*logic [(WIDTH-1):0]exp_queue[$];
  logic [(WIDTH-1):0]act_queue[$];*/
  
endinterface
