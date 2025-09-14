transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Josue/Engenharia\ de\ Computacao/Quinto\ Periodo/PSD/fourBitAdder {D:/Josue/Engenharia de Computacao/Quinto Periodo/PSD/fourBitAdder/fullAdder.sv}
vlog -sv -work work +incdir+D:/Josue/Engenharia\ de\ Computacao/Quinto\ Periodo/PSD/fourBitAdder {D:/Josue/Engenharia de Computacao/Quinto Periodo/PSD/fourBitAdder/fourBitAdder.sv}

