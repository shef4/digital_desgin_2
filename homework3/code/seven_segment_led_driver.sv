// TODO: Empty module for seven_segment_led_driver
module seven_segment_led_driver(
input clk,
input [7:0] num,
output [6:0] seg
);
// Behaviour of the module:
// The seven_segment_led_driver module takes in inputs clk and num. It outputs the signal seg.
// The module converts the input number num to the corresponding seven-segment LED display pattern, which is represented by seg.
// It updates the output on every rising edge of the clk signal.
endmodule