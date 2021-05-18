function [a0, a, g, Q] = trigono1( m,n, lf )
% input: m tal que 2m + 1 e o numero de funcoes de base, n numero de pontos
% equidistantes, lf a funcao a aproximar
% output: a_0,a (coeficientes da aproximacao trigonometrica da funcao lf),
% vetor g, valor de Q

% obtem os coeficientes da aproximacao trigonometrica da funcao lf

h=2*pi/n;
a(1:2*m)=0;
for i=1:n
    x(i)=-pi+i*h;
    fi(i)=feval(lf,x(i));
end
sum0=0;
for i=1:n
   sum0=sum0+fi(i);
end
a0=sum0/n;
for k=1:m
    sum1=0;
    sum2=0;
    for j=1:n
        sum1 = sum1+fi(j)*cos(k*x(j));
        sum2=sum2+ fi(j)*sin(k*x(j));
    end
    a(k)=sum1*2/n;
    a(m+k)=sum2*2/n;
end

% calculo do vetor g segundo a formula:
% g_i = Pm(x_i) = sum_{j = 0}^{2m} a_j phi_j(x_i)
g(1:n) = 0;
for i=1:n
   g(i) = a0;
   for j=1:m
       g(i) = g(i) + a(j)   *cos(j*x(i));
       g(i) = g(i) + a(j+m) *sin(j*x(i));
   end
end

% calculo do valor Q 
Q = 0;
for k=1:n
    Q = Q + (g(k) - fi(k))^2;
end


end