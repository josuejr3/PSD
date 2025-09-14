

o tempo simulado só avançar se eu codar pra avançar


cpu time - tempo de simulação
tempo simulado - 100

alterar tempo

-timescale=1ns/100ps +vcs+flush+all +warn=all -sverilog




  initial begin  
    $dumpfile("dump.vcd");
    $dumpvars(1);
    clk = 0;
    #100
    $finish;
  end


dumpvars 1 - teste
dumpvars 0 - código base

ambas as atribuições vão depender do passar do tempo


>>>>>>>> IMPORTANTE
>>>>>>>> se atribuir o valor na subida, pegar o valor na descida
>>>>>>



Criar um fio e associar o fio ao um registrador, o valor o registrador só será interessante para a análise no pulso de subida ou descida do clock, (associação com um circuito combinancional)


