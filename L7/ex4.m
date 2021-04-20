function [C] = ex4(A,w)

D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

M = L + 1/w.*D;
N = U + (1-1/w).*D;

C = -inv(M) * N;

end

