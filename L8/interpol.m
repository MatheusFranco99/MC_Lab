function [P] = interpol( xi,fi,x )
% calcula os valores afoximados de f(x)
%  a partir da fórmula interpodora de Newton,
% sendo a função f dada por uma tabela
% xi e fi são os valores da tabela de f
% supõe-se que os pontos  já  estão ordenados
% segundo a distancia ao ponto x.
% A fórmula utilizada baseia-se  na fórmula 4.20 e seguintes dos
% dos Apontamentos de Matemática Computacional
% A matriz P guarda as aproximações: a 1ª coluna tem n-1 aproximações
% lineares ; a  K-a coluna tem as aproximações por polinómios de ordem k 
dimensions=size(xi);
n=max(dimensions);
P=zeros(n);
%%%%%%%% primeiras aproximações
for j=1:n-1
    P(j,1)=(fi(j)*(xi(j+1)-x)+ fi(j+1)*(x-xi(j)))/(xi(j+1)-xi(j));
end
%%%%%%%  diferença de ka ordem
for k=2:n-1
    for j=1:n-k
    P(j,k)=(P(j,k-1)*(xi(j+k)-x)+P(j+1,k-1)*(x-xi(j)))/(xi(j+k)-xi(j));
    end
end
end
