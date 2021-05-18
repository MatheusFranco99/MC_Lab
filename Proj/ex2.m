function [m] = ex2(n)
% input: n grau do polinomio interpolador 
% output: matriz necessaria para a construcao do polinomio
% interpolador usando a base de Bernstein

m(n + 1, n + 1) = 0;

% percorre as colunas
for k = 0:n
    % percorre as linhas
    for j = 0:n
        m(j+1,k+1) = nchoosek(n,k) * (j/n)^(k) * ( 1 - j/n)^(n-k);
    end
end


end

