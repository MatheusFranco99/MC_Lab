function [ valor_proprio,err] = ex2(M,a,b,tol)

% cria polinomio caracteristico da matriz M
p = @(x)det(M - x.*eye(length(M)));

% chama a funcao bissec para calcular o zero do polinomio
[valor_proprio,err] = bissec(p,a,b,tol);


end


