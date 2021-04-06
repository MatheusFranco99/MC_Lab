% Exercicio 1 - ver funcao Secante.m

% Exercicio 2 A - ver o documento Exercicio2A.pdf

% Exercicio 2 B - ver funcao QuasiNewton.m

% Exercicio 3 A - ver funcoes funcaoDoGas.m e graficoFuncaoDoGas.m

% f(x) = (p+a(N/V)^2)(V-Nb) - kNT

% Por observacao do grafico (Grafico3A.pdf) construido para o intervalo [0.03,0.08], escolhemos o intervalo [0.04,
% 0.045] para aproximar a raiz da funcao do gas (f) pois a funcao muda de
% sinal no mesmo. A funcao f e continua nesse intervalo e f(0.04) * f(0.045) <
% 0, logo pelo teorema de Bolzano concluimos que existe pelo menos um zero
% de f em [0.04,0.045].

% Observamos que a funcao e continuamente diferenciavel no intervalo e
% f'(x) != 0 em [0.04,0.045] (visto no grafico Grafico3A_derivada.m). Logo,
% pelo Corolario do Teorema de Rolle, existe no maximo uma raiz no
% intervalo.

% Concluimos entao que no intervalo considerado a funcao f tem um unico zero.

% f'(x) = -aN^2/V^2 + p +2abN^3/V^3

funcaoDoGas(0.04)

ans =

    -7.711875000000002e+05

funcaoDoGas(0.045)

ans =

     5.359567901234560e+05
   
   
   
% EXERCICIO 3 B
[x,dif,it] = Newton(0.04,@(x)funcaoDoGas(x), @(x)devFuncaoDoGas(x),1e-12)

x =

   0.042700000000000


dif =

     6.938893903907228e-18


it =

     5
     
% EXERCICIO 3 C
[x,it] = Secante(@(x)funcaoDoGas(x), 0.04,0.045,1e-12)

x =

   0.042700000000000


it =

     6
     
     
% EXERCICIO 3 D (ver grafico Grafico3D.pdf)

[x,dif,it] = QuasiNewton(0.04,@(x)funcaoDoGas(x),1e-5,1e-12)

x =

   0.042700000000000


dif =

     3.528635716953943e-13


it =

     5
 
% O Grafico3D.pdf representa o numero de iteracoes do metodo quasiNewton por valor de delta.
% Para delta <= 10^-5, temos 5 iteracoes. Nao e possivel obter melhor
% desempenho pois o metodo de Newton (que converge mais rapidamente que o
% metodo quasiNewton) tambem possui 5 iteracoes (como vimos na alinea B).
% Por essa razao aplicamos o metodo de quasiNewton com delta = 10^-5.


% EXERCICIO 3 E

% O metodo da Secante teve mais iteradas que os demais metodos (6 vs 5) e portanto
% teve pior desempenho.

% Os metodos de Newton e quasiNewton tiveram o mesmo numero de iteradas
% (para delta <= 10^-5) porem o metodo quasiNewton teve menor tempo de execucao
% o que nos leva a concluir que, neste caso, foi mais eficiente.

t1 = cputime;[x,dif,it] = QuasiNewton(0.04,@(x)funcaoDoGas(x),1e-5,1e-12);t2 = cputime; t = t2-t1

t =

   0.009999999999991

t1 = cputime; [x,dif,it] = Newton(0.04,@(x)funcaoDoGas(x), @(x)devFuncaoDoGas(x),1e-12); t2 = cputime; t2-t1

ans =

   0.010000000000048

% Como os dois metodos tiveram o mesmo numero de iteradas para valores de
% delta muito proximos de zero (<= 10^-5), a ordem de convergencia e
% semelhante. Contudo, ao escolhermos valores de delta mais afastados de 0,
% e.g. 10^-4, o numero de iteracoes do metodo quasiNewton.

[x,dif,it] = QuasiNewton(0.04,@(x)funcaoDoGas(x),1e-4,1e-12)

x =

   0.042699999999999


dif =

     1.268360416695202e-13


it =

     6
     
% O metodo de Newton, no entanto, teve um erro menor
% que o metodo quasiNewton (6.938893903907228e-18 vs
% 3.528635716953943e-13).

