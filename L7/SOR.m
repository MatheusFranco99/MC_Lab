function [ x, it ] = SOR( A,b,x0,eps,w )
% Calcula uma aproxima��o da solu��o do 
%sistema linear Ax=b pelo m�todo de Gauss-Seidel
% x0 � a aproxima��o inicial, it - n�mero de itera��es; eps-toler�ncia 
dimensions=size(A);
dim=dimensions(1);
dif=1;
x=x0;
it=0;

xnovo = zeros(dim,1);

while (dif>eps)
    for i=1:dim
        xnovo(i)=b(i);
        for j=1:i-1
            xnovo(i)=xnovo(i)-A(i,j)*xnovo(j);
        end
        for j=i+1:dim
            xnovo(i)=xnovo(i)-A(i,j)*x(j);
        end
    xnovo(i)=xnovo(i)/A(i,i);
    end
    %%%%%%%%% calcular a norma da diferen�a
    znovo = xnovo;
    xnovo = znovo.*w + (1-w).*x;
    vecdif= xnovo-x;
    dif=max(abs(vecdif));
    x=xnovo;
    it=it+1;
end
end