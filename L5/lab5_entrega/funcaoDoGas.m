function [res] = funcaoDoGas(V)

p = 3.5e7;
T = 300;
a = 0.401;
b = 42.7e-6;
k = 1.3806503e-23;
N = 1000;


res = (p+a.*(N./V).^2).*(V-N*b) - k * N * T;

end

