`include "barrel_shifter_defs.sv"

module barrel_shifter(
   input  logic       direction,
   input  logic [2:0] amount,
   input  logic [7:0] data_in,
   output logic [7:0] data_out
);

`ifdef BS_USE_CASES
   always_comb begin
      if (direction == LEFT) begin
         unique case (amount)
            3'd0:    data_out = data_in;
            3'd1:    data_out = {data_in[6:0], data_in[7]};
            3'd2:    data_out = {data_in[5:0], data_in[7:6]};
            3'd3:    data_out = {data_in[4:0], data_in[7:5]};
            3'd4:    data_out = {data_in[3:0], data_in[7:4]};
            3'd5:    data_out = {data_in[2:0], data_in[7:3]};
            3'd6:    data_out = {data_in[1:0], data_in[7:2]};
            3'd7:    data_out = {data_in[0],   data_in[7:1]};
         endcase
      end
      else begin
         unique case (amount)
            3'd0:    data_out = data_in;
            3'd1:    data_out = {data_in[0],   data_in[7:1]};
            3'd2:    data_out = {data_in[1:0], data_in[7:2]};
            3'd3:    data_out = {data_in[2:0], data_in[7:3]};
            3'd4:    data_out = {data_in[3:0], data_in[7:4]};
            3'd5:    data_out = {data_in[4:0], data_in[7:5]};
            3'd6:    data_out = {data_in[5:0], data_in[7:6]};
            3'd7:    data_out = {data_in[6:0], data_in[7]};
         endcase
      end
   end
`endif

`ifdef BS_USE_STAGES
   logic [7:0] out_left;
   logic [7:0] out_right;
   
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
   logic [7:0] right_out;
   logic [7:0] reversed_in;
   logic [7:0] reversed_out;
   
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
   input  logic [7:0] data_in,
   input  logic [2:0] amount,
   output logic [7:0] data_out
);
   logic [7:0] stage0;
   logic [7:0] stage1;

   assign stage0   = amount[0] ? {data_in[0], data_in[7:1]} : data_in;
   assign stage1   = amount[1] ? {stage0[1:0], stage0[7:2]} : stage0;
   assign data_out = amount[2] ? {stage1[3:0], stage1[7:4]} : stage1;
endmodule
`endif

`ifdef BS_USE_STAGES
module barrel_shifter_left(
   input  logic [7:0] data_in,
   input  logic [2:0] amount,
   output logic [7:0] data_out
);
   logic [7:0] stage0;
   logic [7:0] stage1;
   
   assign stage0   = amount[0] ? {data_in[6:0], data_in[7]} : data_in;
   assign stage1   = amount[1] ? {stage0[5:0], stage0[7:6]} : stage0;
   assign data_out = amount[2] ? {stage1[3:0], stage1[7:4]} : stage1;
endmodule
`endif

`ifdef BS_USE_REVERSAL
module logic_reverse(
   input  logic [7:0] data_in,
   output logic [7:0] data_out
);
   
   assign data_out = {data_in[0], data_in[1], data_in[2], data_in[3],
                      data_in[4], data_in[5], data_in[6], data_in[7]};
endmodule
`endif
