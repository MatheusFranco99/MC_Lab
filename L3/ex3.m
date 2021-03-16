function [ x,err, iterations] = ex3( lhf,a,b,tol )

% mudancas: adicionamos variavel "iterations" inicializada a 1
% e incrementamos em 1 todo ciclo

iterations = 1;

a1=a;
b1=b;
fa=feval(lhf,a);
fb=feval(lhf,b);

x = a - fa * ((b - a) / (fb - fa)); %% metodo  da falsa posicao para encontrar x

err=(b1-a1);

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
    end
    
    iterations = iterations + 1;
    x_antigo = x;
    x = a1 - fa * ((b1-a1) / (fb-fa));
    err= abs(x - x_antigo);
end
end

