/*

	BarrelShifter
	Deslocador Barrel em Verilog/SV

*/

module barrelShifter(

	input logic [7:0] a,
	input logic [2:0] sh,
	output logic [7:0] b
);
	
	assign b = a << sh;
	
	
endmodule: barrelShifter