function [ x,err] = bissec( lhf,a,b,tol )
% c�lculo de raizes pelo m�todo da bissec��o
%   par�metros de entrada:  lhf (fun��o), [a,b] (intervalo) , tol(toler�ncia) 
% par�metros de saida: x (solu��o aproximada), err (estimativa de erro)
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


