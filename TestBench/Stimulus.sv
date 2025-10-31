//////////////////**********STIMULUS BLOCK**********//////////////////
class stimuli;
  virtual signal_intf intf;
  function new(virtual signal_intf intf);
    this.intf=intf;
  endfunction
  task stimulus();
    std::randomize(n)with{
      n < 50;
      n > 20;
    };
    repeat (n) @(posedge intf.clk or negedge intf.clk) begin
    //repeat (n) @(posedge clk or negedge clk) begin
      #5 foreach(intf.din[i])begin
        intf.din[i]=$urandom_range(32'h0,32'hFFFFFFFF);
        $display("din[%0d]=%h",i,intf.din[i]);
      end
      foreach(intf.s[i])begin
        intf.s[i]=$urandom_range(0,1);
        $display("s[%0d]=%b",i,intf.s[i]);
      end
    end
    $finish;
  endtask
endclass
