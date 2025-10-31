//run block
class run;
   virtual signal_intf intf;
  
  clock clk_h;
  reset rst_h;
  stimuli stimulus_h;
  resettest rsttest_h;
  comparison comp_h;
  
  function new(virtual signal_intf intf);
    this.intf=intf;
    clk_h = new(intf);
    rst_h = new(intf);
    stimulus_h = new(intf);
    rsttest_h = new(intf);
    comp_h = new(intf);
  endfunction

   task running();
    fork 
      clk_h.clk_gen();
      rst_h.rst_gen();
      stimulus_h.stimulus();
      rsttest_h.reset_test();
      comp_h.compare();
    join
  endtask
endclass
