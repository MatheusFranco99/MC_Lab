function [tn,t2n,erroE2n] = ex2c(f,a,b)

n = [10 20 40 80 160];

tn(1:5)      = 0;
t2n(1:5)     = 0;

erroE2n(1:5) = 0;

I = exp(1) - 1;

for i=1:5
    tn(i)  = ex2a(f,a,b,n(i));
    t2n(i) = ex2b(f,a,b,n(i));
    erroE2n(i) = abs(I-t2n(i));
end

% E_20 = C/(20^k)  = C/(10^k) *1/(2^k) = E_10 *  1/(2^k) 
end
