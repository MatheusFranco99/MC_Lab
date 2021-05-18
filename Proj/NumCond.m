function [cond] = NumCond(A)
% input: A matriz
% output: numero de condicao da matriz A na norma 2

cond = norm(A) * norm(inv(A));

end

