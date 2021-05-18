function [T] = ex3()
% output: T tabela com os numeros de condicao associados a base canonica e
% a base de Bernstein para n = 2,...,20

n = 2:20;
numCondV(19) = 0;
numCondB(19) = 0;

for i = 1:19
    numCondV(i) = NumCond(ex1(n(i))); % lista dos numeros de condicao associada a base canonica
    numCondB(i) = NumCond(ex2(n(i))); % lista dos numeros de condicao associada a base de Bernstein
end

% criacao da tabela
T = table(n.',numCondV.',numCondB.','VariableNames',{'n','num. de condicao de V','num. de condicao de B'});

end
