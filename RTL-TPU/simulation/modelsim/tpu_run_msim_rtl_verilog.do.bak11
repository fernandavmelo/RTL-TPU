transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/sarahy/Desktop/TPU\ old {/home/sarahy/Desktop/TPU old/tpu.sv}
vlog -sv -work work +incdir+/home/sarahy/Desktop/TPU\ old {/home/sarahy/Desktop/TPU old/timer.sv}
vlog -sv -work work +incdir+/home/sarahy/Desktop/TPU\ old {/home/sarahy/Desktop/TPU old/gerador_clock.sv}
vlog -sv -work work +incdir+/home/sarahy/Desktop/TPU\ old {/home/sarahy/Desktop/TPU old/register_file.sv}

vlog -sv -work work +incdir+/home/sarahy/Desktop/TPU\ old {/home/sarahy/Desktop/TPU old/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run 300 ms
