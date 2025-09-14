/*
    Gerador de Paridade (PAR)
*/

module parityGenerator (a, s);

    input logic [3:0] a;
    output logic s;

    always_comb begin

        s = a[3] ^ a[2] ^ a[1] ^ a[0];
        // Podemos usar o operador de redução
        // s = ^a;

    end


endmodule: parityGenerator