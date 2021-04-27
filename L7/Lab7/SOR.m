function [ x, it ] = SOR( A,b,x0,eps,w )
% Calcula uma aproximacao da solucao do 
%sistema linear Ax=b pelo metodo de SOR
% x0 e a aproximacao inicial, it - numero de iteracoes; eps-tolerancia 
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
    %%%%%%%%% calcular a norma da diferenca
    znovo = xnovo;
    xnovo = znovo.*w + (1-w).*x;
    vecdif= xnovo-x;
    dif=max(abs(vecdif));
    x=xnovo;
    it=it+1;
end
end