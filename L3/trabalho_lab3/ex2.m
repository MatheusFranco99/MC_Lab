function [ valor_proprio,err] = ex2(M,a,b,tol)
% funcao retorna valor proprio e erro associado obtidos pelo metodo da bisseccao

% cria polinomio caracteristico da matriz M
p = @(x)det(M - x.*eye(length(M)));

% chama a funcao bissec para calcular o zero do polinomio no intervalo
% [a,b]
[valor_proprio,err] = bissec(p,a,b,tol);


end


