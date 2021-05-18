

% Exercicio 3

% Por definição, o número de confição de uma matriz A invertível
% na norma p é dado por: cond_p(A) = norma_p(A) * norma_p(inv(A))

% O número de condição indica uma maior/menor sensibilidade do sistema
% Ax = b a perturbação dos dados, i.e. da alteração dos
% dados quer na matriz A quer no segundo membro b ou ambos.

% - num de cond. vandermont sao mt maiores (ordem 16) o que pode implicar
% grandes erros
% - por comparação os números da base de Bernstein são muito menores.
% - para n grandes, Vandermont iria retornar resultado sem significado

% - esforço computacional da base de Bernstein. Cáluco das combinações é
% pesado e cresce muito com n

