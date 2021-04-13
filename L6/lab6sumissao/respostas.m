% Como as matrizes simetricas tem apenas valores proprios reais,
% podemos comparar 

% Exercicio 1 A - ver ex1a.m

% Exercicio 1 B - ver ex1b.m

% Exercicio 2 A - ver ex2a.m

% Concluimos que para matrizes de pequena dimensao os erros relativos em
% relacao ao valor obtido usando a funcao eig tambem sao pequenos e
% portanto podemos admitir aproximar os valores
% proprios pelo metodo das potencias para calcular o numero de condicao de uma matriz.
% Quando o n aumenta, o erro relativo  tambem vai aumentar e portanto nao
% sera o metodo mais indicado para aproximar os valores proprios.

    Cond ex1      Cond eig     Erros Relativos
    __________    __________    _______________

            20        19.281       0.037265    
        477.75        524.06       0.088362    
         14657         15514       0.055192    
    4.5793e+05    4.7661e+05       0.039194    
    1.4481e+07    1.4951e+07        0.03144    
    4.2713e+08    4.7537e+08        0.10148    
    1.3897e+10    1.5258e+10       0.089187    
    4.5309e+11    4.9315e+11       0.081237    
    1.3931e+13    1.6024e+13        0.13061    
    4.5874e+14    5.2171e+14         0.1207    
    1.4481e+16    1.6319e+16        0.11264    
    3.0261e+17    3.6178e+17        0.16356    
    2.3364e+17    6.9806e+17         0.6653    
     7.989e+16    4.3737e+17        0.81734 

% Exercicio 2 B - ver ex2b.m

% O grafico (Grafico2a.pdf) da funcao log(cond(H^(n))) é praticamente linear proporcional a
% C*n (ate n = 13, a partir dai, observando a tabela, os erros sao muito
% grandes razao pela qual desprezamos a parte correspondente do grafico)
% o que nos sugere que cond(H^(n)) cresce exponencialmente com n. Calculando a
% media das diferencas (log(cond(H^(n+1))) - log(cond(H^(n)))), ficamos
% com o valor aproximado do declive da reta que e C = 3.3869.

% Exercicio 2 C - ver ex2c.m

% O vetor xn corresponde a linha n.

    1.0000    1.0000
    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000
    1.0000    1.0000    1.0000    1.0000    0.9999    1.0003    0.9995    1.0005    0.9997    1.0001
    1.0000    1.0000    1.0000    1.0002    0.9988    1.0042    0.9909    1.0125    0.9896    1.0048    0.9990 
    1.0000    1.0000    0.9998    1.0034    0.9750    1.1105    0.6912    1.5605    0.3412    1.4835    0.7986    1.0363
    1.0000    1.0000    1.0005    0.9914    1.0778    0.5757    2.4870   -2.4604    6.4043   -4.5991    4.6906   -0.4010    1.2331
    1.0000    1.0000    1.0001    0.9988    1.0133    0.9151    1.3473    0.0478    2.7872   -1.3040    3.0060   -0.1271    1.3689    0.9466
    1.0000    1.0000    1.0003    0.9930    1.0817    0.4440    3.3830   -5.6936   13.4652  -14.0754   11.8809   -2.2489   -0.2175    2.2952    0.6920


% Exercicio 2 D - ver ex2d.m

% Os erros/pertubacoes na matrix Hn e Bn sao bastante pequenos, da ordem de
% 10^-16 (ordem de grandeza da unidade de arredondamento). No entanto, a partir
% de n = 12 os erros de x ja sao bastante grandes (com erro superior a 100%).
% Por definicao de sistema bem condicionado,
% concluimos que esses sistemas sao mal-condicionados. 

% Um sistema linear Ax = b diz-se bem condicionado se e so se a pequenos erros
% relativos do segundo membro e da matriz correspondem sempre pequenos erros relativos da solucao.
% Caso contrario, o sistema diz-se mal condicionado.

% Para n's pequenos, temos erros pequenos o que nao nos permite concluir que
% os sistemas sejam mal condicionados. Para n's a partir
% de 12, os erros sao muito maiores e concluimos que os sistemas de
% dimensao n>=12 estao mal condicionados. Contudo, podemos ver na tabela
% que cond2(Hn) sao valores grandes para todos os n's de 2 ate 15, o que
% significa que os sistemas sao bastante sensiveis a pequenas pertubacoes
% na matriz Hn ou no vetor bn, ou seja os sistemas sao mal condicionados
% mesmo pra os valores de n menores que 12 e isto esta de acordo com o
% esperado teoricamente: que as matrizes de Hilbert sao mal condicionadas
% (ref=https://en.wikipedia.org/wiki/Hilbert_matrix).


    n     cond2(Hn)     ||x^n-x~^n||2
    __    __________    _____________

     2            20     8.9509e-16  
     3        477.75     1.0184e-14  
     4         14657     5.6964e-13  
     5    4.5793e+05     5.2949e-12  
     6    1.4481e+07      8.298e-10  
     7    4.2713e+08     2.9571e-08  
     8    1.3897e+10      5.427e-07  
     9    4.5309e+11     2.0081e-05  
    10    1.3931e+13     0.00083663  
    11    4.5874e+14       0.019765  
    12    1.4481e+16          1.064  
    13    3.0261e+17         9.5166  
    14    2.3364e+17         3.8692  
    15     7.989e+16         23.783 