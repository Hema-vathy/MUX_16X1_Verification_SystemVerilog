// reset generation block
class reset;
  virtual signal_intf intf;
  function new(virtual signal_intf intf);
    this.intf=intf;
  endfunction
  task rst_gen();
    $display("Reset generated");
    @(posedge intf.clk or negedge intf.clk)begin
    //@(posedge clk or negedge clk)begin
      #n intf.rst=1'b0;
    end
  endtask
endclass
