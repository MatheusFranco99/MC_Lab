function [P] = interpol( xi,fi,x )
% calcula os valores afoximados de f(x)
%  a partir da f�rmula interpodora de Newton,
% sendo a fun��o f dada por uma tabela
% xi e fi s�o os valores da tabela de f
% sup�e-se que os pontos  j�  est�o ordenados
% segundo a distancia ao ponto x.
% A f�rmula utilizada baseia-se  na f�rmula 4.20 e seguintes dos
% dos Apontamentos de Matem�tica Computacional
% A matriz P guarda as aproxima��es: a 1� coluna tem n-1 aproxima��es
% lineares ; a  K-a coluna tem as aproxima��es por polin�mios de ordem k 
dimensions=size(xi);
n=max(dimensions);
P=zeros(n);
%%%%%%%% primeiras aproxima��es
for j=1:n-1
    P(j,1)=(fi(j)*(xi(j+1)-x)+ fi(j+1)*(x-xi(j)))/(xi(j+1)-xi(j));
end
%%%%%%%  diferen�a de ka ordem
for k=2:n-1
    for j=1:n-k
    P(j,k)=(P(j,k-1)*(xi(j+k)-x)+P(j+1,k-1)*(x-xi(j)))/(xi(j+k)-xi(j));
    end
end
end
