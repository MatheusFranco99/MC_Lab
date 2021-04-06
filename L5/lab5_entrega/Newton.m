function [x,dif,it] =Newton(x0,f,derf,eps)
% método de Newton
%  x0- aproximação inicial
% eps- tolerância de erro
% f, é a função cuja reaiz se procura; derf- derivada de f
x1=x0-feval(f,x0) /feval(derf,x0);
it=1;
dif=abs(x1-x0);
while (dif>eps)
    x0=x1;
    x1=x0-feval(f,x0) /feval(derf,x0);
it=it+1;
dif=abs(x1-x0);
end
x=x1;
