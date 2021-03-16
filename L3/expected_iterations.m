function [it] = expected_iterations( a,b,err )

% formula para numero de iteracoes esperado teoricamente para erros nao
% superiores a err

it = ceil(log2((b-a)/err));

end


