

% Exercicio 3

    n     num. de condicao de V    num. de condicao de B
    __    _____________________    _____________________

     2        15.0996577225021       2.31872930440884   
     3        98.8677385072276        5.0541059644811   
     4        686.434941818594       11.8022626877299   
     5        4924.37105661128       28.6420457277821   
     6        36061.1608802009       71.1465900172797   
     7        267816.700908059       179.452565736798   
     8        2009396.38003925       457.521286801923   
     9        15193229.6780254       1175.77671650846   
    10        115575244.457376       3040.17153809713   
    11        883478691.950231       7899.26447384083   
    12        6780588477.27592        20606.318367922   
    13        52214935925.4277       53932.4198224799   
    14        403235465525.994       141551.428871973   
    15        3121682763354.46       372409.574532814   
    16        24218429252847.1       981820.393765175   
    17         187961503162887       2593201.93995539   
    18    1.45075551271381e+15       6860281.62884171   
    19    1.12082115730632e+16       18174916.7289385   
    20    7.28400944454388e+16       48212916.7183062   

% Por definição, o número de condição de uma matriz A invertível
% na norma p é dado por: cond_p(A) = norma_p(A) * norma_p(inv(A)).

% O número de condição indica uma maior/menor sensibilidade do sistema
% Ax = b a perturbação dos dados, i.e., da alteração dos
% dados quer na matriz A quer no segundo membro b ou ambos.

% Começamos por observar que, qualquer que seja o n entre 2 e 20, o numero
% de condicao da matriz de Vandermonde e sempre bastante superior ao da matriz de
% Bernstein, sendo cada vez mais acentuada esta diferenca para n's cada vez
% maiores. Para n=20, o numero de condicao da matriz de Vandermonde e da
% ordem 10^17, enquanto o da matriz de Bernstein e da ordem 10^8.

% Nota-se que o erro de arredondamento do MatLab e da ordem de 10^{-16}.
% Isso significa que, para o caso em que tomamos n = 19 ou 20, uma vez que o
% numero de condicao da matriz de Vandermonde e da ordem de 10^{16} vamos
% obter um erro de 100%, ou seja, os coeficientes do polinomio obtido nao
% terao significado.

% Tendo em conta o erro de arredondamento do MatLab podemos concluir que, no
% pior dos casos (para n = 20), o numero de condicao da matriz de Bernstein
% e da ordem de 10^8, o que significa que o erro associado ao calculo dos
% coeficientes e, neste caso, da ordem de 10^{-8}, o que podemos considerar
% bastante pequeno.

% As observacoes feitas e a definicao do numero de condicao, sugerem-nos
% que devemos utilizar a base de Bernstein (quando comparada com a base canonica) para determinar o polinomio
% interpolador.

% A principal desvantagem associada a utilizacao da base de Bernstein e o esforco
% computacional que esta acarreta devido ao calculo das combinacoes (o numero de operacoes associadas ao calculo 
% de uma combinacao para um dado n e muito maior do que aquele associado ao
% polinomio t^n).
% Como exemplo, medimos o tempo de execucao para o calculo de todos os
% numeros de condicao da tabela. Para a base canonica, obtivemos 0.02
% segundos e, para a de Bernsein, ~ 0.13 segundos.

   0.020000000000010

   0.129999999999995

   
% Exercicio 4

% Sejam Li(x) com i = 0,...,n os polinomios de Lagrange. Estes gozam das
% seguintes propriedades: Li(xi) = 1 e Li(xj) = 0 para j!=i e j = 0,...,n,
% onde xi's sao os nos de interpolacao.

% Uma vez que cada entrada da matriz e dada por Li(xj) onde i e a linha e j
% e a coluna da matriz, podemos concluir que a matriz do sistema e a matriz
% identidade. Ficamos entao com um sistema trivial, onde cada entrada do
% segundo membro e dada por f(xi) e as incognitas sao os coeficientes do polinomio.
% Concluimos, entao, que a expressao do polinomio interpolador e

% Pn(x) = sum_{i = 0}^{n} f(xi)Li(x) 


% Exercicio 5 - A

[coef_x,coef_y,V] = ex5()

coef_x =

                   0
  19.999999999999989
 -53.999999999999957
  35.999999999999972


coef_y =

                   0
   8.499999999999998
  -8.999999999999993
   4.499999999999995


V =

   1.000000000000000                   0                   0                   0
   1.000000000000000   0.333333333333333   0.111111111111111   0.037037037037037
   1.000000000000000   0.666666666666667   0.444444444444444   0.296296296296296
   1.000000000000000   1.000000000000000   1.000000000000000   1.000000000000000
   
   
% x(t) = (19.999999999999989) t + (-53.999999999999957) t^2 + (35.999999999999972) t^3
% y(t) = (8.499999999999998) t + (-8.999999999999993) t^2 + (4.499999999999995) t^3

% Como temos 4 pontos da funcao r(t), i.e., 4 nos de interpolacao, o grau do polinomio
% interpolador sera 3, i.e., n = 3.


% Exercicio 5 - B

[coef_x,coef_y,B] = ex5b()

coef_x =

                   0
   6.666666666666664
  -4.666666666666666
   2.000000000000000


coef_y =

                   0
   2.833333333333332
   2.666666666666667
   4.000000000000000


B =

   1.000000000000000                   0                   0                   0
   0.296296296296296   0.444444444444445   0.222222222222222   0.037037037037037
   0.037037037037037   0.222222222222222   0.444444444444444   0.296296296296296
                   0                   0                   0   1.000000000000000
                
% B_0,3 = (1-t)^3
% B_1,3 = 3t(1-t)^2
% B_2,3 = 3t^2(1-t)
% B_3,3 = t^3

% x(t) = 6.666666666666664*3*t(1-t)^2 -4.666666666666666*3*t^2(1-t) + 2.000000000000000*t^3 
%      = 35.99999999999999 t^3 - 53.99999999999998 t^2 + 19.99999999999999t

% y(t) = 2.833333333333332*3*t(1-t)^2 + 2.666666666666667*3*t^2(1-t) + 4.000000000000000*t^3
%      = 4.50000000000000 t^3 - 8.99999999999999 t^2 + 8.499999999999996 t

% Como temos 4 pontos da funcao r(t), i.e., 4 nos de interpolacao, o grau do polinomio
% interpolador sera 3, i.e., n = 3.

% Tendo em conta que, dada uma tabela, o polinomio interpolador e unico esperamos
% teoricamente que o polinomio calculado pela base canonica e de Bernstein
% seja o mesmo. Uma vez que temos apenas 4 nos interpoladores, as matrizes
% para achar os coeficientes do polinomio tem uma pequena dimensão (4x4) e
% como visto anteriormente vao ter um numero de condicao baixo esperando-se
% que o sistema seja bem condicionado. Ao calcular os polinomios apesar de
% semelhantes ocorrem algumas diferencas o que se deve erros computacionais
% nomeadamente de arredondamento que se acentuariam se as matrizes tivessem
% uma dimensao maior.


% Diferenca entre Vandermonde e Bernstein

% Termo           Coeficiente
            x(t)

x^0               0
x^1               -1.000000000000000e-14
x^2               2.131628207280301e-14
x^3               -2.131628207280301e-14

            y(t)

y^0               0
y^1               1.776356839400250e-15
y^2               -3.552713678800501e-15
y^3               -5.329070518200751e-15


% Algumas das diferencas foram calculadas a mao visto que o MatLab
% retornava 0 devido ao erro de arredondamento do mesmo.

% Tendo em conta que a unidade de arredondamento do MatLab e da ordem de
% 10^-16 e que as diferencas entre os coeficientes dos dois polinomios
% calculados sao da ordem de 10^-14/10^-15 (sendo os polinomios muito semelhantes),
% concluimos que as diferencas entre os polinomios sao 
% efetivamente devido a erros computacionais do MatLab,
% caso contrario obteriamos o mesmo e o unico polinomio interpolador da
% funcao r(t) nestes nos. 
% A ordem destas diferencas nao e 10^-16 porque, apesar das matrizes terem
% um numero de condicao baixo, ainda assim ha uma pequena perda de precisao associada a
% resolucao do sistema.


% Exercicio 5 - C (ver ficheiros 5cB.pdf, 5cV.pdf)