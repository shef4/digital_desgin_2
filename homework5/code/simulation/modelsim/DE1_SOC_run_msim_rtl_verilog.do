transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/test_mult.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/status.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/seg_disp.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/mult16_tester.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/gold_mult.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/compare.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/code {C:/Users/sefun/Dev/digital_desgin_2/homework5/code/button.sv}
