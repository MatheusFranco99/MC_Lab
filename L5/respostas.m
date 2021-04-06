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

% f'(x) = -aN^2/V^2 + p +2abN^3/V^3 = 0

funcaoDoGas(0.04)

ans =

  -7.7119e+05

funcaoDoGas(0.045)

ans =

   5.3596e+05
   
   
   
% EXERCICIO 3 B
[x,dif,it] = Newton(0.04,@(x)funcaoDoGas(x), @(x)devFuncaoDoGas(x),1e-12)

x =

    0.0427


dif =

   6.9389e-18


it =

     5
     
% EXERCICIO 3 C
 
[x,it] = Secante(@(x)funcaoDoGas(x), 0.04,0.045,1e-12)

x =

    0.0427


it =

     6
     
     
% EXERCICIO 3 d
 
% 


% EXERCICIO E

% 