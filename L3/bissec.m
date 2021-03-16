function [ x,err] = bissec( lhf,a,b,tol )
% cálculo de raizes pelo método da bissecção
%   parâmetros de entrada:  lhf (função), [a,b] (intervalo) , tol(tolerância) 
% parâmetros de saida: x (solução aproximada), err (estimativa de erro)
a1=a;
b1=b;
fa=feval(lhf,a);
fb=feval(lhf,b);
x=(b1-a1)/2+a1;  %%%% o mesmo  que (a1+b1)/2
err=(b1-a1)/2;
if(fa*fb>0)
    disp('f(a)*f(b) tem de ser negativo');
    return
end
while (err>tol && feval(lhf,x)~=0)
    f=feval(lhf,x);
    if(fa*f<0)
        b1=x;
        fb=f;
    else
        a1=x;
        fa=f;
    end;
    x=(b1-a1)/2+a1;
    err=(b1-a1)/2;
end


