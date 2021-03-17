function [ x,err, iterations] = bissecex1( lhf,a,b,tol )

% mudancas: adicionamos variavel "iterations" (adicionada ao output) inicializada a 1
% e incrementamos em 1 todo ciclo

iterations = 1;

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
    iterations = iterations + 1;
    x=(b1-a1)/2+a1;
    err=(b1-a1)/2;
end
end

