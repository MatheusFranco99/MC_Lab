function [T] = ex2d(Nmax)
% output: tabela com numero de condicao de H^n calculado com o metodo das potencias (ex1b)
% e ||x^n-x~^n||2 onde x~^n sao os valores calculados na alinea C e x^n = (1,...,1)
% que corresponde a solucao exata do sistema linear.

condHn = zeros(Nmax-1,1);
erros = zeros(Nmax-1,1);

epsilon = 1e-12;

for n = 2:(Nmax)
    H = hilbert(n);
    b = bHilbert(n);
    
    xn = H\b;
    
    condHn(n-1) = ex1b(H,n,epsilon);
    
    x = ones(n,1);
    erros(n-1) = norm(x-xn);
    
end

n = 2:15;
n = n.';

T = table(n,condHn,erros,'VariableName', {'n','cond2(Hn)', '||x^n-x~^n||2'} );
end
