

% Exercicio 1 a - ver trigono1.m


% Exercicio 1 b - ver ex1b.m


% m = 20
>> [Q] = ex1b(20,101,@(x) x + x^2)

Q =

   9.586186249311384
  
% m = 30 
>> [Q] = ex1b(30,101,@(x) x + x^2)

Q =

   5.085927720418676
 
% m = 40
>> [Q] = ex1b(40,101,@(x) x + x^2)

Q =

   2.279149035080157
   
% m = 50
>> [Q] = ex1b(50,101,@(x) x + x^2)

Q =

     1.978519617597302e-25
    
     

% Conforme n aumenta, a soma dos quadrados dos desvios diminui pois
% considera-se uma maior numero de funcoes de base o que implica uma maior
% precisao.
% Quando m = 50, Q toma valor aproximadamente zero devido ao arredondamento
% do Matlab porque o numero
% de funcoes de base e igual ao numero de pontos pelo que Pm(x_i) ~=
% f(x_i).


% Exercicio 1 c

% m = 20
ex1b(20,101,@(x) 1/(1+5*x^2))

ans =

     3.723547894525799e-07

% m = 30
ex1b(30,101,@(x) 1/(1+5*x^2))

ans =

     7.966587624022562e-08

% m = 40
ex1b(40,101,@(x) 1/(1+5*x^2))

ans =

     3.143222419890211e-08

% m = 50
ex1b(50,101,@(x) 1/(1+5*x^2))

ans =

     2.077330065839812e-28


% Tal como no exercicio 1 b, os erros diminuem conforme m aumenta e para m
% = 50 o erro e aproximadamente zero pelas mesmas razoes acima apresentadas.
% Nesse caso, porem, os erros sao consideravelmente menores.
     

% Exercicio 2 a - ver ex2a.m

% Exercicio 2 b - ver ex2b.m

% Exercicio 2 c - ver ex2c.m


>> [tn,t2n,erro2n] = ex2c(@(x) exp(x),0,1)

tn =

   1.719713491389315   1.718639788925221   1.718371321372064   1.718304201862089   1.718287421820731


t2n =

   1.718281888103857   1.718281832187679   1.718281828692098   1.718281828473612   1.718281828459955


erro2n =

   1.0e-07 *

   0.596448115341985   0.037286331799891   0.002330520221250   0.000145661260831   0.000009094947018

% Supondo que E_n = O(1/n^k), para descobrir k podemos calcular
% log2(E_n/E_2n) para os diferentes valores de n pois

% E_2n = C/((2n)^k)  = C/(n^k) *1/(2^k) = E_n *  1/(2^k) ->
% E_n/E_2n = 2^k

>> log2(0.596448115341985 / 0.037286331799891)

ans =

   3.999677866218970

>> log2(0.037286331799891 / 0.002330520221250)

ans =

   3.999922936993391

>> log2(0.002330520221250 / 0.000145661260831)

ans =

   3.999962887510614

>> log2(0.000145661260831 / 0.000009094947018)

ans =

   4.001408194351643
   
% Concluimos, portanto, que k = 4, ou seja, quando n duplica o erro diminui aproximadamente 16 vezes.
