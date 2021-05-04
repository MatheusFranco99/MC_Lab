function [sum] = ex5(ti,xi,a0,a1,a2)
% input: % input: valores da tabela ti e xi, aproximacao do metodo de Newton para a0,a1,a2
% (parametros da funcao g(a0,a1,a2,r) = a0 + a1*exp(a2*r) )
% output: soma dos quadrados dos desvios de g em relacao aos valores da
% tabela

g = @(x) a0 + a1 * exp(a2*x);

fplot(g,[0 3]);
hold on
scatter(xi,ti);


sum = 0;
n = size(xi);
for i = 1:n
    sum = sum + (ti(i) - g(xi(i)) )^2;
end

end