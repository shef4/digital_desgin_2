`include "barrel_shifter_defs.sv"

module barrel_shifter(
   input  logic       direction,
   input  logic [2:0] amount,
   input logic [15:0] data_in,
   output logic [15:0] data_out
);

`ifdef BS_USE_CASES
   always_comb begin
      if (direction == LEFT) begin
         unique case (amount)
            3'd0:    data_out = data_in;
            3'd1:    data_out = {data_in[14:0], data_in[15]};
            3'd2:    data_out = {data_in[13:0], data_in[15:14]};
            3'd3:    data_out = {data_in[12:0], data_in[15:13]};
            3'd4:    data_out = {data_in[11:0], data_in[15:12]};
            3'd5:    data_out = {data_in[10:0], data_in[15:11]};
            3'd6:    data_out = {data_in[9:0],  data_in[15:10]};
            3'd7:    data_out = {data_in[8:0],  data_in[15:9]};
            3'd8:    data_out = {data_in[7:0],  data_in[15:8]};
            3'd9:    data_out = {data_in[6:0],  data_in[15:7]};
            3'd10:   data_out = {data_in[5:0],  data_in[15:6]};
            3'd11:   data_out = {data_in[4:0],  data_in[15:5]};
            3'd12:   data_out = {data_in[3:0],  data_in[15:4]};
            3'd13:   data_out = {data_in[2:0],  data_in[15:3]};
            3'd14:   data_out = {data_in[1:0],  data_in[15:2]};
            3'd15:   data_out = {data_in[0],    data_in[15:1]};
         endcase
      end
      else begin
         unique case (amount)
            3'd0:    data_out = data_in;
            3'd1:    data_out = {data_in[0],   data_in[14:1]};
            3'd2:    data_out = {data_in[1:0], data_in[14:2]};
            3'd3:    data_out = {data_in[2:0], data_in[14:3]};
            3'd4:    data_out = {data_in[3:0], data_in[14:4]};
            3'd5:    data_out = {data_in[4:0], data_in[14:5]};
            3'd6:    data_out = {data_in[5:0], data_in[14:6]};
            3'd7:    data_out = {data_in[6:0], data_in[14:7]};
            3'd8:    data_out = {data_in[7:0], data_in[14:8]};
            3'd9:    data_out = {data_in[8:0], data_in[14:9]};
            3'd10:   data_out = {data_in[9:0], data_in[14:10]};
            3'd11:   data_out = {data_in[10:0], data_in[14:11]};
            3'd12:   data_out = {data_in[11:0], data_in[14:12]};
            3'd13:   data_out = {data_in[12:0], data_in[14:13]};
            3'd14:   data_out = {data_in[13:0], data_in[14:14]};
            3'd15:   data_out = {data_in[14:0], data_in[15]};
         endcase
      end
   end
`endif

`ifdef BS_USE_STAGES
   logic [15:0] out_left;
   logic [15:0] out_right;
   
   barrel_shifter_left  left_shifter(
      .data_in(data_in),
      .amount(amount),
      .data_out(out_left)
   );
 
   barrel_shifter_right right_shifter(
      .data_in(data_in),
      .amount(amount),
      .data_out(out_right)
   );
   
   assign data_out = (direction == LEFT) ? out_left : out_right;
`endif

`ifdef BS_USE_REVERSAL
   logic [15:0] right_out;
   logic [15:0] reversed_in;
   logic [15:0] reversed_out;
   
   logic_reverse logic_reverse_in(
      .data_in(data_in),
      .data_out(reversed_in)
   );
 
   barrel_shifter_right right_shifter(
      .data_in((direction == LEFT) ? reversed_in : data_in),
      .amount(amount),
      .data_out(right_out)
   );
 
   logic_reverse logic_reverse_out(
      .data_in(right_out),
      .data_out(reversed_out)
   );
   
   assign data_out = (direction == LEFT) ? reversed_out : right_out;
`endif
endmodule

`ifndef BS_USE_CASES
module barrel_shifter_right(
   input  logic [15:0] data_in,
   input  logic [3:0]  amount,
   output logic [15:0] data_out
);
   logic [15:0] stage0;
   logic [15:0] stage1;
   logic [15:0] stage2;

   assign stage0   = amount[0] ? {data_in[1:0], data_in[15:2]} : data_in;
   assign stage1   = amount[1] ? {stage0[3:0], stage0[15:4]} : stage0;
   assign stage2   = amount[2] ? {stage1[7:0], stage1[15:8]} : stage1;
   assign data_out = amount[3] ? {stage2[15:0], stage2[15]} : stage2;

endmodule
`endif

`ifdef BS_USE_STAGES
module barrel_shifter_left(
   input  logic [15:0] data_in,
   input  logic [3:0]  amount,
   output logic [15:0] data_out
);
   logic [15:0] stage0; 
   logic [15:0] stage1;
   logic [15:0] stage2;

   
   assign stage0   = amount[0] ? {data_in[14:0], data_in[0]} : data_in;
   assign stage1   = amount[1] ? {stage0[12:0], stage0[3:0]} : stage0;
   assign stage2   = amount[2] ? {stage1[8:0], stage1[7:0]} : stage1;
   assign data_out = amount[3] ? {stage2[0], stage2[15:1]} : stage2;
endmodule
`endif

`ifdef BS_USE_REVERSAL
module logic_reverse(
   input  logic [15:0] data_in,
   output logic [15:0] data_out
);
   
   assign data_out = {data_in[0], data_in[1], data_in[2], data_in[3],
                      data_in[4], data_in[5], data_in[6], data_in[7],
                      data_in[8], data_in[9], data_in[10], data_in[11],
                      data_in[12], data_in[13], data_in[14], data_in[15]};
endmodule
`endif
