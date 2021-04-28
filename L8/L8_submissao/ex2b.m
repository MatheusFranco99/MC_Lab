function [] = ex2b( n )
% constroi o grafico do polinomio interpolador de grau n e da
% funcao original.
lhf = @(x) 1./(1 + 2.*x.^2);

x = -5:0.01:5;

j = 1;
y = zeros(501,1);
for i = -5:0.01:5
    y(j) = ex2a(lhf,-5,5,n,i);
    j = j + 1;
end

y_real = zeros(501,1);
y_real = lhf(x);

plot(x,y_real);
hold on;
plot(x,y);

end

