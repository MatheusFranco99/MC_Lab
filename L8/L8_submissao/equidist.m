function [px ] = equidist( lhf,a, b, n, x )
% dada uma fun��o lhf, um intervalo [a,b], um ponto x
%   constroi um polinomio interpolador em pontos equidistantes 
% xi=a+ih , i=0,...,n  e calcula o  valor do polin�mio no ponto x;
% utiliza a fun��o interpol
xi(1)=a;
fi(1)=feval(lhf,a);
h=(b-a)/n;
for i=2:n+1
    xi(i)=a+(i-1)*h;
    fi(i)=feval(lhf,xi(i));
end
p=interpol(xi,fi,x);
px=p(1,n);
end

