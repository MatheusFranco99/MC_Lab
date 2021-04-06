function [x,dif,it] =QuasiNewton(x0,f,delta,eps)

% usa-se a funcao iteradora de Newton x_{k+1} = x_k - f(x_k)/f'(x_k)
% sendo f'(x_k) aproximada por (f(x_k+d) - f(x_k))/d
def_approx = (feval(f,x0+delta)-feval(f,x0))/delta;
x1=x0-feval(f,x0)/def_approx;
it=1;
dif=abs(x1-x0);
while (dif>eps)
    x0=x1;
    def_approx = (feval(f,x0+delta)-feval(f,x0))/delta;
    x1=x0-feval(f,x0)/def_approx;
    it=it+1;
    dif=abs(x1-x0);
end
x=x1;
