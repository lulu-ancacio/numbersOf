<div align="center">
<img width=380px height=390px src="https://user-images.githubusercontent.com/110111018/214122638-0f3eedf1-4ef8-46af-9eca-a4758bbb32a6.png"/>
<br>
<img src="https://img.shields.io/github/license/lulu-ancacio/numbersOf?style=plastic">
<img src="http://img.shields.io/static/v1?label=language&message=lua&color=rgb(138,43,226)&style=plastic">
<img src="http://img.shields.io/static/v1?label=language&message=python&color=rgb(0, 154, 69)&style=plastic">
</div>

<h2>Módulo</h2>
<p>
Vários desafios de programação consistem em programar o enésimo número de uma sequência, e <strong>numbersOf</strong> é o módulo 'curinga' que resolve todos esses problemas. Suas mais de 30 funções matemáticas auxiliam em trabalhos envolvendo sequências numéricas, geometria, estudos de números primos e o que sua criatividade permitir. 
<br>
Quais termos de sequências este módulo contempla?
<ul>
<li>Números Metálicos</li>
<li>Números Harmonicôs</li>
<li>Números de Mersenne</li>
<li>Números de Catalan</li>
<li>Números Poligonais</li>
<li>Números n-Step de Fibonacci (tribo/tetra/penta/hexa/hepta-nacci)</li>
<li>Números de Leonardo</li>
<li>Números de Lucas</li>
<li>Números de Jacobsthal</li>
<li>Números de Pell</li>
<li>Números de Golomb</li>
<li>Números de Padovan</li>
<li>Números de Perrin</li>
<li>Números de Cullen</li>
<li>Números de Motzkin</li>
<li>Números de Repunit</li>
<li>Números de Woodall</li>
<li>Números Estrela</li>
<li>Números Oblongos</li>
<li>Números de Thâbit ibn Qurra</li>
<li>Números de Belphegor</li>
<li>Números de Narayana</li>
<li>Números de Bernoulli</li>
<li>Números de Hermite</li>
<li>Números de Connell</li>
<li>Números de Apery</li>
<li>Números de Gregory</li>
<li>Números Beraha</li>
<li>Números de Genocchi</li>
<li>Números de Euler</li>
<li>Números Tangentes</li>
</ul>
Para o funcionamento de algumas funções foi também introduzido ao projeto, de modo segregado à importação do módulo, as funções de apoio:
<ul>
<li>Fatorial</li>
<li>Binômio de Newton</li>
<li>Função Zeta de Riemann (aproximação)</li>
<li>Função Stirling do Segundo Tipo</li>
<li>Fatorial Crescente</li>
</ul>
</p>
<br>
<h2>Importando para seu projeto (em lua)</h2>
<p>
Para consumir <strong>numbersOf</strong> em seus objetivos, baixe o arquivo ZIP deste repositório e extraia dele "numbersof.lua". Hospede o módulo no mesmo diretório que seu projeto e efetue o seguinte procedimento dentro do arquivo que usufruirá deste acervo matemático:
</p>
<br>

```lua
local myVariable = require('numbersof')
```

<p>
Desde modo, sua variável local terá consigo carregada todas as funções do módulo, e você poderá usá-las conforme sua intenção. Um exemplo:
</p>

```lua
local myVariable = require('numbersof')
local myValue = io.read()

print(myVariable.fibonacci(myValue))
print(myVariable.bernoulli(myValue))
```

<p>
Na demonstração a cima, é calculado o número de Fibonacci e o número de Bernoulli no valor de escolha do usuário.
</p>

<h2>Complicações na definição</h2>
<h3>Divergência</h3>
<p>
Algumas sequências do catálogo possuem definições envolvendo funções e operações do cálculo diferencial e integral, objetos que não são facilmente traduzidas para linguagem de programação. Esta é uma tarefa que merece um repositório e esforços próprios. Uma saída para computar essas sequências foi utilizar de definições secundárias que forneciam resultados aproximados ou exatos até certo ponto em seu contradomínio. Por conta desta seleção, algumas funções acabaram sofrendo de divergência e, portanto, não são perfeitamente fidedignas (embora forneçam bons resultados quando <i>n</i> não foir extravagante). São elas:
<ul>
<li>Números de Bernoulli</li>
<li>Números de Genocchi</li>
<li>Números de Euler</li>
<li>Números Tangentes</li>
</ul>
</p>
<h3>Valores fora do domínio</h3>
<p>
Você também irá encontrar complicações quando tentar calcular alguma função em um valor não definido no domínio (como números negativos, fracionários ou 0). Nesses casos, o retorno será vazio (nil).
</p>
<h3>Explanações</h3>
<p>
Algumas funções almejam de uma explicação particular:
<ul>
<li><strong>numbersOf.polygonal(n, m):</strong> <i>n</i> é o número de lados do polígono (<i>n</i>>3) e <i>m</i> é a variável que determina o tamanho da figura.
</li>
<li><strong>numbersOf.euler(n):</strong> os números de Euler, ou números zig, foram programados para ter um retorno conforme o <a href="https://oeis.org/A122045">A122045</a> no <a href="https://oeis.org/">OEIS</a>.
</li>
<li><strong>numbersOf.harmonic(n, m):</strong> nos números harmônicos, <i>n</i> é o enézimo número harmônico e <i>m</i> é o expoente das frações.
</li>
</ul>
</p>
<h2>Fontes</h2>
<p>
Todos atributos das sequências deste módulos são oriundas das enciclopédias <a href="https://wikipedia.org">Wikipédia</a> e <a href="https://oeis.org">OEIS</a> e do acervo matemático da <a href="https://mathworld.wolfram.com/">MathWorld</a>.
</p>
