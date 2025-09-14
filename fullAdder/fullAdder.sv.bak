
/* Declaração do Módulo */

module fullAdder(a, b, cin, s, cout);

	// Declaração de Portas

	input a, b, cin;
	output s, cout;
	
	// Declaração dos fios
	logic w1, w2, w3;
	
	// Funcionamento do circuito
	// (Abordagem estrutural)
	
	xor u0 (w1, a, b);
	xor u1 (s, cin, w1);
	and u2 (w2, cin, w1);
	and u3 (w3, b, a);
	or u4 (cout, w2, w3);
	
	
endmodule: fullAdder