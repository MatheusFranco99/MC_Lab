function [] = ex2c_erro( n )
% constroi o grafico do erro absoluto de interpolacao do polinomio de grau
% n. Usa-se nos equidistantes.
lhf = @(x) 1./(1 + 2.*x.^2);

x = -5:0.01:5;

j = 1;
y = zeros(1,501);
error_list = zeros(1,501);
for i = -5:0.01:5
    [y(j)] = equidist(lhf,-5,5,n,i);
    error_list(j) = (abs(feval(lhf,i) - y(j)));
    j = j + 1;
end


plot(x,error_list);


end

