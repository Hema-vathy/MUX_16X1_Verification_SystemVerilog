////////***********TOP FILE FOR THE TESTBENCH***********////////
`include "signal.sv"
`include "clock.sv"
`include "reset.sv"
`include "stimuli.sv"
`include "rst_test.sv"
`include "comparison_test.sv"
`include "run_test.sv"

int n;
module mux_tb_top();
  //import file_pkg::*;

  signal_intf intf();
  
  // instantiation block
  mux mux_inst(.clk(intf.clk),
               .rst(intf.rst),
               .din(intf.din),
               .s(intf.s),
               .cout(intf.cout));
  
  //Initialize block
  initial begin
    intf.clk=1'b1;
    intf.rst=1'b1;
    foreach(intf.din[i])begin
      intf.din[i]=32'hA;
    end
    foreach(intf.s[i])begin
      intf.s[i]=1'b0;
    end
  end 
  //calling task
  run run_h=new(intf);
  initial begin
    //creating handle
    run_h.running();
  end
  //dump waveforms
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
