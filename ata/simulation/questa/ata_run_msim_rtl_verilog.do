transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Josue/Engenharia\ de\ Computacao/Quinto\ Periodo/PSD/ata {D:/Josue/Engenharia de Computacao/Quinto Periodo/PSD/ata/ata.sv}

