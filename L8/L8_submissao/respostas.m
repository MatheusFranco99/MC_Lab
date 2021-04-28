% Exercicio 1 a - ver ex1a.m

% Exercicio 1 b - ver ex1b_f.m, ex1b_grafico.m, grafico1b.pdf

% escolhemos intervalos em que a funcao e monotona e que contenha um zero
% da funcao por observacao do grafico. Os intervalos escolhidos foram
% [-0.5,-0.2], [0.3,0.6] e [5.7,6].

[ap1,ap2,ap3] = ex1b_r(2)

ap1 =

  -0.242229960436838                   0
                   0                   0


ap2 =

   0.376379059262710                   0
                   0                   0


ap3 =

   5.834176111983182                   0
                   0                   0

[ap1,ap2,ap3] = ex1b_r(3)

ap1 =

  -0.303532117550157  -0.267315887621903                   0
  -0.261382653644698                   0                   0
                   0                   0                   0


ap2 =

   0.380052351635770   0.381614970865121                   0
   0.386189973299753                   0                   0
                   0                   0                   0


ap3 =

   5.828686477543664   5.827836939130254                   0
   5.826787022266148                   0                   0
                   0                   0                   0

[ap1,ap2,ap3] = ex1b_r(4)

ap1 =

  -0.320056915182030  -0.278829165684082  -0.274204648694981                   0
  -0.281666861303952  -0.273447023139195                   0                   0
  -0.270415884768764                   0                   0                   0
                   0                   0                   0                   0


ap2 =

   0.382130009727849   0.382730808552430   0.382887143750539                   0
   0.383661628608078   0.383344858527456                   0                   0
   0.387607314228318                   0                   0                   0
                   0                   0                   0                   0


ap3 =

   5.826909711831698   5.827929032374504   5.827895090152104                   0
   5.828472011127136   5.827853142064601                   0                   0
   5.824246056253455                   0                   0                   0
                   0                   0                   0                   0

[ap1,ap2,ap3] = ex1b_r(5)

ap1 =

  -0.327712581976318  -0.286104646496050  -0.275507240730315  -0.275541450326032                   0
  -0.295945606915478  -0.275492393660008  -0.275547054817059                   0                   0
  -0.275441647914956  -0.275562913384076                   0                   0                   0
  -0.275646910441043                   0                   0                   0                   0
                   0                   0                   0                   0                   0


ap2 =

   0.383381452152114   0.383037983540270   0.382984636683802   0.382973474730856                   0
   0.382737869662357   0.382883714077552   0.382940795008925                   0                   0
   0.385628570370684   0.384603362943960                   0                   0                   0
   0.388038553910277                   0                   0                   0                   0
                   0                   0                   0                   0                   0


ap3 =

   5.826031278875020   5.827915683474719   5.827896939446248   5.827897876079221                   0
   5.828227785418290   5.827883587879387   5.827899033633416                   0                   0
   5.827278081181670   5.827946177249999                   0                   0                   0
   5.822960909494430                   0                   0                   0                   0
                   0                   0                   0                   0                   0

% Verificamos que os erros relativos diminuem quando n aumenta obtendo uma
% precisao de ordem 10^-5 para as duas primeiras raizes e 10^-8 para a terceira (sendo n = 5).
% Mesmo para n = 2 obtemos aproximacoes bem precisas (o maior erro relativo
% obtido e 12% para a primeira raizes).
                   
fzero(f,-0.2) = -0.275530294693742

fzero(f,0.5) = 0.382965772684091

fzero(f,5.7) = 5.827897795868838

% n  approx_raiz1               er_1   
  2  -0.242229960436838         0.120859066673297
  3  -0.267315887621903         0.029813081283746
  4  -0.274204648694981         0.004811253151798
  5  -0.275541450326032         4.048786106218481e-05


% n  approx_raiz2               er_2   
  2  0.376379059262710         0.017199222205203
  3  0.381614970865121         0.003527212913840
  4  0.382887143750539         2.053158249649743e-04
  5  0.382973474730856         2.011157997502831e-05
  
 % n  approx_raiz3               er_3
  2  5.834176111983182         0.001077286585018
  3  5.827836939130254         1.044231397241045e-05
  4  5.827895090152104         4.642697638330345e-07
  5  5.827897876079221         1.376317602568683e-08
                   
                   
% Exercicio 2 a - ver ex2a.m

% Exercicio 2 b - ver ex2b.m, ex2b_erro.m, ex2b_erro_all.m

% Os graficos relativos aos polinomios interpoladores sao: 
% pol_int_n5.pdf, pol_int_n10.pdf, pol_int_n15.pdf e pol_int_n20.pdf
% Colocamos tambem o grafico da funcao original para termos um termo de
% comparacao. Reparamos que com o aumento do n o polinomio interpolador
% ajusta-se melhor a funcao original.

% Os graficos relativos aos erros absolutos sao: 
% erro_n5.pdf, erro_n10.pdf, erro_n15.pdf e erro_n20.pdf
% Em erro_todos.jpg vemos todos os erros agrupados, nota-se que os erros
% dao 0 quando os pontos da funcao que estamos a avaliar coicidem com os
% nos de chebyshev. E notamos tambem que na periferia os erros sao muito
% menores que no centro, i.e. perto da origem.

% Concluimos, pelos graficos, que com o aumento do n o erro de interpolacao
% diminui.



% ============================================ +
% Exercicio 2 c - ver ex2c.m, ex2c_erro.m, ex2c_erro_all.m
% ============================================ +

% Os graficos relativos aos polinomios interpoladores sao: 
% 2c_pol_int_n5.pdf, 2c_pol_int_n10.pdf, 2c_pol_int_n15.pdf e 2c_pol_int_n20.pdf
% Colocamos tambem o grafico da funcao original para termos um termo de
% comparacao. Reparamos que com o aumento do n o polinomio interpolador
% ajusta-se melhor a funcao original no entanto nos extremos o polinomio
% interpolador afasta-se bastante da funcao.

% Os graficos relativos aos erros absolutos sao: 
% 2c_erro_n5.pdf, 2c_erro_n10.pdf, 2c_erro_n15.pdf e 2c_erro_n20.pdf
% Em erro_todos.jpg vemos todos os erros agrupados, nota-se que os erros
% dao 0 quando os pontos da funcao que estamos a avaliar coicidem com os
% nos de equidistantes. E notamos tambem que na periferia os erros sao muito
% maiores que no centro.

% Comparando com a alinea anterior concluimos que quanto aos erros de
% interpolacao no metodo com os nos de chebyshev sao muito grandes na
% origem enquanto que na periferia sao muito pequenos ao contrario do que
% acontece com os nos equidistantes.
