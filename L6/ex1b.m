function [cond2] = ex1b(A, n, epsilon)

cond2 = abs(ex1a(A,n,epsilon)) * abs(ex1a(inv(A),n,epsilon));

end