function [px ] = ex2a( lhf,a, b, n, x )
% dada uma funcao lhf, um intervalo [a,b], um ponto x
% constroi um polinomio interpolador com os nos de chebyshev 
% e calcula o  valor do polinomio no ponto x;
% utiliza a funcao interpol

x1 = zeros(1,n);
f1 = zeros(1,n);

for i=1:n
    xi(i)=(b+a)/2 + (b-a)/2 * cos(pi*(2*i-1)/(2*n));
    fi(i)=feval(lhf,xi(i));
end
p=interpol(xi,fi,x);
px=p(1,n-1);
end

