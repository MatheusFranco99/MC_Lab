function [iteracoes,lst] = ex1b()

%golden_ratio = 1.618033988749894848204586834365638117720;
golden_ratio = 1.618033988749895;

%inf = 1.618033988749890;
%sup = 1.618033988749900;

a = 1;
b = 1;
cond = 1;
iteracoes = 2;
lst = zeros(1,1);
while cond == 1
    razao = a / b;
    lst(end+1) = razao;
    aux = a + b;
    b = a;
    a = aux;
    if and(abs(razao - golden_ratio) < (0.5 * 10^(-14)),abs(razao-golden_ratio)>= (0.5*10^(-15)))
        cond = 0;
    end
    iteracoes = iteracoes + 1;
end

