
<html lang="pt-BR">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Referência rápida — SystemVerilog: Sintetizável vs. Não sintetizável</title>
  <style>
    :root { font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif; }
    body { margin: 24px; line-height: 1.5; }
    h1 { margin-bottom: 8px; }
    h2 { margin-top: 28px; margin-bottom: 8px; }
    .hint { color: #444; margin-bottom: 20px; }
    table { width: 100%; border-collapse: collapse; margin: 12px 0 24px; }
    th, td { border: 1px solid #ddd; padding: 10px; vertical-align: top; }
    th { background: #f7f7f7; text-align: left; }
    tbody tr:nth-child(odd) { background: #fafafa; }
    .tag { display: inline-block; padding: 2px 8px; border-radius: 999px; font-size: 12px; font-weight: 600; }
    .yes { background: #e6f6ea; color: #116138; border: 1px solid #bde5cc; }
    .no  { background: #fdeaea; color: #7f1d1d; border: 1px solid #f5c2c0; }
    code { background: #f5f5f5; padding: 2px 6px; border-radius: 6px; }
    footer { color: #666; font-size: 13px; margin-top: 24px; }
  </style>
</head>
<body>
  <h1>SystemVerilog — Sintetizável vs. Não sintetizável</h1>
  <p class="hint">Referência rápida para saber o que pode ir para FPGA/ASIC (sintetizável) e o que é apenas para simulação (testbench).</p>

  <h2>🔹 O que é <strong>sintetizável</strong> (vira hardware real)</h2>
  <table aria-label="Construções sintetizáveis em SystemVerilog">
    <thead>
      <tr>
        <th>Construção</th>
        <th>Sintetizável?</th>
        <th>Uso típico</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>module</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Definição de circuito/módulo</td>
      </tr>
      <tr>
        <td><code>input</code>, <code>output</code>, <code>inout</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Portas de comunicação do módulo</td>
      </tr>
      <tr>
        <td><code>wire</code>, <code>logic</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Conexão e armazenamento de sinais</td>
      </tr>
      <tr>
        <td><code>assign</code> (atribuição contínua)</td>
        <td><span class="tag yes">Sim</span></td>
        <td>Lógica combinacional/Conexões</td>
      </tr>
      <tr>
        <td><code>always @(*)</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Lógica combinacional</td>
      </tr>
      <tr>
        <td><code>always @(posedge clk)</code> / <code>(negedge)</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Lógica sequencial (flip-flops/registradores)</td>
      </tr>
      <tr>
        <td><code>if / else</code> (em <code>always</code>)</td>
        <td><span class="tag yes">Sim</span></td>
        <td>Decisão, enable, reset</td>
      </tr>
      <tr>
        <td><code>case</code> (em <code>always</code>)</td>
        <td><span class="tag yes">Sim</span></td>
        <td>Multiplexadores/Decodificadores</td>
      </tr>
      <tr>
        <td><code>for</code> (com limites fixos)</td>
        <td><span class="tag yes">Sim</span></td>
        <td>Replicação de hardware (unroll na síntese)</td>
      </tr>
      <tr>
        <td><code>generate</code> / <code>genvar</code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Geração de hardware parametrizado</td>
      </tr>
      <tr>
        <td>Operadores <code>+ - * / &amp; | ^ ~ << >></code></td>
        <td><span class="tag yes">Sim</span></td>
        <td>Aritmética e lógica implementáveis em hardware</td>
      </tr>
    </tbody>
  </table>

  <h2>🔸 O que <strong>não é sintetizável</strong> (somente simulação/testbench)</h2>
  <table aria-label="Construções não sintetizáveis em SystemVerilog">
    <thead>
      <tr>
        <th>Construção</th>
        <th>Sintetizável?</th>
        <th>Uso típico</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>initial</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Inicialização e estímulos no testbench</td>
      </tr>
      <tr>
        <td>Atrasos de simulação <code>#10</code>, <code>#delay</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Modelar tempo na simulação</td>
      </tr>
      <tr>
        <td><code>$display</code>, <code>$monitor</code>, <code>$write</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Logs/prints durante simulação</td>
      </tr>
      <tr>
        <td><code>$finish</code>, <code>$stop</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Encerrar/pausar simulação</td>
      </tr>
      <tr>
        <td><code>$random</code>, <code>$urandom</code>, <code>$urandom_range</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Geração de estímulos aleatórios</td>
      </tr>
      <tr>
        <td><code>forever</code> (para laços de simulação)</td>
        <td><span class="tag no">Não</span></td>
        <td>Loops infinitos em testbench</td>
      </tr>
      <tr>
        <td><code>force</code> / <code>release</code></td>
        <td><span class="tag no">Não</span></td>
        <td>Forçar valores de sinais na simulação</td>
      </tr>
      <tr>
        <td>Arquivos: <code>$readmemb</code>, <code>$readmemh</code>, <code>$fopen</code>, etc.</td>
        <td><span class="tag no">Não</span></td>
        <td>Carregar/registrar dados durante a simulação*</td>
      </tr>
    </tbody>
  </table>
	<br></br>
  <footer>
    *Observação: algumas ferramentas permitem inicializar ROM/BRAM a partir de arquivos em fluxo de síntese, mas o uso das chamadas de sistema em tempo de execução é típico de simulação.
  </footer>
</body>

