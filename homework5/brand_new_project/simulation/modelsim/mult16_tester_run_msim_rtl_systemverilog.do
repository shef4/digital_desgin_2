transcript on
if ![file isdirectory mult16_tester_iputf_libs] {
	file mkdir mult16_tester_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/clock_doubler_sim/clock_doubler.vo"

vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/progress.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/seg_disp.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/control.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/mult16_tester.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/test_mult.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/gold_mult.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/compare.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/button.sv}
vlog -sv -work work +incdir+C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project {C:/Users/sefun/Dev/digital_desgin_2/homework5/brand_new_project/counter.sv}

