module fullAdder (a, b, cin, s, cout);
	
	// Portas
	input a, b, cin;
	output s, cout;
	
	// Fios
	wire w1, w2, w3;
	
	// Funcionamento do circuito
	xor u0 (w1, b, a);
	xor u1 (s, w1, cin);
	and u2 (w2, cin, w1);
	and u3 (w3, a, b);
	or u4 (cout, w2, w3);
	
endmodule: fullAdder
