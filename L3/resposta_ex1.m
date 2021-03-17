% observamos que os valores proprios calculados pela funcao ex2 estao em concordancia com os
% valores calculados pela funcao eig considerando 10 algarismos significativos.
% utilizamos uma tolerancia de 0,5 * 10^-9 tendo em conta que os valores proprios da matriz estao
% entre 0 e 9, garantindo que os valores tem 10 algarismos significativos.


% comparando o numero de iteracoes obtido utilizando os dois metodos para as tres funcoes que escolhemos,
% o metodo da falsa posicao parece ser mais eficiente.

% A titulo de curiosidade, decidimos aplicar os dois metodos aos polinomios
% p(x) = x^(i) - (i), para i = 2,3,4,5,6
% e percebemos que nem sempre o metodo da falsa posicao é mais eficiente
% que o da bisseccao porque pelos graficos (iteracoes_ex1_ex3, erros_relativos_ex1_ex3)
% obtidos (pelo script ex4.m) por vezes o erro relativo da bisseccao
% é inferior ao da falsa posicao,
% o mesmo acontece para o numero de iteracoes.
