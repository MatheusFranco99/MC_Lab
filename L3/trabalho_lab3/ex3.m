function [ x,err, iterations] = ex3( lhf,a,b,tol )

iterations = 1;

a1=a;
b1=b;
fa=feval(lhf,a);
fb=feval(lhf,b);

x = a - fa * ((b - a) / (fb - fa)); %% metodo da falsa posicao para encontrar x

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
    
    % o erro nao pode ser igual ao comprimento do intervalo a dividir por
    % dois como temos no metodo da bisseccao uma vez que a aproximacao da
    % raiz considerada em cada ciclo nao é necessariamente o ponto medio do intervalo
    
    % o erro considerado neste metodo é igual ao comprimento do intervalo,
    % contudo nao podemos utilizar este erro porque o ciclo pode entrar num loop
    % infinito, o que se deve a um dos extremos poder ficar "congelado" (x ~ a ou x ~ b).
    % Assim, calculamos o erro como a diferença, em módulo, dos x consecutivos.
    
    err= abs(x - x_antigo);
end
end

