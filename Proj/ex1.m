function [m] = ex1(n)
% input: n grau do polinomio interpolador 
% output: matriz de Vandermond necessaria para a construcao do polinomio
% interpolador

m(n + 1, n + 1) = 0;

% percorre as linhas
for i = 1:n+1
    % percorre as colunas
    for j = 1:n+1
        m(i,j) = ((i-1) / n)^(j-1);
    end
end


end

