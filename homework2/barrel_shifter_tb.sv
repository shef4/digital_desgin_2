`include "barrel_shifter_defs.sv"

module barrel_shifter_tb;

   logic [7:0] data_in;
   logic       direction;
   logic [2:0] amount;
   logic [7:0] data_out;
   
   logic [7:0] check_val;
   
   barrel_shifter bs8(.*);
   
   initial begin
      $timeformat(-9, 2, "ns");
      data_in = 8'h01;
      direction = LEFT;
      check_val = data_in;
      for (byte i = 0; i < 8; i++) begin
         amount = 3'(i);
         #5ns;
         assert(data_out == check_val)
         else $display("time=%0t direction=%0h amount=%0h data_out=%0h check_val=%0h",
                       $time, direction, amount, data_out, check_val);
         #5ns;
         check_val = {check_val[6:0], check_val[7]};
      end
      direction = RIGHT;
      check_val = data_in;
      for (byte i = 0; i < 8; i++) begin
         amount = 3'(i);
         #5ns;
         assert(data_out == check_val)
         else $display("time=%0t direction=%0h amount=%0h data_out=%0h check_val=%0h",
                       $time, direction, amount, data_out, check_val);
         #5ns;
         check_val = {check_val[0], check_val[7:1]};
      end
      $stop;
   end
endmodule
