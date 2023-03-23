module sync_fifo
  #(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8)
  (
    input logic clk,
    input logic rst,
    input logic wr_en,
    input logic rd_en,
    input logic [DATA_WIDTH-1:0] data_in,
    output logic [DATA_WIDTH-1:0] data_out,
    output logic [ADDR_WIDTH-1:0] wr_ptr,
    output logic [ADDR_WIDTH-1:0] rd_ptr,
    output logic almost_full,
    output logic almost_empty
  );
 
  localparam FIFO_DEPTH = 1 << ADDR_WIDTH;
  localparam ALMOST_FULL_THRESHOLD = FIFO_DEPTH * 3/4;
  localparam ALMOST_EMPTY_THRESHOLD = FIFO_DEPTH * 1/4;
 
  logic [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];
  logic [ADDR_WIDTH-1:0] wr_ptr_reg = 0;
  logic [ADDR_WIDTH-1:0] rd_ptr_reg = 0;
  logic [ADDR_WIDTH-1:0] wr_ptr_next = 0;
  logic [ADDR_WIDTH-1:0] rd_ptr_next = 0;
  logic [ADDR_WIDTH-1:0] used_entries = 0;
 
  always @(posedge clk) begin
    if (rst) begin
      wr_ptr_reg <= 0;
      rd_ptr_reg <= 0;
      used_entries <= 0;
      almost_full <= 0;
      almost_empty <= 1;
    end else begin
      if (wr_en && (used_entries < FIFO_DEPTH)) begin
        fifo[wr_ptr_reg] <= data_in;
        wr_ptr_next <= (wr_ptr_reg == FIFO_DEPTH-1) ? 0 : wr_ptr_reg + 1;
        used_entries <= used_entries + 1;
      end
      if (rd_en && (used_entries > 0)) begin
        data_out <= fifo[rd_ptr_reg];
        rd_ptr_next <= (rd_ptr_reg == FIFO_DEPTH-1) ? 0 : rd_ptr_reg + 1;
        used_entries <= used_entries - 1;
      end
      wr_ptr_reg <= wr_ptr_next;
      rd_ptr_reg <= rd_ptr_next;
      almost_full <= (used_entries >= ALMOST_FULL_THRESHOLD);
      almost_empty <= (used_entries <= ALMOST_EMPTY_THRESHOLD);
    end
  end
 
  assign wr_ptr = wr_ptr_reg;
  assign rd_ptr = rd_ptr_reg;
 
endmodule




module sync_fifo_tb;

  // Parameters
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 4;
  localparam FIFO_DEPTH = 1 << ADDR_WIDTH;

  // Inputs
  logic clk = 0;
  logic rst = 0;
  logic wr_en = 0;
  logic rd_en = 0;
  logic [DATA_WIDTH-1:0] data_in = 0;

  // Outputs
  logic [DATA_WIDTH-1:0] data_out;
  logic [ADDR_WIDTH-1:0] wr_ptr;
  logic [ADDR_WIDTH-1:0] rd_ptr;
  logic almost_full;
  logic almost_empty;

  // Instantiate the DUT
  sync_fifo #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH))
    dut (
      .clk(clk),
      .rst(rst),
      .wr_en(wr_en),
      .rd_en(rd_en),
      .data_in(data_in),
      .data_out(data_out),
      .wr_ptr(wr_ptr),
      .rd_ptr(rd_ptr),
      .almost_full(almost_full),
      .almost_empty(almost_empty)
    );

  // Testbench logic
  always @(posedge clk) begin
    // Generate reset pulse
    if ($time == 0) begin
      rst <= 1;
    end else if ($time == 10) begin
      rst <= 0;
    end
    // Generate random data for write
    data_in <= $random;
    // Generate random write and read enable signals
    wr_en <= $random & 1;
    rd_en <= $random & 1;
  end

  // Concurrent assertions
  // Check that data_out is the same as data_in after one clock cycle of write
  // and read with the same write and read pointers
	assert property (
	  @(posedge clk) disable iff (rst) (
		 !((wr_en && rd_en && (wr_ptr == rd_ptr)) && (data_out !== data_in))
	  )
	) else $error("Data mismatch");

	
  // Check that the FIFO is not almost full when used_entries is less than ALMOST_FULL_THRESHOLD
  assert property (
    @(posedge clk) disable iff (rst) almost_full == 0 || used_entries >= ALMOST_FULL_THRESHOLD
  ) else $error("FIFO almost full");

  // Check that the FIFO is not almost empty when used_entries is greater than ALMOST_EMPTY_THRESHOLD
  assert property (
    @(posedge clk) disable iff (rst) almost_empty == 0 || used_entries <= ALMOST_EMPTY_THRESHOLD
  ) else $error("FIFO almost empty");

  // Simulate the clock
  initial begin
    repeat (20) @(posedge clk);
    $finish;
  end

endmodule

