function [T] = ex3()
% output: T tabela com os numeros de condicao associados a base canonica e
% a base de Bernstein para n = 2,...,20

n = 2:20;
numCondV(19) = 0;
numCondB(19) = 0;

% tempo de calculo associado a base canonica (usado nas respostas)
t = cputime;
for i = 1:19
    numCondV(i) = NumCond(ex1(n(i))); % lista dos numeros de condicao associada a base canonica
end
disp(cputime - t);

% tempo de calculo associado a base de Bernstein (usado nas respostas)
t = cputime;
for i = 1:19
    numCondB(i) = NumCond(ex2(n(i))); % lista dos numeros de condicao associada a base de Bernstein
end
disp(cputime - t);

% criacao da tabela
T = table(n.',numCondV.',numCondB.','VariableNames',{'n','num. de condicao de V','num. de condicao de B'});

end
