`include "barrel_shifter_defs.sv"

module barrel_shifter_tb;

   logic [15:0] data_in;
   logic       direction;
   logic [2:0] amount;
   logic [15:0] data_out;
   
   logic [15:0] check_val;
   
   barrel_shifter bs8(.*);
   
   initial begin
      $timeformat(-9, 2, "ns");
      data_in = 16'h1234;
      direction = LEFT;
      check_val = data_in;
      for (byte i = 0; i < 16; i++) begin
         amount = 3'(i);
         #5ns;
         assert(data_out == check_val)
         else $display("time=%0t direction=%0h amount=%0h data_out=%0h check_val=%0h",
                       $time, direction, amount, data_out, check_val);
         #5ns;
         check_val = {check_val[14:0], check_val[15]};
      end
      direction = RIGHT;
      check_val = data_in;
      for (byte i = 0; i < 16; i++) begin
         amount = 3'(i);
         #5ns;
         assert(data_out == check_val)
         else $display("time=%0t direction=%0h amount=%0h data_out=%0h check_val=%0h",
                       $time, direction, amount, data_out, check_val);
         #5ns;
         check_val = {check_val[0], check_val[15:1]};
      end
      $stop;
   end
endmodule
