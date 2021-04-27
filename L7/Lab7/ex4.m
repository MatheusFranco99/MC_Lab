function [C] = ex4(A,w)
% input: A matriz, w parametro do metodo SOR
% output: matriz de iteracao do metodo SOR

% matriz diagonal
D = diag(diag(A));
% matriz triangular inferior
L = tril(A) - D;
% matriz triangular superior
U = triu(A) - D;

M = L + 1/w.*D;
N = U + (1-1/w).*D;

C = -inv(M) * N;

end

