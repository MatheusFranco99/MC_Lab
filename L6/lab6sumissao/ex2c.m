function [] = ex2c(Nmax)
% imprime xn para n = 2,...,Nmax onde xn = Hn^(-1)*b

for n = 2:(Nmax)
    H = hilbert(n);
    b = bHilbert(n);
    
    xn = H\b;
    
    disp(xn.');
end
end
