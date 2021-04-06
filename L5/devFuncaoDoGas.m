function [res] = devFuncaoDoGas(V)

p = 3.5e7;
a = 0.401;
b = 42.7e-6;
N = 1000;

% f'(x) = -aN^2/V^2 + p +2abN^3/V^3 = 0

res = -a * N^2./(V.^2) + p + 2 * a * b * N^3./(V.^3);

end

