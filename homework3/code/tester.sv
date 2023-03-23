

module tester(
    input clk,
    input reset_n,
    input begin_test,
    input inject_error,
    output [7:0] progress_a,
    output [7:0] progress_b,
    output [7:0] status,
    output [6:0] seg_a,
    output [6:0] seg_b
    );

	wire [15:0] count_a, count_b;
	wire [31:0] test_mult, gold_mult;
	wire match, count16_a_en, count16_b_en, test_mult_en, gold_mult_en, compare_en, progress_en;

	count16 count16_a(.clk(clk), .reset_n(reset_n), .count(count_a));
	count16 count16_b(.clk(clk), .reset_n(reset_n), .count(count_b));

	test_mult test_mult_inst(.clk(clk), .reset_n(reset_n), .a(count_a), .b(count_b), .result(test_mult));
	gold_mult gold_mult_inst(.clk(clk), .reset_n(reset_n), .a(count_a), .b(count_b), .result(gold_mult));

	compare compare_inst(.test_mult(test_mult), .gold_mult(gold_mult), .match(match));

	progress progress_inst(.clk(clk), .reset_n(reset_n), .a(count_a), .b(count_b), .error(inject_error), .progress_a(progress_a), .progress_b(progress_b));

	status status_inst(.clk(clk), .reset_n(reset_n), .begin_test(begin_test), .match(match), .status(status));

	control control_inst(.clk(clk), .reset_n(reset_n), .begin_test(begin_test), .inject_error(inject_error), 
							  .count_a_en(count16_a_en), .count_b_en(count16_b_en), .test_mult_en(test_mult_en), 
							  .gold_mult_en(gold_mult_en), .compare_en(compare_en), .progress_en(progress_en));

	seven_segment_led_driver seg_driver_a(.clk(clk), .num(progress_a), .seg(seg_a));
	seven_segment_led_driver seg_driver_b(.clk(clk), .num(progress_b), .seg(seg_b));

endmodule
