function [ x, it ] = GaussSeidel( A,b,x0,eps )
% Calcula uma aproximação da solução do 
%sistema linear Ax=b pelo método de Gauss-Seidel
% x0 é a aproximação inicial, it - número de iterações; eps-tolerância 
dimensions=size(A);
dim=dimensions(1);
dif=1;
x=x0;
it=0;
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
    %%%%%%%%% calcular a norma da diferença
    vecdif= xnovo-x;
    dif=max(abs(vecdif));
    x=xnovo;
    it=it+1;
end
end