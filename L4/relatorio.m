% lab 4

% exercicio 1

% Ver documento ex1.m

% exercicio 2

% alinea a

% Observando a lista ord1, nota-se que a sucessao c_{1,k} estabiliza
% em 0.5 (com erro 6.098721527791895e-11) e sendo este valor finito e nao nulo, podemos concluir que a ordem de convergencia e linear. As
% sucessoes c_{2,k} e c_{3,k} nao estabilizam o que sugere que tendem para
% infinito, uma vez que os valores tendem a aumentar.

% Teoricamente, como visto na aula, esta funcao satisfaz o teorema do ponto
% fixo para o intervalo [0.2,0.5] . Para ver a ordem de convergencia, calculamos a derivada da funcao
% para x = 1/3 um ponto fixo da funcao atrator, excluimos o ponto fixo x = 0 uma vez que este e repulsor pois |g'(0)| > 1.
% |g'(1/3)| = 1/2 diferente de zero que nos diz que a ordem de convergencia e 1. Assim, o coeficiente
% assimptotico = |g'(1/3)/1!| = 0.5 o que corresponde ao observado pela
% funcao ex1.

% alinea b

% Ao observar as listas concluimos que o algoritmo chegou as 100 iteracoes
% sem estabilizar e portanto o metodo diverge. Este facto e esperado
% teoricamente uma vez que os dois pontos fixos (0 e 5/7) sao repulsores (|g'(0)| > 1 e
% |g'(5/7)| > 1).

% alinea c

% Observando a lista ord2, nota-se que a sucessao c_{2,k} estabiliza
% em 0.5 (com erro 0) e sendo este valor finito e nao nulo, podemos concluir que a ordem de convergencia e quadratica. As
% sucessoes c_{1,k} e c_{3,k} nao estabilizam o que sugere que tendem para
% 0 e infinito (respetivamente).

% As tres listas ord1,2,3 tem como ultimo elemento 0 pois os ultimos 2
% valores de x_k sao iguais (1) tendo em conta o sistema de ponto flutuante.

% Teoricamente, como visto na aula, esta funcao satisfaz o teorema do ponto
% fixo para o intervalo [1,2] . Para ver a ordem de convergencia, calculamos a derivada da funcao
% para x = 1 um ponto fixo atrator da funcao, excluimos o ponto x = -1 pois x_k >= 0 para todo k pois
% comecamos com um x_0 > 0.
% |g'(1)| = 0 e |g''(1)| = 1 != 0 que nos diz que a ordem de convergencia e 2. Assim, o coeficiente
% assimptotico = |g''(1)/2!| = 0.5 o que corresponde ao observado pela
% funcao ex1.