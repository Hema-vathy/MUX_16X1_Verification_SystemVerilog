//comparison block
class comparison #(parameter int WIDTH=32);
  //Parameters are local to the module/class/interface where they are declared.

//If you instantiate or refer to another module/class/interface, you must explicitly pass parameters.
  virtual signal_intf #(WIDTH) intf;

  logic [WIDTH-1:0] act_queue[$];
  logic [WIDTH-1:0] exp_queue[$];

  function new(virtual signal_intf #(WIDTH) intf);
    this.intf = intf;
  endfunction
  task compare();
    forever @(posedge intf.clk or negedge intf.clk) begin 
    //forever @(posedge clk or negedge clk) begin 
      #1 if(intf.rst)begin 
        exp_queue.push_back(32'h0); 
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);   
          if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed for(cout equal to 0) intf.s[0]=%b intf.s[1]=%b intf.s[2]=%b intf.s[3]=%b intf.rst=%0b intf.cout=%h intf.time=%0t",intf.s[0],intf.s[1],intf.s[2],intf.s[3],intf.rst,intf.cout,$time);
          end 
        else begin
          $error("Test is failed for(cout not equal to 0) intf.s[0]=%b intf.s[1]=%b intf.s[2]=%b intf.s[3]=%b intf.rst=%0b intf.cout=%h time=%0t",intf.s[0],intf.s[1],intf.s[2],intf.s[3],intf.rst,intf.cout,$time);    
        end
      end
   else begin
    // Using case with concatenation {s[2], s[1], s[0]}
     case ({intf.s[0], intf.s[1], intf.s[2], intf.s[3]})
      4'b0000: begin
        exp_queue.push_back(intf.din[0]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0001: begin
        exp_queue.push_back(intf.din[1]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0010: begin
        exp_queue.push_back(intf.din[2]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0011: begin
        exp_queue.push_back(intf.din[3]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0100: begin
        exp_queue.push_back(intf.din[4]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0101: begin
        exp_queue.push_back(intf.din[5]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0110: begin
        exp_queue.push_back(intf.din[6]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b0111: begin
        exp_queue.push_back(intf.din[7]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b1000: begin
        exp_queue.push_back(intf.din[8]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b1001: begin
        exp_queue.push_back(intf.din[9]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
       4'b1010: begin
         exp_queue.push_back(intf.din[10]);
         act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b1011: begin
        exp_queue.push_back(intf.din[11]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b1100: begin
        exp_queue.push_back(intf.din[12]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
       4'b1101: begin
         exp_queue.push_back(intf.din[13]);
         act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
      4'b1110: begin
        exp_queue.push_back(intf.din[14]);
        act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
       4'b1111: begin
         exp_queue.push_back(intf.din[15]);
         act_queue.push_back(intf.cout); 
        $display("queue values exp_queue[0]=%h,act_queue[0]=%h",exp_queue[0],act_queue[0]);
        if(exp_queue.pop_front()==act_queue.pop_front())begin
          $display("Test is passed");
        end
        else begin
          $error("Test is failed");
        end
      end
    endcase
   end
   end
  endtask
endclass
