

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



% Parte 2 



% Exercicio 1 - ver ficheiro p2ex1.m

% O problema de valor inicial apresentado e equivalente a equacao integral
    
%    y(x) = y_0 + int_{x0}^{x} sin(exp(y(x))) dx

% Aproximando o integral pela regra dos trapezios obtemos o metodo dos
% trapezios (Heun) que e dado pela formula de recorrencia:

%   yiplus1 = yi + h/2 * (f(xi,yi) + f(xiplus1,yi + h*f(xi,yi)))


% Exercicio 2 - 

% Sendo o metodo de Heun um metodo de segunda ordem, o erro global deste
% sera da forma

                        |e| <= C * h^2
                        
% onde C e uma constante e h o passo. Calculando o erro para a iteração h_i e
% h_{i+1}, onde h_{i+1} = h_i / 2, temos:

                        |y_i(2) - y| = C h_i^2
                        |y_{i+1}(2) - y| = C h_{i+1}^2

% Desta forma, aproximamos o C da seguinte forma:
                        
                        C = |(y_{i+1}(2) - y_i(2)) / (h_{i+1}^2 - h_i^2)|
                        
[T] = p2ex2C(2)

T =

  20×3 table

            h               aproximacao               C         
    __________________    ________________    __________________

                   0.1    1.13158427200071    0.0871258396114053
                  0.05    1.13223771579779    0.0753965460541887
                 0.025    1.13237908432165    0.0706275931359338
                0.0125    1.13241219100593    0.0684675198272089
               0.00625    1.13242021454341    0.0674383812035254
              0.003125    1.13242219027723    0.0669359398064747
             0.0015625     1.1324226805307    0.0666876806159659
            0.00078125    1.13242280263949    0.0665642747965952
           0.000390625    1.13242283311019    0.0665027648210525
          0.0001953125    1.13242284072083    0.0664721165473262
          9.765625e-05    1.13242284262261    0.0664569127062956
         4.8828125e-05    1.13242284309795    0.0664519766966502
        2.44140625e-05    1.13242284321678    0.0664373238881429
       1.220703125e-05    1.13242284324648    0.0665525595347086
       6.103515625e-06    1.13242284325391    0.0658512115478515
      3.0517578125e-06    1.13242284325575    0.0679334004720052
     1.52587890625e-06    1.13242284325623    0.0601450602213542
     7.62939453125e-07    1.13242284325633    0.0101725260416667
    3.814697265625e-07    1.13242284325634                     0
                     0                   0                     0
                     
% Por majoracao, escolhemos o maior valor de C donde C =
% 0.0871258396114053.

% Queremos resolver a equacao 
    
    y(z) = 1
    
% Seja g(x) = y(x) - 1, a solucao da equacao anterior e a solucao da
% equacao g(x) = 0. Observamos que esta funcao é continua no
% intervalo [0,2] pois y(x) e continua em R.

% Calculando a aproximacao da funcao y no intervalo [0,2] para diferentes
% valores de h (exemplificado abaixo para h = 0.1 e h = 0.05),
% podemos observar que y(x) < ln(pi) (~ 1.144729885849400) 
% para qualquer x em [0,2]. Desta forma, 
        y'(x) = sin(exp(y(x))) > 0
% donde concluimos que y e uma funcao crescente.


% para h = 0.1

[x,y] = p2ex1(2,0.1); table(x,y)

ans =

  21×2 table

     x             y         
    ___    __________________

      0                     0
    0.1    0.0863536564314687
    0.2     0.177131564113539
    0.3     0.271930697221027
    0.4     0.369881434036582
    0.5     0.469482939416687
    0.6     0.568500755201625
    0.7     0.664046740635846
    0.8     0.752951850946987
    0.9     0.832399359258068
      1     0.900560591724176
    1.1       0.9569014806042
    1.2       1.0020425297863
    1.3      1.03734125601634
    1.4      1.06445079878463
    1.5      1.08500398412754
    1.6      1.10044560345576
    1.7      1.11197359057064
    1.8      1.12054183735186
    1.9      1.12689050376957
      2      1.13158427200071

      
% para h = 0.05

[x,y] = p2ex1(2,0.05); table(x,y)

ans =

  41×2 table

     x              y         
    ____    __________________

       0                     0
    0.05    0.0426343869396532
     0.1    0.0864008336899041
    0.15     0.131281698123236
     0.2     0.177240275999038
    0.25     0.224216126493625
     0.3     0.272119885848395
    0.35     0.320827801654592
     0.4     0.370176402399767
    0.45     0.419957944443349
     0.5     0.469917524646451
    0.55     0.519752952496142
     0.6     0.569118545385293
    0.65     0.617633825994194
     0.7     0.664897560688449
    0.75     0.710506668585573
     0.8     0.754078394960725
    0.85     0.795273094914314
     0.9      0.83381441277596
    0.95       0.8695038684468
       1     0.902227889585965
    1.05     0.931956842911913
     1.1     0.958737114577352
    1.15     0.982678320970847
     1.2      1.00393809466051
    1.25      1.02270665660937
     1.3      1.03919279340412
    1.35      1.05361216844177
     1.4      1.06617829607223
    1.45      1.07709608354579
     1.5      1.08655760318832
    1.55      1.09473965942084
     1.6       1.1018027128862
    1.65      1.10789077362898
     1.7      1.11313194585181
    1.75      1.11763937923449
     1.8      1.12151244641459
    1.85       1.1248380192843
     1.9      1.12769175796856
    1.95      1.13013935705864
       2      1.13223771579779
      

% g'(x) = y'(x) = sin(exp(y(x))). Nota-se que, no intervalo [0,2], esta
% funcao g'(x) é crescente sendo o seu valor mínimo sin(exp(y(2))) <=
% sin(exp(^y(2) + erro_global)).
% Podemos, portanto, concluir que g'(x) não se anula no intervalo
% considerado. Desta forma, temos a seguinte estimativa realista do erro:

        |z-x_k| ~~ |g(x_k)| / |g'(x_k)|
                     
% onde x_k é uma aproximação de z no intervalo [0,2].

        |g(x_k)| = |y(x_k) - 1| = |y(x_k) - y(z)| <= Ch^2 (erro do metodo de Heun). 

        |g'(x_k)| = |sin(exp(y(x_k)))| >= |sin(exp(y(2) + erro_global))|
                  = sin(1.13158427200071 + 0.1 * 0.1 * 0.0871258396114053) = 0.038315952803806

% Concluimos, portanto, que 
                
        |z-x_k| <= Ch^2/0.038315952803806.

% Determinação do h:

        Ch^2/0.038315952803806 < 10^{-3}
        
% que é equivalente a 

        h^2 < 10^{-3} 0.038315952803806 / C
        
% sendo h > 0, temos então
        
        h < sqrt(10^{-3} * 0.038315952803806 / C) = 0.020970864139272
        
% Tomando h = 0.09827568611841

[x,y] = p2ex1(2, 0.020970864139272); table(x,y)

ans =

  97×2 table

            x                    y         
    _________________    __________________

                    0                     0
    0.020970864139272    0.0177458295093339
    0.041941728278544    0.0356916526152931
    0.062912592417816    0.0538371817109753
    0.083883456557088    0.0721816865915838
     0.10485432069636    0.0907239455195962
    0.125825184835632     0.109462192795142
    0.146796048974904     0.128394062842276
    0.167766913114176     0.147516530889283
    0.188737777253448     0.166825850404359
     0.20970864139272     0.186317487548813
    0.230679505531992     0.205986053030067
    0.251650369671264     0.225825231877688
    0.272621233810536     0.245827711828329
    0.293592097949808     0.265985111190002
     0.31456296208908     0.286287907261792
    0.335533826228352     0.306725366609599
    0.356504690367624      0.32728547873793
    0.377475554506896     0.347954894946002
    0.398446418646168     0.368718874404844
     0.41941728278544     0.389561239729417
    0.440388146924712     0.410464344531483
    0.461359011063984     0.431409055607915
    0.482329875203256     0.452374752525192
    0.503300739342528     0.473339347382192
      0.5242716034818     0.494279327447153
    0.545242467621072     0.515169823148799
    0.566213331760344     0.535984703536857
    0.587184195899616     0.556696700799561
    0.608155060038888     0.577277564729422
     0.62912592417816     0.597698247168426
    0.650096788317432     0.617929115458105
    0.671067652456704     0.637940192801424
    0.692038516595976     0.657701422260303
    0.713009380735248     0.677182949926574
     0.73398024487452     0.696355421687954
    0.754951109013792     0.715190287042357
    0.775921973153064     0.733660102670906
    0.796892837292336      0.75173882803098
    0.817863701431607     0.769402105128033
    0.838834565570879     0.786627514898142
    0.859805429710151     0.803394803283915
    0.880776293849423     0.819686071086498
    0.901747157988695     0.835485922969835
    0.922718022127967     0.850781572500283
    0.943688886267239     0.865562901729593
    0.964659750406511     0.879822475469781
    0.985630614545783      0.89355551196511
     1.00660147868506     0.906759813051972
     1.02757234282433     0.919435658043384
      1.0485432069636     0.931585666436156
     1.06951407110287      0.94321463509538
     1.09048493524214     0.954329355826198
     1.11145579938142     0.964938419220448
     1.13242666352069      0.97505201040465
     1.15339752765996     0.984681701864165
     1.17436839179923     0.993840247929068
      1.1953392559385      1.00254138483191
     1.21631012007778      1.01079963953403
     1.23728098421705      1.01863014980544
     1.25825184835632      1.02604849736644
     1.27922271249559      1.03307055527978
     1.30019357663486      1.03971235023614
     1.32116444077414      1.04598993991108
     1.34213530491341      1.05191930518954
     1.36310616905268      1.05751625675295
     1.38407703319195      1.06279635529688
     1.40504789733122      1.06777484448724
      1.4260187614705       1.0724665956598
     1.44698962560977      1.07688606321297
     1.46796048974904      1.08104724962775
     1.48893135388831      1.08496367906302
     1.50990221802758      1.08864837851168
     1.53087308216686      1.09211386555661
     1.55184394630613      1.09537214183041
      1.5728148104454      1.09843469135336
     1.59378567458467      1.10131248299877
     1.61475653872395      1.10401597640847
     1.63572740286322      1.10655513075419
     1.65669826700249      1.10893941580937
     1.67766913114176      1.11117782486122
     1.69863999528103      1.11327888905285
     1.71961085942031       1.1152506928005
     1.74058172355958       1.1171008899806
     1.76155258769885      1.11883672062657
     1.78252345183812      1.12046502791482
     1.80349431597739      1.12199227525506
     1.82446518011667      1.12342456333102
     1.84543604425594      1.12476764696498
     1.86640690839521      1.12602695170288
     1.88737777253448      1.12720759003759
     1.90834863667375      1.12831437720529
     1.92931950081303      1.12935184650502
      1.9502903649523      1.13032426410427
     1.97126122909157      1.13123564330441
     1.99223209323084      1.13208975824872
     2.01320295737011      1.13289015706367

   
% Temos os pontos consecutivos 


    x = 1.17436839179923      y = 0.993840247929068
    x = 1.1953392559385       y = 1.00254138483191
   
% Para estimar z, temos de calcular a interpolação linear nestes dois nos.
% A equação da reta que passa pelos dois pontos e:

    y = ( (1.00254138483191 - 0.993840247929068)/ (1.1953392559385 - 1.17436839179923 ) ) * (x - 1.17436839179923) + 0.993840247929068

% Fazendo y = 1, obtemos z = 1.189214190141848.

