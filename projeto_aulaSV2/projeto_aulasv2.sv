// Descrição por fluxo de dados - intermediarios

module projeto_aulasv2 (

    input logic x, y, z,
    output logic f1, f2

);

    logic w1, w2, w3, w4, w5, w6;
    // Eu poderia colocar o f2 como primeira linha
    // Porque todas as atribuições estão rodando em paralelo
    // O que vai mudar é QUANDO eu vou pegar a saída
    assign w1 = ~y;
    assign w2 = w1 & z;
    assign f1 = w2 | x;
    assign w3 = ~y;
    assign w5 = w3 & x;
    assign w4 = ~x;
    assign w6 = w4 & z;
    assign f2 = w5 | w6;

endmodule: projeto_aulasv2

module projeto_aulasv2_always_comb (

    input logic x, y, z,
    output logic f1, f2
);

    always_comb begin
        f1 = ((~y & z) | x);
    end

endmodule