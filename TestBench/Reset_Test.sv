/////////*********reset test*********/////////
class resettest;
  virtual signal_intf intf;
  function new(virtual signal_intf intf);
    this.intf=intf;
  endfunction
  task reset_test();
    $display("Reset Test is started");
    #175 intf.rst=1'b1;
    #205 intf.rst=1'b0;
  endtask
endclass
