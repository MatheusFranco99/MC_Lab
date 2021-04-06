function [x,it] =Secante(f,x0,x1,eps)
% recebe-se uma funcao f, duas aproximacoes x0 e x1 e a tolerancia de erro
% eps
% retorna-se a aproximacao da raiz x e o numero de iteradas it
x2 = x1 - feval(f,x1) * (x1-x0) /(feval(f,x1)- feval(f,x0));
it=1;
% erro de x2 <= erro de x1 <= |x2 - x1|
dif=abs(x2-x1);

while (dif>eps)
    x0 = x1;
    x1 = x2;
    x2 = x1 - feval(f,x1) * (x1-x0) /(feval(f,x1)- feval(f,x0));
    dif=abs(x2-x1);
    it=it+1;
end
x=x2;
