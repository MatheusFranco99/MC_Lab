function [px ] = ex2a( lhf,a, b, n, x )
% dada uma funcao lhf, um intervalo [a,b], um ponto x
% constroi um polinomio interpolador com n+1 nos de chebyshev 
% e calcula o  valor do polinomio de grau n no ponto x;
% utiliza a funcao interpol

x1 = zeros(1,n+1);
f1 = zeros(1,n+1);

for i=1:n+1
    xi(i)=(b+a)/2 + (b-a)/2 * cos(pi*(2*i-1)/(2*(n+1)));
    fi(i)=feval(lhf,xi(i));
end
p=interpol(xi,fi,x);
px=p(1,n);
end

