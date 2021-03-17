function [it] = expected_iterations( a,b,err )

% formula obtida na aula teorica para numero de iteracoes esperado teoricamente para erros nao
% superiores a err no intervalo [a,b]

it = ceil(log2((b-a)/err));

end


