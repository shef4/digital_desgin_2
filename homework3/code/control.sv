// control module

// TODO: This module should control the enable signals of the count16, test_mult, gold_mult, compare, and progress modules based on the inputs begin_test and inject_error

module control(
input clk,
input reset_n,
input begin_test,
input inject_error,
output count_a_en,
output count_b_en,
output test_mult_en,
output gold_mult_en,
output compare_en,
output progress_en
);

// Behaviour of the module:
// The control module takes in inputs clk, reset_n, begin_test, and inject_error.
// It outputs signals count_a_en, count_b_en, test_mult_en, gold_mult_en, compare_en, and progress_en, which control the enable signals of the count16, test_mult, gold_mult, compare, and progress modules respectively.
// The module determines the behaviour of the overall system based on the inputs begin_test and inject_error.
// It determines when each module should be enabled or disabled to perform its function as part of the overall system.

endmodule